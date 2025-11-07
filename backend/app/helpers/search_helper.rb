module SearchHelper
  def search_user_email(users, target_email)
    target_email = target_email.to_s.gsub(/\s+/, '').downcase
    first_index = 0;
    last_index = users.length - 1;

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2;
      mid_user = users[mid_index]

      if mid_user.email == target_email
        return { errors: { email: "Email already exists!"}}
      elsif mid_user.email < target_email
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
    target_email
  end

  def search_user_email_with_user_id(users, target_email, current_id)
    target_email = target_email.to_s.gsub(/\s+/, '').downcase

    first_index = 0;
    last_index = users.length - 1;

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2;
      mid_user = users[mid_index]

      if mid_user.email == target_email
        if mid_user.id != current_id
          return { errors: { email: "Email already exists!"}}
        end
        return mid_user
      elsif mid_user.email < target_email
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
  end

  def search_user_phone(users, target_phone)
    target_phone = target_phone.to_s.gsub(/\s+/, '')
    first_index = 0;
    last_index = users.length - 1;

    while first_index < last_index
      mid_index = (first_index + last_index) / 2;
      mid_user = users[mid_index]

      if mid_user.phone == target_phone
        return { errors: { phone: "Phone already exists!"}}
      elsif mid_user.phone < target_phone
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
    target_phone
  end

  def search_user_phone_with_user_id(users, target_phone, current_id)
    target_phone = target_phone.to_s.gsub(/\s+/, '')

    first_index = 0
    last_index = users.length - 1;

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2;
      mid_user = users[mid_index]
      if mid_user.phone == target_phone
        if mid_user.id != current_id
          return { errors: { phone: "Phone already exists!"}}
        end
        return mid_user
      elsif mid_user.phone < target_phone
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
  end

  def slug_user_search(users, slug)
    slug = slug.to_s.gsub(/\s+/, '').downcase

    # --- Binary search by ID ---
    if slug.match?(/\d/) && slug.length < 8
      id_array = if users.respond_to?(:order)
        users.order(:id).to_a
      else
        users.sort_by { |u| u.id }
      end

      first_index = 0
      last_index = id_array.length - 1

      while first_index <= last_index
        mid_index = (first_index + last_index) / 2
        mid_user = id_array[mid_index]

        if mid_user.id == slug.to_i
          return mid_user
        elsif mid_user.id < slug.to_i
          first_index = mid_index + 1
        else
          last_index = mid_index - 1
        end
      end
      return { errors: { slug: "User not found for ID #{slug}" }}
    end

    # --- Binary search by Email ---
    email_array = if users.respond_to?(:order)
      users.order(:email).to_a
    else
      users.sort_by { |u| u.email }
    end

    first_index = 0
    last_index = email_array.length - 1
    # found_email = false

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2
      mid_user = email_array[mid_index]

      if mid_user.email == slug
        return mid_user
      elsif mid_user.email < slug
        first_index = mid_index + 1
      else
        last_index = mid_index - 1
      end
    end

    # --- Binary search by Phone ---
    phone_array = if users.respond_to?(:order)
      users.order(:phone).to_a
    else
      users.sort_by { |u| u.phone }
    end

    first_index = 0
    last_index = phone_array.length - 1

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2
      mid_user = phone_array[mid_index]

      if mid_user.phone == slug
        return mid_user
      elsif mid_user.phone < slug
        first_index = mid_index + 1
      else
        last_index = mid_index - 1
      end
    end

    # If both email and phone searches fail
    if slug.include?('@')
      { errors: { slug: "User not found for email '#{slug}'" }}
    else
      { errors: { slug: "User not found for phone '#{slug}'" }}
    end
  end

  def login_email_search(users, target_email)
    target_email = target_email.to_s.gsub(/\s+/, '').downcase
    first_index = 0;
    last_index = users.length - 1;

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2;
      mid_user = users[mid_index]

      if mid_user.email == target_email
        return mid_user.email
      elsif mid_user.email < target_email
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
    { errors: { email: "Email does not exist!"}}
  end

  def search_category_name(categories, target_category)
    target_category = target_category.to_s.downcase

    first_index = 0;
    last_index = categories.length - 1;

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2;
      mid_category = categories[mid_index]

      if mid_category.category_name == target_category
        return { errors: { category_name: "Category already exists!"}}
      elsif mid_category.category_name < target_category
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
    target_category
  end

  def search_category_by_slug(categories, category_slug)
    category_slug = category_slug.to_s.downcase
    # check if slug is an id
    if category_slug.match?(/\d/) && category_slug.length <= 4
      category_slug = category_slug.to_i
      id_array = categories

      first_index = 0;
      last_index = id_array.length - 1;

      while first_index <= last_index
        mid_index = (first_index + last_index) / 2;
        mid_category = categories[mid_index]

        if mid_category.id == category_slug
          return mid_category
        elsif mid_category.id < category_slug
          first_index = mid_index + 1;
        else
          last_index = mid_index - 1;
        end
      end
      return { errors: { category: "Category Id not found for #{category_slug}"}}
    end

    # otherwise find slug (if slug is not numeric)
    found_category = categories.find { |category| (category.slug.downcase == category_slug || category.category_name.downcase == category_slug)}
    return found_category || { errors: { category: "Category not found for slug #{category_slug}"}}
  end

  def unique_category_name(categories, target_category, current_id)
    target_category = target_category.to_s.downcase
    first_index = 0;
    last_index = categories.length - 1;

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2;
      mid_category = categories[mid_index]

      if mid_category.category_name == target_category
        if mid_category.id != current_id
          return { errors: { category: "Category name exists!"}}
        end
        return mid_category.category_name
      elsif mid_category.category_name < target_category
        first_index = mid_index + 1;
      else
        last_index = mid_index - 1;
      end
    end
    target_category
  end

end