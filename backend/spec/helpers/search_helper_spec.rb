require 'rails_helper'
RSpec.describe SearchHelper, type: :helper do
  describe "#search_user_email" do
    let (:users) do
      [
        double(id: 1, email: "aa@gmail.com"),
        double(id: 2, email: "bb@gmail.com"),
        double(id: 3, email: "cc@gmail.com")
      ]
    end

    it "returns an error if email already exists" do
      result = helper.search_user_email(users, 'aa@gmail.com')
      expect(result).to eq({ errors: { email: "Email already exists!"}})
    end

    it "returns an email if not found in the array" do
      result = helper.search_user_email(users, 'dd@gmail.com')
      expect(result).to eq('dd@gmail.com')
    end
  end

  describe "#slug_user_search" do
    let(:users) do
      [
        double(id: 1, email: 'aa@gmail.com', phone: '254791738418'),
        double(id: 2, email: 'bb@gmail.com', phone: '254723050525'),
      ]
    end

    it "returns an error if ID not found!" do
      result = helper.slug_user_search(users, 4)
      expect(result).to eq({ errors: { slug: "User not found for ID 4"}})
    end

    it "returns a user object if id is found" do
      result = helper.slug_user_search(users, 1)
      expect(result).to eq(users[0])
    end

    it "returns an error if email is not found" do
      result = helper.slug_user_search(users, 'cc@gmail.com')
      expect(result).to eq({ errors: { slug: "User not found for email 'cc@gmail.com'"}})
    end

    it "returns a user object if email is found" do
      result = helper.slug_user_search(users, 'aa@gmail.com')
      expect(result).to eq(users[0])
    end

    it "returns an error if phone is not found" do
      result = helper.slug_user_search(users, '254791738419')
      expect(result).to eq({ errors: { slug: "User not found for phone '254791738419'"}})
    end
  end

  describe "#search_user_email_with_user_id" do
    let(:users) do
      [
        double(id: 1, email: 'aa@gmail.com'),
        double(id: 2, email: 'bb@gmail.com'),
        double(id: 3, email: 'cc@gmail.com')
      ]
    end

    it "returns an error if email already exists" do
      result = helper.search_user_email_with_user_id(users, 'bb@gmail.com', 3)
      expect(result).to eq( {errors: { email: "Email already exists!"}})
    end

    it "returns user email if email does not exist" do
      result = helper.search_user_email_with_user_id(users, 'dd@gmail.com', 4)
      expect(result).to eq(users[4])
    end
  end

  describe "#login_email_search" do
    let(:users) do
      [
        double(id: 1, email: "aa@gmail.com"),
        double(id: 2, email: "bb@gmail.com"),
        double(id: 3, email: "cc@gmail.com"),
      ]
    end

    it "returns an email if its found in array" do
      result = helper.login_email_search(users, 'aa@gmail.com')
      expect(result).to eq('aa@gmail.com')
    end
    it "returns an error if email is not found" do
      result = helper.login_email_search(users, 'dd@gmail.com')
      expect(result).to eq({ errors: { email: "Email does not exist!"}})
    end
  end
end
