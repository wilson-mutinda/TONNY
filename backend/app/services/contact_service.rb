class ContactService

  include RegexHelper
  include SearchHelper

  def initialize(params = {})
    @params = params || {}
    @contacts = Contact.all.order(:id).to_a
    @target_param = params[:slug]

    # see what passes
    puts "DEBUG: Initialized with params -> #{@params.inspect}"
  end

  # create_contact
  def create_contact
    # email_param
    email_param = normalize_email_param
    if email_param.is_a?(Hash) && email_param.key?(:errors)
      return email_param
    end

    # phone_param
    phone_param = normalize_phone_param
    if phone_param.is_a?(Hash) && phone_param.key?(:errors)
      return phone_param
    end

    # message_param
    message_param = normalize_message_param
    if message_param.is_a?(Hash) && message_param.key?(:errors)
      return message_param
    end

    puts "DEBUG Params #{phone_param}, #{email_param}, #{message_param}"

    # create_contact
    created_contact = Contact.create(
      email: email_param,
      phone: phone_param,
      message: message_param
    )

    if created_contact
      { success: true, message: "Contact created successfully!", info: created_contact }
    else
      { success: false, errors: created_contact.errors.full_messages }
    end
  end

  # single_contact
  def single_contact
    contact = search_contact_by_slug(@contacts, @target_param)
    if contact.is_a?(Hash) && contact.key?(:errors)
      { success: false, errors: contact }
    else
      { success: true, info: contact }
    end
  end

  # all_contacts
  def all_contacts
    contacts = Contact.all.order(:slug).to_a
    if contacts.empty?
      { success: false, errors: "Empty List!" }
    else
      { success: true, info: contacts }
    end
  end

  # update_contact
  def update_contact
    @contact = search_contact_by_slug(@contacts, @target_param)
    if @contact.is_a?(Hash) && @contact.key?(:errors)
      return @contact
    end

    updated_contact_params = {}

    # email_param
    if @params.key?(:email)
      email_param = normalize_update_email
      if email_param.is_a?(Hash) && email_param.key?(:errors)
        return email_param
      end
      updated_contact_params[:email] = email_param
    end

    # phone_param
    if @params.key?(:phone)
      phone_param = normalize_update_phone
      if phone_param.is_a?(Hash) && phone_param.key?(:errors)
        return phone_param
      end
      updated_contact_params[:phone] = phone_param
    end

    # message_param
    if @params.key?(:message)
      message_param = normalize_update_message_param
      updated_contact_params[:message] = message_param
    end

    # update_contact
    updated_contact = @contact.update(updated_contact_params)
    if updated_contact
      { success: true, message: "Contact updated successfully!", info: @contact }
    else
      { success: false, errors: @contact.errors.full_messages }
    end
  end

  # delete_contact
  def delete_contact
    @contact = search_contact_by_slug(@contacts, @target_param)
    if @contact.is_a?(Hash) && @contact.key?(:errors)
      return @contact
    end

    deleted = @contact.soft_delete
    if deleted
      { success: true, message: "Contact soft deleted successfully!"}
    else
      { success: false, errors: @contact.errors.full_messages }
    end
  end

  # restore_contact
  def restore_contact
    contact = Contact.unscoped.find_by(slug: @target_param)
    if contact.nil?
      { success: false, errors: "Contact was not found!"}
    end

    # restore if only it was soft deleted
    if contact.contact_deleted?
      contact.restore
      { success: true, message: "Contact restored successfully!"}
    else
      { success: false, errors: "Contact was not deleted!"}
    end
  end

  private

  # normalize_update_message_param
  def normalize_update_message_param
    message_param = @params[:message].to_s
    if message_param.present?
      return message_param
    end
  end

  # normalize_update_phone
  def normalize_update_phone
    phone_param = @params[:phone].to_s.gsub(/\s+/, '')
    if phone_param.present?
      # phone_regex
      phone_regex = phone_format(phone_param)
      if phone_regex.is_a?(Hash) && phone_regex.key?(:errors)
        return phone_regex
      end
      phone_regex
    end
  end

  # normalize_update_email
  def normalize_update_email
    email_param = @params[:email].to_s.gsub(/\s+/, '').downcase
    if email_param.present?
      # email_regex
      email_regex = email_format(email_param)
      if email_regex.is_a?(Hash) && email_regex.key?(:errors)
        return email_regex
      end

      email_param
    end
  end

  # normalize_message_param
  def normalize_message_param
    message_param = @params[:message].to_s
    if message_param.blank?
      return { errors: { message: "Please input a message!"}}
    end

    message_param
  end

  # normalize_phone_param
  def normalize_phone_param
    phone_param = @params[:phone].to_s.gsub(/\s+/, '')
    if phone_param.blank?
      return { errors: { phone: "Please input phone!"}}
    end

    # phone_regex
    phone_regex = phone_format(phone_param)
    if phone_regex.is_a?(Hash) && phone_regex.key?(:errors)
      return phone_regex
    end

    phone_regex
  end

  # normalize_email_param
  def normalize_email_param
    email_param = @params[:email].to_s.gsub(/\s+/, '').downcase
    if email_param.blank?
      return { errors: { email: "Please input email!"}}
    end

    # email_regex
    email_regex = email_format(email_param)
    if email_regex.is_a?(Hash) && email_regex.key?(:errors)
      return email_regex
    end

    email_param
  end
end