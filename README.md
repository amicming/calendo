Calendo (Version 3)
===================
This is the application for managing daily activity likes meeting, book conference room, appointments, public and private events, all day events, sync calendar events from iCal, google calendar. This software available in two flavors, one is for desktop and other one is mobile application.

This software currently use rails 3.2.6 and I finished version 3 and currently working on version 4.

#####How to Run?#####

* Download code repo from github or do clone, after that execute these commands
 
  `` bundle install ``

  `` bundle exec rake db:migrate ``

  `` rails s ``

  `` http://localhost:3000``

Development Roadmap
-------------------

* ###Version - 1###
 * Initial skeleton of the project, that cover all basic ruby on rails function like create rails application, configur database.

* ###Version - 2###

 1 Twitter Bootstrap

 2 User Function
  * User Sign Up
  * User Sign In
  * User Sign Out

* ###Version - 3###

 1 Calendar Confugration

 2 Event Management
  * Create, Display Event
  * Modify, Delete Event
  * All Day Event
  * Display Event in Calendar

* ###Version - 4###

 1 User Management
  * Change Password
  * Modify User Name
  * Forgot Password

 2 Event Management
  * **User can make Public and Private Event**
  * Private Event can visible by current loged-in user only
  * Public Event Visible by all user, even not a member.

 3 User Management
  * User can email public event.

* ###Version - 5###
  1 Admin Module
   * **Manage Users**
   * Can Delete User(s)
   * Can Delete Event(s)
   * **Create Conference Room Master Screen** so admin can create, modify, delete Conference Room(s) that availabe for all users (Normial User will not create any Conference Room, they will access list of Conference Room)

  2 Resources Management
   * User can choose Conference Room during event creation.
   * User can add required and optional attendees in events

* ###Version - 6###
  * Implement Date-Time Picker for all current date and time field.

* ###Version - 7###
  * Extend Event Module and Provide appointments functionality - like doctor appointments and Doctor can use this web sites :-)
  * Appointments Module fuctions like Create, Modify, Cancel, Delete.

* ###Version - 8###
  * Sync between Google Calendar and Calendo

* ###Version - 9###
  * Sync between iCal and Calendo

* ###Version - 9###
  * Mobile Version for all OS like iphone, Window and android

* ###Version - 11###
  * Think for Free and Paid Plan
