# Mockchain - A Fake Blockchain

## Demo


https://user-images.githubusercontent.com/92950060/230121557-9d4f605f-e03d-4975-bc6a-b8b57f7cc2a1.mp4



## Description
This project was my attempt to replicate the behavior of the blockchain using Sinatra on the back-end and React on the front-end. In this project a user can login, see a log of all transactions across the mockchain, and visit a profile page with information relevant to their account. The profile page provides easy navigation to the following information: a user's transactions, the coins they own, as well as the amount of cash available to them. 

A user can not only view this information, they can also interact with it too. This application contains full CRUD functionality. A user is able to edit transactions before they have been executed, delete their personal transaction, create new transactions, and deposit more money into their account. 

As mentioned above, the front-end of this application is built using React, with Semantic-Ui for styling, as well as internal CSS stylesheets for customization. On the backend, the database is built with Sinatra and Active Record. The front-end also features dynamic and programmatic routing to simulate the experience of using a production level application. 

## Challenges
This is the first full-stack application I have created, and thus it has been an eventful ride. My first challenge was on the back-end setting up the database in such a way that it lined up with the way I needed the data formatted on the front-end. I also found myself changing the back-end routes several times. The back-end data is some-what nested, which made it slightly more difficult to work with on the front-end. 

In the future I would like to improve styling, perhaps by creating a custom theme. I would also like to implement sign-up functionality, where a user can create an account, fund the acount, and invest in coins. I would also like to create the ability for a password recovery functionality. 

## How to Install the Project

### Back-end Setup
1. Fork and clone the repo
2. Bundle install all ruby gems and dependencies
3. Use 'bundle exec rake server' to start the localhost server
4. Get Coding!

### Front-end Setup
1. Fork and clone the repo
2. npm install any dependencies
3. Use 'npm start' to run the front-end on a different locallhost port
4. Code!

