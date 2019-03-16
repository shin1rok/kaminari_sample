require 'faker'

namespace :sample_users do
  desc 'create sample data'
  task create: :environment do
    100.times do
      User.create!(name:          Faker::Name.unique.name,
                   gender:        [0, 1].sample,
                   birthday:      Faker::Date.birthday(18, 65),
                   prefecture_id: (1..47).to_a.sample,
                   profile:       Faker::Lorem.paragraph)
    end
    puts 'Done!'
  end
end
