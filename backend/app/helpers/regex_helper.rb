module RegexHelper
  def email_format(email_regex)
    email_regex = email_regex.to_s.gsub(/\s+/, '').downcase

    regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    unless email_regex.match?(regex)
      return { errors: { email: "Invalid email format!"}}
    end

    email_regex
  end

  def phone_format(phone)
    phone = phone.to_s.gsub(/\s+/, '')
    if phone.match?(/\A(01)\d{8}\z/)
      phone = phone.sub(/\A(2541)/, '2541')
    elsif phone.match?(/\A(07)\d{8}\z/)
      phone = phone.sub(/\A(07)/, '2547')
    end

    unless phone.match?(/\A(2541|2547)\d{8}\z/)
      return { errors: { phone: "Invalid phone format!"}}
    end

    phone
  end

  def password_format(password, password_confirmation)
    password = password.to_s
    password_confirmation = password_confirmation.to_s

    if password.present? && password_confirmation.blank?
      return { errors: { password_confirmation: "Please input password confirmation!"}}
    elsif password_confirmation.present? && password.blank?
      return { errors: { password: "Please input password!"}}
    elsif password.blank? && password_confirmation.blank?
      return { errors: { password: "Please input password!", password_confirmation: "Please input password confirmation!"}}
    end

    unless password.length >= 8
      return { errors: { password: "Password should have at least 8 characters!"}}
    end

    unless password == password_confirmation
      return { errors: { password_confirmation: "Password Mismatch!"}}
    end

    unless password.match?(/\d/) && password.match?(/[A-Za-z]/)
      return { errors: { password: "Password should have both digits and characters!"}}
    end

    { password: password, password_confirmation: password_confirmation}
  end
end