# Rails Assessments

Try your best to answer each question on your own before looking up the answer online. Once you're done writing your first answer, you can google the question and write the best answer you find.

### 1. What are some advantages of using Ruby on Rails?

It relies on convention over syntax

Easy to read like a language.

You can build a full stack app using only ruby on rails.

### 2. How does Ruby on Rails use the Model View Controller (MVC) framework?
It connects the model, view and controller files Using convention rules and class inheritence.


### 3. Using the information given, complete the steps for creating a new view in a rails app by filling in the blanks:

  1. Create a route: 
  
  code: 
  ```
  get '/about' => 'statics#about' 
  ```
  file: config/routes.rb
  
  2. Create the Controller
  
  code: 
  ```
  class StaticsController < ApplicationController
  
  def about 
    render "about.html.erb"
  end
  end
  ```
  
  file: app/controllers/statics_controller.rb
  
  3. Create the View
  
  code: 
  
  ```
  <div>This is the About page!</div>
  ```
  
  file: app/views/statics/about.html.erb
  
  
### 4. Look at these sets of Rails routes, they are an example of which principle/term that we touched on briefly in class? Find the term, and explain why it is important.

These things are part of the C.R.U.D. functionality. 
It allows an api to get, delete, post and update/put information.
```
/users/       method="GET"     # :controller => 'users', :action => 'index'
/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/new    method="GET"     # :controller => 'users', :action => 'new'
/users/       method="POST"    # :controller => 'users', :action => 'create'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
```

### 5. What is the public folder used for in Rails?
      It is used for static files such as error pages it is dumb and does not react with the data base.
      
### 6. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"
  get '/game/:guess' => 'main#game'

### 7. What are cookies for? How do they work? What is the difference between a session and a cookie?
 Cookies are for saving data locally on the browser.
 A session is data stored on the server side such as a user's profile data.
### 8. In an html form, what does the "action" attribute tell you about the form?  How do you designate the HTTP verb for the form?
The action attribute tells you what crud operator you are using.

### 9. Why would you use an instance variable in a rails controller?
You would use an instance variable because you can use it through out the controller instead of a local variable
### 10. Name two rails generator commands and what files they create:
    1. generate migration will generate a migration file based on the arguments you fed it. located at db/migrate/"yourfilename.rb"
    
    2. generate controller will generate a controller file based on the table you selected. located at app/controller/"yourfilename.rb"
### 11. Rails has a great community and lots of free tutorials to help you learn. Here is a list of some tutorials to choose from, choose one, do it, and then report back here at least one thing you learned. You can also use a different resource if you find one that you like better. 

- https://www.tutorialspoint.com/ruby-on-rails/index.htm
- http://railsforzombies.org
- http://guides.rubyonrails.org/getting_started.html

One thing I learned is that you can create a mailer out of rails using the action mailer component.
Using this to send mail out to your users in mass.
And can be used to change passwords for users if they forget them.
