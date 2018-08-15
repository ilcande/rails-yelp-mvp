puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '123456',
    category:      'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '1234567',
    category:     'italian'
  },
  {
    name:         'Yoma',
    address:      '56A Tavesera de Gracia, Barcelona 08025',
    phone_number:  '12345678',
    category:     'japanese'
  },
  {
    name:         'Felix',
    address:      '78A Rue de Rivoli, Paris E1 AAX',
    phone_number:  '123456789',
    category:      'french'
  },
  {
    name:         'Est.',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '1234567890',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
