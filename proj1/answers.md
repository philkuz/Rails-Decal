# Q0: Why is this error being thrown?
This error is being thrown because the rails server is looking for a controller named pokemon that we have not made yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon are appearing randomly as a string of text as so 'A wild <Pokemon> Appeared'. The common factor is that all of these pokemon were generated in the seed file provided in the project files.
# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line captures the pokemon id stored within @pokemon and passes it as a url parameter to the capture_path, as so : /capture/:id.

# Question 3: What would you name your own Pokemon?
Futurino
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer_path variable with the pokemon's trainer_id as the parameter. This is because ruby grabs the default formatting for the url and then simply applies the id url to it. Alternatively I could have called 'trainer/:id' at that point.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
