# Question Box (3-Day Project)
## The Iron Yard Houston

During this project, you will build a question and answer platform with Ruby on Rails. After three days, your platform will allow people to ask questions, receive answers, and mark an answer as valid.

###Schema:
  Users:
  Questions: child of Users
  Answers: child of Users, child of Questions

### On the first day, your application should:

~Allow a user to create a question.~ ~That question should allow for several paragraphs of text as well as code samples.~ We recommend allowing users to use Markdown for authoring questions. ~Redcarpet is a good gem for rendering Markdown as HTML.~ This blog post may help as well.
Be styled with ~Bootstrap~ or another CSS framework.
~Paginate the index of questions with Kaminari~

### On the second day, your application should:

~Have registration and login.~
~Every question and answer will be associated with a user.~
~Allow questions to have answers.~
~Allow the original author of the question to mark an answer as correct.~

### On the third day, your application should have a JSON API that:

~Allows an unauthenticated user to view questions and answers.~
~Allows an authenticated user to create a question or answer an existing question.~
Allows the author of a question to mark an answer as valid.
Allows the author of a question to delete that question, removing all answers.
Allows the author of an answer to delete that answer.

##Added features  

These added features are for two purposes. You can complete some of them if you finish all of the above. The other purpose is for instructors who wish to run this project as a group project. In that case, these features should be assigned to people in the group.

Day 1  

Allow questions to be "tagged." Read the documentation for acts-as-taggable-on and implement it in this project. Each tag should have its own index page with questions tagged with that tag.
Add a JavaScript Markdown editor to the asset pipeline and have question authoring use that editor. Bootstrap Markdown Editor is one option.

Day 2  

Allow questions and answers to be voted upon by users. Each user can vote on a question or answer once. You cannot vote on your own question or answer. Votes can be +1/-1, or just upvoting (+1).
Allow the index of questions (or indexes if you have tags) to be sorted by creation date, date of last answer, or number of votes.
Allow questions to be edited if and only if they have no answers.
Make a user profile page that shows all questions and answers a user has made and their total score if you have implemented voting.

Day 3  

Add tagging and voting to the API.
Make voting through the Rails app work by making Ajax requests from JavaScript to the API.
Make commenting work by making Ajax requests from JavaScript to the API.
