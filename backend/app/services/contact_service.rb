class ContactService

  include RegexHelper

  def initialize(params = {})
    @params = params || {}

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

  private

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