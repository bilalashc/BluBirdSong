# README

# BluBirdSong 

This is a prototype RESTful backend webservice for a new social media platform, BluBirdSong. It accepts requests over HTTP to perform CRUD operations on post and replies. 

## Table of Contents
1. Technologies
2. Setup


## Technologies
+ Ruby on Rails
+ PostgreSQL

## Setup

The following are instructions to run BluBirdSong from GitHub.
1. The user should open their terminal or command prompt.
2. Navigate to the directory where you want the project to be stored.
3. Clone the BluBirdSong repositrory.
4. Navigate to the project's directory using the terminal or command prompt.
5. Install the required Ruby gems by running:
    ```
    bundle install 
    ```
6. Ensure that PostgreSQL is running on the user's machine.
7. Create the database and run migrations:
    ```
    rails db:create
    rails db:migrate
    ```
8. Start the Rails server by using the following command:
    ```
    rails server
    ```
9. The application can be tested using API testing tools such as Postman.