# CritiquEat

**CritiquEat** is a platform where users can write, save, collaborate and organize their favorite food places.  
Users can also create collections or follow Celebrity Critics to find out the good, the bad and the adventurous food places near you.

## Getting Started

<!--
Provide instructions here about how to get your project running on our local machine. Do we just need to clone and open a certain file or do we need to install anything first.
-->

### Prerequisites

If you don't have ruby installed, follow this [link](http://railsapps.github.io/installrubyonrails-mac.html) to get started with Ruby On Rails.  

### How to Deploy

Install relevant ruby gems
```
bundle install
```

Create database  
```
rails db:create
```

Create tables
```
rails db:migrate
```

Seed default database database data
```
rails db:seed
```

Last but not least, deploy the server  
```
rails s
```

## Live Version

Visit CritiquEat [here](http://critiqueat.herokuapp.com/)!

## Built With

* [Ruby on Rails](https://rubyonrails.org)
* [Devise](https://github.com/plataformatec/devise)
* [Cloudinary](http://cloudinary.com)
* [jQuery](http://jquery.com/)

## Workflow

### Entities
| Model                         | Attributes                      |
| ---------                     | :--------                       |
| __user__                      | ( email, name, bio, avatar )    |
| __review__                    | ( title, body, image, user_id ) |
| __collection__                | ( title, user_id )              |
| __user_save_review__          | ( user_id, review_id )          |
| __user_rate_review__          | ( review_id, user_id, rating )  |
| __user_collab_collection__    | ( user_id, collection_id )      |
| __collection_contain_review__ | ( review_id, collection_id )    |

### Entity Relationship Diagram
![ER Diagram](https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/ER%20diagram.png)

### Wireframe
Find the interactive prototype [here]()!

#### Authentication
Login           |  Signup
:-------------------------:|:-------------------------:
<img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/Auth-01.png" width="250"> |  <img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/Auth-02.png" width="250">

#### Homepage
<img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/B-Auth-01.png" width="250">

#### Before Authentication
CritiquEat           |  Collections  | Saved CritiquEat   |
:-------------------------:|:-------------------------:|:-------------------------:|
<img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/B-Auth-04.png" width="250"> |  <img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/B-Auth-03.png" width="250"> | <img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/B-Auth-02.png" width="250">

#### After Authentication
CritiquEat           |  Collections  | Saved CritiquEat   |
:-------------------------:|:-------------------------:|:-------------------------:|
<img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/A-Auth-03.png" width="250"> |  <img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/A-Auth-02.png" width="250"> | <img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/A-Auth-01.png" width="250">

#### CritiquEat
Before Authentication | After Authentication
:-------------------------:|:-------------------------:
<img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/B-Auth-05.png" width="250"> |  <img src="https://github.com/TayKangSheng/project-3-starter/blob/master/README-assets/Wireframe/A-Auth-04.png" width="250">

## Acknowledgments

* Hat tip to [General Assembly WDI-SG](https://github.com/wdi-sg) for all the Ruby on Rails lessons.
