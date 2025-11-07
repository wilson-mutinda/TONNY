namespace :categories do
  desc "Generate slugs for categories missing one"
  task generate_category_slugs: :environment do
    puts "Starting slug generation..."

    categories = Category.where(slug: [nil, ''])
    if categories.empty?
      puts "No missing slugs found!"
    else
      categories.find_each do |category|
        generate_slug_for(category)
      end
    end
    puts "Slug generation completed!"
  end

  def generate_slug_for(category)
    category.save!
    puts "Generated slug for #{category.category_name}"
  end
end