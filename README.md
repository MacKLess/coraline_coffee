# Coraline Coffee

### _Epicodus Solo Project in Rails, November 17, 2017_

### L. D. MacKrell

## Description

_This site functions as the online sales portal for the coffee shop, Coraline's Coffee. Users can review the coffee types available and leave reviews on their favorites._

## Set-up/Installation Instructions

* Clone this repository
* From the project root directory, run the following commands:
  * **Note: seeding the database will remove all existing data and replace it.**
  ```
  bundle install
  rake db:create
  rake db:migrate
  rake db:seed
  rake db:test:prepare
  rails s
  ```
* You can then access the app in your web browser at ```localhost:3000```

## Specifications

* User can do the following from the landing page:
  * Access the product page, the product detail pages and their reviews.
  * View basic information about the company.
  * View the three most recent reviews.
  * View the product with the most reviews.
* Users can do the following from the product page:
  * See the full list of coffee types.
  * Add coffee types.
  * Click on each coffee to access its detail page.
* On each detail page, users can Edit or Delete each coffee.
  * Users can view the following for each coffee: name, origin, cost, variety, notes, rating, and access any reviews on the coffee.
* On the review page, users can add, view, edit, and remove their own coffee reviews.
* All reviews are between 50 and 250 characters.
* Each review will include a rating between 1 and 5.
* Users can only view other users' reviews.
* Users can log in using email and password.
* Users can view all coffees made in the USA.

## Future Intended Functionality

* I'd like to have the rating be represented by little cups of coffee (1 out of 5)

## Support and contact details

_Please contact [ldmackrell@gmail.com](mailto: ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Bootstrap

### License

Copyright (c) 2017 **L. D. MacKrell**

*This software is licensed under the MIT license.*
