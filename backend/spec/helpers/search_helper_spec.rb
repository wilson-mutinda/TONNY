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

  describe "#search_category_name" do
    let(:categories) do
      [
        double(id: 1, category_name: "aa"),
        double(id: 2, category_name: "bb"),
        double(id: 3, category_name: "cc"),
      ]
    end

    it "returns an error if name already exists!" do
      result = helper.search_category_name(categories, 'aa')
      expect(result).to eq({ errors: { category_name: "Category already exists!"}})
    end
  end

  describe "#unique_category_name" do
    let(:categories) do
      [
        double(id: 1, category_name: 'aa'),
        double(id: 2, category_name: 'bb'),
        double(id: 3, category_name: 'cc'),
        double(id: 4, category_name: 'dd'),
      ]
    end

    it "returns an error if name already exists!" do
      result = helper.unique_category_name(categories, 'aa', 3)
      expect(result).to eq({ errors: { category: "Category name exists!"}})
    end

    it "returns the name if it does not exist" do
      result = helper.unique_category_name(categories, 'aa', 1)
      expect(result).to eq('aa')
    end
  end

  describe "#search_post_by_slug" do
    let(:posts) do
      [
        double(id: 1, slug: "aa", description: "ww",),
        double(id: 2, slug: "bb", description: "xx"),
        double(id: 3, slug: "cc", description: "yy",),
      ]
    end

    it "returns an error if id is not found" do
      result = helper.search_post_by_slug(posts, 4)
      expect(result).to eq({ errors: { post: "Post not found for ID 4"}})
    end

    it "returns the object if id is found" do
      result = helper.search_post_by_slug(posts, 1)
      expect(result).to eq(posts[0])
    end

    it "returns an error if slug is not found" do
      result = helper.search_post_by_slug(posts, 'dd')
      expect(result).to eq({ errors: { post: "Post not found for slug dd"}})
    end
  end

  describe "#search_contact_by_slug" do
    let(:contacts) do
      [
        double(id: 1, slug: 'aa'),
        double(id: 2, slug: 'bb'),
        double(id: 3, slug: 'cc')
      ]
    end

    it "returns an error if id was not found" do
      result = helper.search_contact_by_slug(contacts, 4)
      expect(result).to eq({ errors: { contact: "Contact not found for ID 4"}})
    end

    it "returns an object if id was found" do
      result = helper.search_contact_by_slug(contacts, 3)
      expect(result).to eq(contacts[2])
    end

    it "returns an error if slug was not found" do
      result = helper.search_contact_by_slug(contacts, 'Cd')
      expect(result).to eq({ errors: { contact: "Contact not found for slug 'cd'"}})
    end

    it "returns an object if slug exists" do
      result = helper.search_contact_by_slug(contacts, 'cc')
      expect(result).to eq(contacts[2])
    end
  end
end
