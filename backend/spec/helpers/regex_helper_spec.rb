require 'rails_helper'

RSpec.describe RegexHelper, type: :helper do
  describe "#email_format" do
    it "returns an error if email_format is not valid" do
      result = helper.email_format('aa.gmail.com')
      expect(result).to eq({ errors: { email: "Invalid email format!"}})
    end

    it "returns email if valid" do
      result = helper.email_format('aa@gmail.com')
      expect(result).to eq('aa@gmail.com')
    end
  end

  describe "#phone_format" do
    it "returns an error if phone is invalid" do
      result = helper.phone_format('2541801010101')
      expect(result).to eq({ errors: { phone: "Invalid phone format!"}})
    end

    it "returns corrected phone format if starts with 01|07" do
      result = helper.phone_format('0791738418')
      expect(result).to eq('254791738418')
    end

    it "returns an error if not 10-12 digits" do
      result = helper.phone_format('25479173841')
      expect(result).to eq({ errors: { phone: "Invalid phone format!"}})
    end
  end

  describe "#password_format" do
    it "returns an error if password mismatch" do
      result = helper.password_format('user1234', 'user123')
      expect(result).to eq({ errors: { password_confirmation: "Password Mismatch!"}})
    end

    it "returns an error if password < 8" do
      result = helper.password_format('user123', 'user123')
      expect(result).to eq({ errors: { password: "Password should have at least 8 characters!"}})
    end

    it "returns both passwords if all validations pass" do
      result = helper.password_format('user1234', 'user1234')
      expect(result).to eq({ password: 'user1234', password_confirmation: 'user1234'})
    end
  end
end
