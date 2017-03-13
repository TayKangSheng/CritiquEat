# CritiquEat

**CritiquEat** is a platform where users can write, save, collaborate and organize their favorite food places.  
Users can also create collections or follow Celebrity Critics to find out the good, the bad and the adventurous food places near you.

## Getting Started

Provide instructions here about how to get your project running on our local machine. Do we just need to clone and open a certain file or do we need to install anything first.

### Prerequisites

What is needed to install and run the project, how do we install them

```
Code example
```

### How to Use

A step by step guide on how to install and use the project, for example if this is a game, how do we play it.


```
Code example
```

More steps...

```
until finished
```


## Tests

Did you write automated tests? If so, how do we run them.


```
Code example
```

## Live Version

Where is this deployed online (github pages, heroku etc), give us the link and any access details we need.

## Built With

What did you use to build it, list the technologies, plugins, gems, packages etc.

* [jQuery](http://jquery.com/) - jQuery for example is something you likely used

## Workflow

### User Stories
#### User Story 1
#### User Story 2
#### User Story 3

### Entities

- __user__ ( email, name, bio, avatar )
- __review__ ( title, body, image, user_id )
- __collection__ ( title, user_id )
- __user_save_review__ ( user_id, review_id )
- __user_rate_review__ (review_id, user_id, rating)
- __user_collab_collection__ ( user_id, collection_id )
- __collection_contain_review__ ( review_id, collection_id )

#### Entity Relationship Diagram
![ER Diagram](https://github.com/TayKangSheng/project-3-starter/blob/master/ER%20diagram.png)

#### Wireframe
Find the interactive prototype [here]()!

###### Homepage
![Hompage_img]()
###### Login
![Login_img]()
###### Signup
![Signup_img]()

## Authors

Did you collaborate with others on this project, list them here

* **John McClain** - *Responsible for keeping vests white* - [GithubUserName](https://github.com/GithubUserName)

## Acknowledgments

* Hat tip to anyone who's code was used, for example [this was a useful starting point for creating this template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2).
