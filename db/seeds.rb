# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(full_name:"Student #1",email:"s1@s1.com",password:"student1")
User.create(full_name:"Student #2",email:"s2@s2.com",password:"student2")
User.create(full_name:"Student #3",email:"s3@s3.com",password:"student3")
User.create(full_name:"Student #4",email:"s4@s4.com",password:"student4")
User.create(full_name:"Student #5",email:"s5@s5.com",password:"student5")

Post.create(title: "Task by Student #1", description: "Only student #1 can assign this task", assigned_to: nil, category:"front-end web development", user_id: 1, created_at: nil, updated_at: nil)
Post.create(title: "Task by Student #2", description: "Only student #2 can assign this task", assigned_to: nil, category:"front-end web development", user_id: 2, created_at: nil, updated_at: nil)
Post.create(title: "Task by Student #3", description: "Only student #3 can assign this task", assigned_to: nil, category:"front-end web development", user_id: 3, created_at: nil, updated_at: nil)
Post.create(title: "Task by Student #4", description: "Only student #4 can assign this task", assigned_to: nil, category:"front-end web development", user_id: 4, created_at: nil, updated_at: nil)
Post.create(title: "Task by Student #5", description: "Only student #5 can assign this task", assigned_to: nil, category:"front-end web development", user_id: 5, created_at: nil, updated_at: nil)
