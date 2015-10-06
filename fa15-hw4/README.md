# Fall 2015 Homework 4

## Overall Spec

The overall thing that needs to be accomplished is:
- Create a dog model that stores name and age
- Validate the dog has a name and age
- Going to "/dogs" will go to an index view of all the dogs in the database
- Going to "/dogs/1" will go to a show view of the dog with id 1.  This should work for any arbitrary id.
- Going to "/dogs/new" will go to a working form that will allow me to create a dog and redirect me to the new dogs show view

## Getting Started
To start everything off, fork this repository - there should be a fork button on the top right corner of the repo.
Fork the repository to your own!

Run this command to clone this repository <b>after you fork:</b>
```
git clone https://github.com/your_username/fa15-hw4
```

Afterwards, change directory into the folder and run
```
rails server
```

## Notes
There is the annotated code of how to do the same process for creating all this functionality for
a user. The only difference is there is an integer (the dogs age) involved. TRY not the reference
the annotated code until you try it first, it'll make the experience more challenging. The specs
are general because you will find that when making an app implementation details aren't given but
rather general feature details.

## Submitting

Run the following commands in your repo
```
git add .
git commit -am "I'M DONE"
```

and fill out this [form](https://docs.google.com/forms/d/1X9hN_QxenSULe-cWQIVWWJuholodQEp_wxSATBRzPPY/viewform).
