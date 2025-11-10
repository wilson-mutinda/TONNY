class AddSlugToContacts < ActiveRecord::Migration[8.0]
  def change
    add_column :contacts, :slug, :string
  end
end
