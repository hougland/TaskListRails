# Task List Rails

We are going to build the task list we built in Sinatra using our new rails knowledge. This project will enable us to keep track of and persist, add, edit and remove tasks.

## Baseline
Once you've achieved this baseline, take a walk around the room and see if you can answer questions or help other teams.

This project...

- Will have our standard Github setup (create a branch, fork, switch to your branch)
- requires you to create a Rails 4.2.4 application
  - create a controller for your `Tasks`
  - create and a `Task` model and run a migration to create that model's table
    - Each task should include _at least_ a name, a description and an indicator for whether or not it is complete
  - conform to Rails conventions on naming and inflection

Tinker with your Model in the `rails console` in order to ensure you have created your model appropriately. 

<!--    

## Wave 1
This wave is where we will introduce the view layer where we begin interacting with our application via the browser.

- Use the provided seed data to create a script that will pre-populate your database with a given set of tasks.
  - Hint: research `rake db:seed`
- Set up necessary controller(s) and route(s) that you will need in order to display a task from the database
- Create a root route for your application that directs users to the list of tasks
  - Each task name in the list should link to a `show` action that will render a new view for the user.
    - The `show` view should include the complete information about the task: name, description, completion status, and completion date.
- All markup in all views should have semantic relevance.
- Add some basic styles to your task list.
  
## Wave 2
In this wave we will add the first set of user interactivity and persistence.

- Be able to create a new task:
  - The home page should contain a link to Add a new task. This will give the user a form to fill out with the appropriate task fields.
  - After the new task is added, the site should take the user back to the home page which displays the full list of tasks. The new task that was just added should be included in the full list of tasks.
- Be able to delete an existing task:
  - Add a route and controller action whose responsibility is deleting a task (RESTful routes)
  - On the home page, add a button or link for each task that will, once clicked...
    1. Ask the user to confirm that they definitely want to delete the task.
    1. Delete the task from the database and redirect the user back to the list of remaining tasks

## Wave 3
In this wave we will extend the interactivity with users, allowing them to edit existing tasks in a couple of different ways. As always, follow RESTful conventions when implementing these features.

- Add the ability for the user to mark a task complete
  - Add a button to the list of tasks on the home page that, when clicked, will mark a task complete.
  - Update the database with the task's completed date
- Add the ability for the user to edit a task's details.
  - Add an `edit` action that renders a form allowing the user to update all the fields of a task.
  - Submitting the form from the `edit` action should _update_ the existing task; not create a new one.
    - Research: ActiveRecord's `update` method.
  - Link to the `edit` action from the task's `show` page.
  - DRY up your code by reusing the view code from the `new` functionality
    - Research: Rendering _partials_ in Rails.

## Final Wave!
In this wave, we explore creating ActiveRecord associations by creating `belongs_to` and `has_many` relationships.

- Create a model & migration for a new Person object.
  - at a minimum, a Person should have a name
- Create seed data to add at least three Person records to the database.
- Each Task in your database can be assigned to a Person, indicating that Person is responsible for completing the Task.
  - Express the relationship between Person and Task using `belongs_to` and `has_many`
  - Update your Task `index` and `show` actions to include displaying the Person's name to which the Task belongs.
  - Update your Task's `new` and `edit` actions to allow for selecting an _existing_ Person to which the Task should be associated.
- Add a new people (the plural of Person) controller with the following routes and actions
  - `index` action: Show a list of all people in the database.
    - Link each Person's name to their `show` action.
    - The index should include a count of how many _uncompleted_ tasks are assigned to each Person.
  - `show` action: show all of the Person's information
- Create a custom route and action for showing a complete list of a Person's tasks, both complete and incomplete.
  - The url of this page should look something like `http://localhost:5000/people/1/tasks`.
  - Link to this action from a Person's `show` view.
- Deploy your completed app to Heroku.
-->
