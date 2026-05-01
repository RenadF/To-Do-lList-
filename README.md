# 📝 Swift To-Do List (CLI)

A simple and practical Command Line To-Do List application built with Swift.  
This project helps users manage their daily tasks directly from the terminal with automatic data persistence using JSON.

## ✨ Features

•⁠  ⁠➕ Add new tasks

•⁠  ⁠❌ Delete existing tasks

•⁠  ⁠📋 View all saved tasks

•⁠  ⁠💾 Automatically save tasks to a local JSON file

•⁠  ⁠🔄 Load saved tasks when reopening the program

## 🛠 Built With

•⁠  ⁠Language: Swift
•⁠  ⁠Storage: JSON file
•⁠  ⁠Environment: Terminal / Command Line Tool

## 💡 Project Idea

This program was created as a lightweight task manager that runs entirely in the terminal.

It allows users to keep track of their tasks efficiently without needing a graphical interface.  
All tasks are stored in a JSON file, which means your task list remains stored even after closing the program.

## 📂 How It Works

When the program runs, it:

1.⁠ ⁠Loads existing tasks from the JSON file

2.⁠ ⁠Displays available options

3.⁠ ⁠Lets the user interact with the task list

Available actions:

•⁠  ⁠Add a task

•⁠  ⁠Delete a task

•⁠  ⁠View all tasks

•⁠  ⁠Exit the program

Before closing, all updates are saved automatically.

## 📁 Data Persistence

Tasks are stored in:

tasks.json

This ensures that all saved tasks remain available the next time the program is launched.

## 🚀 Running the Project

Clone the repository:

bash git clone <your-repository-link> cd <repository-name> 

Run using Swift:

bash swift run 

Or run directly from Xcode as a Command Line Tool.

## Example Usage

bash 
1. Add Task
2. Delete Task
3. View Tasks
4. Exit 

## Learning Goals

This project demonstrates:

•⁠  ⁠Swift fundamentals

•⁠  ⁠File handling in Swift

•⁠  ⁠JSON encoding & decoding

•⁠  ⁠Building terminal-based applications

•⁠  ⁠Data persistence

## Author

Developed using Swift as a practice project for learning file management and command-line application development.
