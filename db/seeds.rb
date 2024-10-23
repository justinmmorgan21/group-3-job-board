# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

10.times do
  company = Company.new(
    name: Faker::Company.name,
    logo: Faker::Company.logo,
    description: Faker::Company.catch_phrase
  )
  
  company.save

end

50.times do
  company_id = rand(1..10)
  title = Faker::Job.title
  description = "#{Faker::Job.employment_type} #{title} in #{Faker::Job.field} requiring #{Faker::Job.key_skill}"
  salary_low = rand(30..125)
  salary_range = "#{salary_low}K - #{salary_low + 25}K"

  job = Job.new(
    company_id: company_id,
    title: Faker::Job.title,
    description: description,
    url: Faker::Internet.url,
    location: Faker::Address.city,
    active: true,
    salary_range: salary_range
  )

  job.save
end