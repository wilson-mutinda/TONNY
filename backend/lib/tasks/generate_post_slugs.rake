namespace :posts do
  desc "Generate slugs for mising ones"
  task generate_post_slugs: :environment do
    puts "Start generating slugs..."
    posts = Post.where(slug: [nil, ''])
    if posts.empty?
      puts "No missing slug found!"
    else
      posts.find_each do |post|
        generate_slug_for(post)
      end
    end

    puts "Slug generation completed!"

  end

  def generate_slug_for(post)
    post.save!
    puts "Generated slug for #{post.description}"
  end
end
