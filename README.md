# Week 3 Homework
(5 points)

FORK this repository before you start.

DUE: You must push your code to GitHub no later than **Tuesday, July 14 at 5:29PM**.

### Overview

Your job is to transform this app into a database-backed web application.

1 point per challenge, plus up 1 point for code readability (good variable names, consistent indentation, etc.) for a total of **5 points**.

### Challange #1: A `Place` Model

By the end of this challenge, you should have 2 routes like this:

``` ruby
  root 'places#index'
  get '/places' => 'places#index'
```

1. Create a model named Place that can keep track of each place's title, photo url, admission price, and description.  The title can be limited to 255 characters, but the description shoud support text at least 1000 characters in length.  The admission price should be stored as integer representing the number of cents.
1. Write code in your `db/seeds.rb` file so that it is prefills the database with at least 5 places.  Make sure that you can run the seeds file multiple times and still end up with the same number of places each time.
1. Implement an `index` action that is database-driven and displays the list of places using `<ul>` and `<li>` elements.

### Challenge #2: Let Users View Details

By the end of this challenge, you should have 3 routes like this, but _not necessarily in this order_:

``` ruby
  root 'places#index'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
```

1. Support the following url: `/places/:id` and connect it to an action method named `show` in the `PlacesController`.  This action should display all of the details of a particular Place.
1. Modify the `index` action so that clicking on a place links to the `show` page for that place.

### Challenge #3: Delete Places

By the end of this challenge, you should have 4 routes like this, but _not necessarily in this order_:

``` ruby
  root 'places#index'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  get '/places/:id/delete' => 'places#delete'
```

1. On the `index` page, add a link next to each place that will trigger the `places#delete` action.
2. When the user clicks the link, that Place should be removed from the database, and the user should be redirected back to the `index` page to verify that the place has been removed.

### Challenge #4: Add and Edit Places

By the end of this challenge, you should have these 8 routes, but **not necessarily in this order**:

``` ruby
  root 'places#index'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  get '/places/:id/delete' => 'places#delete'
  get '/places/new' => 'places#new'
  get '/places/submit_new' => 'places#create'
  get '/places/:id/edit' => 'places#edit'
  get '/places/:id/update' => 'places#update'
```

1. At the top of the index page, add a link to add a new place.  The link should navigate to `/places/new`, which must display a form for the user to fill in (title, url, price, and a description).
1. The form should target the `create` action. When the user submits the form, a new row should be added to the database, and the user should be redirected back to the `index` action to see a refreshed list that now includes their new place.
1. On the `show` page, add a link to `/places/:id/edit` which should display a form to edit the details of the place.
1. The edit form should be prefilled with data from the database, and it should trigger the `update` action when the suer clicks Submit.
1. The `update` action should update the row in the database, and redirect to `/places/:id` so the user can verify that the database has been updated.



### HINTS

Research the `value` attribute of HTML `input` elements to learn how to prefill default values into input fields.

If something isn't working and you can't figure out why, watch the **server log**.

Here are some Rails view helper methods that you might find helpful:

* [`link_to`](http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)
* [`image_tag`](http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-image_tag)
* [`simple_format`](http://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-simple_format)
* [`text_field_tag`](http://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-text_field_tag)
* [`submit_tag`](http://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-submit_tag)
* [`number_to_currency`](http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html#method-i-number_to_currency)

FRIENDLY WARNING: Contrary to what you may read online, do NOT use `form_tag` or `form_for` (at least, not this week).

And here are some command-line utilities that are helpful:

* `rake db:migrate`
* `rake db:seed`




