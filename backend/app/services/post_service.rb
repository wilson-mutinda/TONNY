class PostService

  include SearchHelper

  def initialize(params = {})
    @params = params || {}
    @posts = Post.all.order(:id).to_a
    @target_param = params[:slug]
  end

  # create_post
  def create_post
    # description_param
    description_param = normalize_description_param
    return description_param if description_param.is_a?(Hash) && description_param.key?(:errors)

    # image_param
    image_param = normalize_post_image
    return image_param if image_param.is_a?(Hash) && image_param.key?(:errors)

    # category_id_param
    category_id_param = normalize_category_id
    return category_id_param if category_id_param.is_a?(Hash) && category_id_param.key?(:errors)

    # create_post
    created_post = Post.create(
      description: description_param,
      category_id: category_id_param
    )

    if created_post
      created_post.post_image.attach(image_param)
      { success: true, message: "Post created successfully!", info: created_post }
    else
      { success: false, errors: created_post.errors.full_messages }
    end
  end

  # single_post
  def single_post
    post = search_post_by_slug(@posts, @target_param)
    if post.is_a?(Hash) && post.key?(:errors)
      return { success: false, errors: post }
    else
      { success: true, info: post }
    end

  end

  # all_posts
  def all_posts
    posts = Post.all.order(:slug).to_a
    if posts.empty?
      { success: false, errors: "Empty List!" }
    else
      { success: true, info: posts }
    end
  end

  # update_post
  def update_post
    @post = search_post_by_slug(@posts, @target_param)
    if @post.is_a?(Hash) && @post.key?(:errors)
      return @post
    end

    updated_post_params = {}

    # description_param
    if @params.key?(:description)
      description_param = normalize_update_description_param
      updated_post_params[:description] = description_param
    end

    # post_image_param
    if @params.key?(:post_image)
      @post.post_image.attach(@params[:post_image])
    end

    # category_id
    if @params.key?(:category_id)
      category_id_param = normalize_update_category_id
      if category_id_param.is_a?(Hash) && category_id_param.key?(:errors)
        return category_id_param
      end
      updated_post_params[:category_id] = category_id_param
    end

    # update_post
    updated_post = @post.update(updated_post_params)
    if updated_post
      { success: true, message: "Post updated successfully!", info: @post}
    else
      { success: false, errors: @post.errors.full_messages }
    end
  end

  # delete_post
  def delete_post
    @post = search_post_by_slug(@posts, @target_param)
    if @post.is_a?(Hash) && @post.key?(:errors)
      return @post
    end

    deleted = @post.delete_post
    if deleted
      { success: true, message: "Post soft deleted successfully!"}
    else
      { success: false, errors: "Error deleting post!"}
    end
  end

  # restore_post
  def restore_post
    post = Post.unscoped.find_by(slug: @target_param)
    if post.nil?
      return { success: false, errors: "Post not found!"}
    end

    # restore if only it was soft deleted
    if post.soft_deleted?
      post.restore
      { success: true, message: "Post restored successfully!"}
    else
      { success: false, errors: "Post was not deleted!"}
    end
  end

  private

  def normalize_update_category_id
    category_id = @params[:category_id]
    if category_id.present?
      # check whether category id exists
      existing = Category.find_by(id: category_id)
      if existing.nil?
        return { errors: { category_id: "Category does not exist!"}}
      end
      category_id
    end
  end

  def normalize_update_post_image
    post_image_param = @params[:post_image]
    if post_image_param.present?
      post_image_param
    end
  end

  def normalize_update_description_param
    description_param = @params[:description].to_s
    if description_param.present?
      description_param.titleize
    end
  end

  def normalize_category_id
    category_id = @params[:category_id]
    if category_id.blank?
      return { errors: { category_id: "Please select category!"}}
    end

    # check whether category id exists
    existing = Category.find_by(id: category_id)
    if existing.nil?
      return { errors: { category_id: "Category does not exist!"}}
    end
      category_id
  end

  def normalize_post_image
    post_image = @params[:post_image]

    if post_image.blank?
      return { errors: { post_image: "Please add a post image!"}}
    end

    post_image
  end

  def normalize_description_param
    description_param = @params[:description].to_s.downcase

    if description_param.blank?
      return { errors: { description: "Please input post description!"}}
    end

    description_param.titleize
  end
end