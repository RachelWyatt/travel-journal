Specifications for the Rails Assessment
Specs:

[X] Using Ruby on Rails for the project

[X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
User has_many trips; Trip has_many locations; Location has_many trip_entries

[X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
Trip belongs_to User; Trip Entry belongs_to a Trip and a Location

[X] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
User has_many Trip Entries through Trips

[X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
Trip has_many Locations through Trip Entries; Location has_many Trips through Trip Entries

[X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
The Trip Entry has a user-submittable Journal Entry.

[X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
User validates presence of email, password; Journal Entries validated to be less than 180 characters; Locations validated to have a name.

[X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
Trips are sorted in descending order on the trips index page, so users see trips in order from most recent to last.

[X] Include signup (how e.g. Devise)

[X] Include login (how e.g. Devise)

[X] Include logout (how e.g. Devise)

[X] Include third party signup/login (how e.g. Devise/OmniAuth)
GitHub

[X] Include nested resource show or index (URL e.g. users/2/recipes)
trips/1/trip_entries

[X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 trips/1/trip_entries/new

[X] Include form display of validation errors (form URL e.g. /recipes/new)
If there is a validation error, forms for sign up and new trip entry display errors.

Confirm:

[X]  The application is pretty DRY
[X] Limited logic in controllers
[X] Views use helper methods if appropriate
[X] Views use partials if appropriate