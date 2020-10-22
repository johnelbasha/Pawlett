puts 'Cleaning database...'
Service.destroy_all

puts 'Creating services...'
Service.create!(name: 'annual boiler service', price: 100, photo_url: 'https://www.swaleheating.com/media/wysiwyg/Boiler-service-from.jpg')
Service.create!(name: 'Emergency call out', price: 500, photo_url: 'https://twocountiescleaning.co.uk/wp-content/uploads/2017/02/help-emergency.png')
Service.create!(name: 'inspect & quote', price: 10, photo_url: 'https://www.stheatingservices.co.uk/wp-content/uploads/2017/06/shutterstock_524040448.jpg')


puts 'Finished!'
