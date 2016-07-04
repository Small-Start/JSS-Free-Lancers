#JSS-free-lancers

A platform for jss students to work in collaboration with each other by helping each other to complete various tasks posted by students of jss themselves. It will help students and mentors to work efficiently and increase productivity. 

## Rails Version
Version of rails used in this project is 4.2.2 .A gem file containing the version numbers of each gem used in this application is present. 

##Using the API

###To get the list of all tasks available:
     
     GET /posts
        
Example:

```json
[
  {
    "id": 1,
    "title": "Task #1",
    "description": "lorem ipsum",
    "assigned_to": 2,
    "category": "front-end development",
    "user_id": 1,
    "created_at": "2016-07-04T19:59:28.800Z",
    "updated_at": "2016-07-04T19:59:28.800Z"
  },
  {
    "id": 2,
    "title": "Task #2",
    "description": "lorem ipsum",
    "assigned_to": null,
    "category": "Testing",
    "user_id": 98,
    "created_at": "2016-07-04T20:01:08.048Z",
    "updated_at": "2016-07-04T20:01:08.048Z"
    },
]
```

###To publish a new task:
     
     POST /posts

Example Request: 
    
     /posts?title=java%20debug&&description=debugging%20in%20java

Example response:
```json
{
  "id": 14,
  "title": "java debug",
  "description": "debugging in java",
  "assigned_to": null,
  "category": null,
  "user_id": 3,
  "created_at": "2016-07-04T22:12:16.290Z",
  "updated_at": "2016-07-04T22:12:16.290Z"
}
```
To show details about a specific tasks:
      
     GET /posts/:id

Example response:
```json
{
  "id": 14,
  "title": "java debug",
  "description": "debugging in java",
  "assigned_to": null,
  "category": null,
  "user_id": 3,
  "created_at": "2016-07-04T22:12:16.290Z",
  "updated_at": "2016-07-04T22:12:16.290Z"
}
```

##Installation

To install rails in linux based system follow the following guide: http://railsapps.github.io/installrubyonrails-ubuntu.html
Windows and Mac OS users refer to: http://railsinstaller.org/en 

## Contributing
Follow the following steps to setup development environment and start contibuting to jss-free-lancers:

##Setup jss-free-lancers in development environment for linux

1. Clone the repository by running the following command:     
  
         git clone https://github.com/JSS_OSDC/JSS-Free-Lancers.git JFL

2. Move inside the directory of JFL:
         
         cd JFL

3. Run the following to install all required gems:
         
         bundle install

4. To use database run migration by:
         
         RAILS_ENV=development rake db:migrate

5. The rails server command launches a small web server named WEBrick which comes bundled with Ruby.Just run:
         
         rails server

6. All set now. Visit [http://localhost:3000][localhost] to view the rails app in development environment.

[localhost]: http://localhost:3000
