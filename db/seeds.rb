require 'faker'

puts 'Cleaning database...'
Service.destroy_all

puts 'Creating services...'
Service.create!(name: 'annual boiler service', description: Faker::Lorem.sentence(word_count: 10), bookable: true, price: 100, photo_url: 'https://www.swaleheating.com/media/wysiwyg/Boiler-service-from.jpg')
Service.create!(name: 'Emergency call out', description: Faker::Lorem.sentence(word_count: 10), bookable: true, price: 500, photo_url: 'https://twocountiescleaning.co.uk/wp-content/uploads/2017/02/help-emergency.png')
Service.create!(name: 'Bathroom installation', description: Faker::Lorem.sentence(word_count: 10), bookable: false, price: 10, photo_url: 'https://www.fisherandsonbathrooms.co.uk/wp-content/uploads/2015/07/contemporary-bathroom.jpg')
Service.create!(name: 'Kitchen plumbing', description: Faker::Lorem.sentence(word_count: 10), bookable: false, price: 10, photo_url: 'https://images.victorianplumbing.co.uk/images/CDB800WH_n_p.jpg')
Service.create!(name: 'Boiler replacement', description: Faker::Lorem.sentence(word_count: 10), bookable: false, price: 10, photo_url: 'https://homeforce.co.uk/wp-content/uploads/2019/02/New-Boiler-Installation.jpeg')
Service.create!(name: 'Power Flush', description: Faker::Lorem.sentence(word_count: 10), bookable: false, price: 10, photo_url: 'data:image/jpeg;base64,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')
Service.create!(name: 'under-floor heating', description: Faker::Lorem.sentence(word_count: 10), bookable: false, price: 10, photo_url: 'https://www.amaresearch.co.uk/wp-content/uploads/underfloor-heating-2020-600x400.jpg')
Service.create!(name: 'Landlord’s Gas Safety Certificate', description: Faker::Lorem.sentence(word_count: 10), bookable: false, price: 10, photo_url: 'https://www.plumbingforce.co.uk/wp-content/uploads/2019/11/blog_gas_safe_certificate.jpg')


puts 'Finished!'
