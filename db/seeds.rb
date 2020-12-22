# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Post.find_or_create_by(title: 'Sample Title') do |post|
  post.body = "This Body is the best Body of a post"
  post.published_at = Time.zone.now
end
