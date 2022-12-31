# Plan for Phase 3 Project

1. Have at least two models with a one-to-many relationship.

2. At a minimum, set up the following API routes in Sinatra:
2A. create and read actions for both models

2B. full CRUD capability for one of the models

3. Build a separate React frontend application that interacts with the API to perform CRUD actions.

4. Implement proper front end state management. 

4A. You should be updating state using a setState function after receiving your response from a POST, PATCH, or DELETE request. You should NOT be relying on a GET request to update state.


5. You should have separate classes for each of your models, and create instance and class methods as necessary.
Routes in your application (both client side and back end) should follow RESTful conventions.

6. Pass JSON for related associations to the front end from the back end. You should use active record methods in your controller to grab the needed data from your database and provide as JSON to the front end. You should NOT be relying on filtering front end state or a separate fetch request to retrieve related data.

## Models + Attributes +  Methods
*User*
- has many Coins
- has many Transactions through Coins
- Attributes
    - t.string :name (user's name)
    - t.string :currency (the currency the user is utilizing)
    - t.integer :cash (user's cash balance)



*Coin*
belongs to a User
has many Transactions
- Attributes
    - t.string :name
    - t.integer :price (price of the coin)
    - t.integer :user_id


*Transaction*
belongs to a Coin
- Attributes
    - t.timestamps
    - t.string :type  (type of transaction: buy or sell)
    - t.integer :quantitiy
    - t.integer :coin_id

## Routes


