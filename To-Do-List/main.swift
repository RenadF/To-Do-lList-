import Foundation

struct Task: Codable {
    var title: String
}

var tasks: [Task] = []

let fileURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    .appendingPathComponent("tasks.json")

// Load tasks
func loadTasks() {
    if let data = try? Data(contentsOf: fileURL) {
        let decoded = try? JSONDecoder().decode([Task].self, from: data)
        tasks = decoded ?? []
    }
}

// Save tasks
func saveTasks() {
    if let data = try? JSONEncoder().encode(tasks) {
        try? data.write(to: fileURL)
    }
}

// Menu
func showMenu() {
    print("""
    
    To-Do List Menu:
    1. Add Task
    2. View Tasks
    3. Delete Task
    4. Exit
    
    """)
}

// Add task
func addTask() {
    print("Enter task title:")
    if let input = readLine() {
        tasks.append(Task(title: input))
        saveTasks()
        print("Task added!")
    }
}

// View tasks
func viewTasks() {
    if tasks.isEmpty {
        print("No tasks found.")
    } else {
        print("\nYour Tasks:")
        for (index, task) in tasks.enumerated() {
            print("\(index + 1). \(task.title)")
        }
    }
}

// Delete task
func deleteTask() {
    viewTasks()
    print("Enter task number to delete:")

    if let input = readLine(),
       let index = Int(input),
       index > 0,
       index <= tasks.count {
        
        tasks.remove(at: index - 1)
        saveTasks()
        print("Task deleted!")
    } else {
        print("Invalid input.")
    }
}

// Main loop
loadTasks()

while true {
    showMenu()

    if let choice = readLine() {
        switch choice {
        case "1":
            addTask()
        case "2":
            viewTasks()
        case "3":
            deleteTask()
        case "4":
            print("Goodbye!")
            exit(0)
        default:
            print("Invalid choice.")
        }
    }
}
