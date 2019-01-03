# Chronopost API client

[![Build Status](https://travis-ci.org/vinted/chronopost.svg?branch=master)](https://travis-ci.org/vinted/mondial_relay)
[![Gem Version](https://badge.fury.io/rb/chronopost.svg)](https://badge.fury.io/rb/chronopost)

The gem works as an interface to the [Chronopost](https://www.chronopost.fr/fr) Web service.

### Getting started
A minimal gem's configuration is obtained by providing your credentials to the Chronopost web service:
```ruby

Chronopost.configure do |config|
  config.account_number = 'Your account number'
  config.account_password = 'Your private key'
end
```

#### Parcel Shops
Do the parcel shop search by GPS coordinates:
```ruby
Chronopost::ParcelShops::Search.for(
  latitude: '49.698421',
  longitude: '4.972183',
  shipping_date: '2017-05-20',
  number_of_results: 1,
)
```

Do the parcel shop search by address information:
```ruby
Chronopost::ParcelShops::SearchByAddress.for(
  address: 'An der Spandauer Brücke 4',
  postal_code: '10178',
  city: 'Berlin',
  country_code: 'DE',
  shipping_date: '2019-01-03',
  number_of_results: 1,
  language: 'DE',
)
```

Get details of a specific parcel shop:
```ruby
Chronopost::ParcelShops::Details.for(
  id: '3449S',
)
```

#### Labels
Create a label and get its information:
```ruby
Chronopost::Labels::Create.for(
  shipper: {
    # ...,
  },
  customer: {
    # ...,
  },
  recipient: {
    # ...,
  },
  reference: {
    # ...,
  },
  skybill: {
    # ...,
  },
)
```
Fetch a label's information including PDF:
```ruby
Chronopost::Labels::Fetch.for(
  reservation_number: '88895913588767082',
)
```

Get a label's shipping history:
```ruby
Chronopost::Labels::Track.for(
  skybill_number: 'EE000927143CD',
)
```

Estimate your shipping price:
```ruby
Chronopost::Labels::QuickCost.for(
  departure_code: '59800',
  arrival_code: '66380',
  weight: 1,
)
```

Cancel a label:
```ruby
Chronopost::Labels::Cancel.for(
  skybill_number: 'EE000927143CD',
)
```

### Documentation
Documentation is generated using [Yard](https://yardoc.org/).

### Contribution
- Each endpoint (operation) should be documented.
- Follow the method operations are added to the library.
