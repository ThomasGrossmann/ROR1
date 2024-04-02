# Rails Repository Name

ES-DEV is a web application built with Ruby on Rails that aims to manage grades for the Dev Technicians.

## Table of Contents

- [Database Models](#database-models)
  - [Before Implementation](#before-implementation)
  - [After Implementation](#after-implementation)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)

## Database Models

### Before implementation
*MCD*
![SQL1_MCD](https://github.com/ThomasGrossmann/ROR1/assets/47849503/61ff18af-9726-4757-846f-e05865b9093d)

A first version of the Database model has been made in SQL1. But when I began to implement it I realized that changes were required in order to make it work with Rails and with the features required for ROR1, described [here](#features).

*MLD*
![SQL1_MLD](https://github.com/ThomasGrossmann/ROR1/assets/47849503/412268eb-3641-4630-8972-53f603a1e7ff)

### After implementation
*MCD*
![ROR1_MCD](https://github.com/ThomasGrossmann/ROR1/assets/47849503/dbc1350d-636b-4a34-bf83-cda6f1f001ef)

As said earlier, changes were required to make it work with the features. This is a conceptual model that represents the application's implementation, which is why it doesn't completely follow normal forms.

The main change was to get rid of the **Students** and **Teachers** table in favor of an **Users** one following the STI pattern with a `type` column. Both models had very similar attributes and with the addition of the authentication feature, the use of the STI pattern made a lot of sense.

An **Exams** table has been added to add the possibility of having multiple grades for a **Branch** (Modules usually have only one Grade but general Branches have a minimum of 3 Grades).

A double relation can be seen between **Users** and **SchoolClasses**. The `Contain` one is for the Students and the `Manage` for the Teacher.

Everything else is pretty much the same as the old conceptual model from SQL1.

*MLD*
![ROR1_MLD](https://github.com/ThomasGrossmann/ROR1/assets/47849503/b12a830d-64a8-4720-9f52-399a256be54a)

## Features

- An authentication must be provided to identify roles (Student, Teacher, Dean)
- A Student must only be able to consult his Grades
- A Teacher must be able to give Grades to Students in the Subjects they teach
- A Dean must be able to create Subjects (Branches) and assign them to a Teacher + must be able to archive a Subject
- A Dean must be able to generate a Grades report for each Students

## Installation

- Clone the repository
  - `git clone https://github.com/ThomasGrossmann/ROR1`
- Install dependencies (bundle)
  - `cd ROR1`
  - `bundle install`
- Run the migrations
  - `rails db:migrate`
- (optional) Run the seeders
  - `rails db:seed`
- Run the application
  - `rails s`

## Usage

There are 3 "roles" in the application. Student, Teacher and Dean.

- A Student is a simple User that can view his Grades, Exams and SchoolClasses.
- A Teacher is also an User that can view the Branches he teaches and create Exams and Grades for the Students of the SchoolClasses that follows his Branches
- A Dean is like an "admin" role that can do everything a Teacher does but he can also manage all resources (create Users, create Branches and assign them to Teachers, generate a Grades Report, etc...)

Login Data :
- Student
  - student@test.com
  - 123123
- Teacher
  - teacher@test.com
  - 123123
- Dean
  - dean@test.com
  - 123123

When running the application for the first time (or when you just logged out), you will be redirected to the home page where you will be able to Login.

The resources will be locked from views if the role has not the rights (at the moment it is only locked in views, if you access certain URLs directly, it will work).
