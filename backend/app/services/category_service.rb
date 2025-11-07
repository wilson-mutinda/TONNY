class CategoryService

  include SearchHelper
  
  def initialize(params = {})
    @params = params || {}
    @categories = Category.all.order(:id).to_a
    @target_param = params[:slug]
  end

  # create_category
  def create_category
    # category_name
    category_name_param = normalize_category_name

    return category_name_param if category_name_param.is_a?(Hash) && category_name_param.key?(:errors)

    # create_category
    created_category = Category.create(
      category_name: category_name_param
    )

    if created_category
      { success: true, message: "Category created successfully!", info: created_category }
    else
      { success: false, errors: created_category.errors.full_messages }
    end

  end

  # single_category
  def single_category
    category = search_category_by_slug(@categories, @target_param)
    if category.is_a?(Hash) && category.key?(:errors)
      return { success: false, errors: category }
    else
      { success: true, info: category }
    end
  end

  # all_categories
  def all_categories
    categories = Category.all.order(:category_name).to_a
    if categories.empty?
      return { success: false, errors: "Empty List!"}
    else
      { success: true, categories: categories }
    end
  end

  # update_category_name
  def update_category_name
    @category = search_category_by_slug(@categories, @target_param)
    if @category.is_a?(Hash) && @category.key?(:errors)
      return @category
    end

    updated_category_params = {}

    category = normalize_update_name
    if category.is_a?(Hash) && category.key?(:errors)
      return category
    end
    updated_category_params[:category_name] = category

    # update_category
    updated_category = @category.update(updated_category_params)
    if updated_category
      { success: true, message: "Category updated successfully!", info: @category }
    else
      { success: false, errors: @category.errors.full_messages }
    end
  end

  # soft_delete_name
  def soft_delete_name
    @category = search_category_by_slug(@categories, @target_param)
    if @category.is_a?(Hash) && @category.key?(:errors)
      return @category
    end

    deleted = @category.soft_delete_name
    if deleted
      { success: true, message: "Category soft deleted successfully!"}
    else
      { success: false, errors: @category.errors.full_messages }
    end
  end

  # restore_deleted_name
  def restore_category
    category = Category.unscoped.find_by(slug: @target_param)
    if category.nil?
      return { success: false, errors: "Category not found!"}
    end

    if category.category_deleted?
      category.restore_category
      { success: true, message: "Category restored successfully!"}
    else
      { success: false, errors: "Category was not deleted!"}
    end

  end

  private

  def normalize_update_name

    category_name_param = @params[:category_name].to_s
    if category_name_param.present?
      # category name should not exist
      existing = unique_category_name(@categories, category_name_param, @category)
      if existing.is_a?(Hash) && existing.key?(:errors)
        return existing
      end
      category_name_param
    end

  end

  def normalize_category_name
    category_name_param = @params[:category_name].to_s.downcase

    if category_name_param.blank?
      return { errors: { category_name: "Please enter category name!"}}
    end

    # category_name should not exist
    existing = search_category_name(@categories, category_name_param)
    if existing.is_a?(Hash) && existing.key?(:errors)
      return existing
    end

    category_name_param.titleize
  end
end