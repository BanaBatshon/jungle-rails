# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Getting Started
1. git clone git@github.com:BanaBatshon/jungle-rails.git 
2. cd into `jungle-rails/`
3. Run `bundle install` to install dependencies
4. Install rails `gem install rails` 
5. start the server by running `bin/rails s -b 0.0.0.0`
6. open http://localhost:3000 to check out the online store

## Screenshots
!["Screenshot of Admin menue"](https://github.com/BanaBatshon/jungle-rails/blob/master/app/imgs/Screen%20Shot%202019-04-22%20at%209.12.14%20AM.png)

!["Screenshot of new category page"](https://github.com/BanaBatshon/jungle-rails/blob/master/app/imgs/Screen%20Shot%202019-04-22%20at%209.12.30%20AM.png)

!["Screenshot of add new review section"](https://github.com/BanaBatshon/jungle-rails/blob/master/app/imgs/Screen%20Shot%202019-04-22%20at%209.12.46%20AM.png)

!["Screenshot of the reviews section"](https://github.com/BanaBatshon/jungle-rails/blob/master/app/imgs/Screen%20Shot%202019-04-22%20at%209.18.05%20AM.png)

!["Screenshot of delete option after adding a new review"](https://github.com/BanaBatshon/jungle-rails/blob/master/app/imgs/Screen%20Shot%202019-04-22%20at%209.18.35%20AM.png)

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* bcrypt (~> 3.1.7)
* jbuilder (~> 2.0)
* jquery-rails
* pg
* puma
* rails (= 4.2.6)
* stripe