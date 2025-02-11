Habit Tracker

A simple yet effective habit tracking application built using SwiftUI. This app allows users to create, track, and manage their daily habits efficiently while monitoring their progress over time.

🚀 Features

✅ Add, Edit & Delete Habits - Users can create new habits, edit existing ones, and remove habits they no longer need.✅ Habit Streak Tracking - Tracks how many consecutive days a habit has been completed.✅ Dynamic UI Updates - The app updates in real time when users modify their habits.✅ Intuitive UI/UX - Designed using a Navy & Gold theme for an elegant look and feel.✅ Persistent Storage - Uses UserDefaults to save user habits, ensuring data is retained after the app is closed.✅ CRUD Operations - Full implementation of Create, Read, Update, and Delete functionalities.✅ SwiftUI Navigation - Utilizes NavigationView and sheet for seamless navigation between screens.

📸 Screenshots

📷 Insert screenshots here

🛠️ Technologies Used

Swift (5+)

SwiftUI

MVVM Architecture

UserDefaults (for local data storage)

NavigationView & List (for UI structure)

📂 Project Structure

📂 HabitTracker
 ├── 📁 Model
 │    ├── Habit.swift
 ├── 📁 ViewModel
 │    ├── HabitViewModel.swift
 ├── 📁 Views
 │    ├── ContentView.swift
 │    ├── HabitRow.swift
 │    ├── AddHabitView.swift
 │    ├── EditHabitView.swift
 ├── HabitTrackerApp.swift

🚀 Installation & Usage

Clone the repository:

git clone https://github.com/your-username/habit-tracker.git

Open in Xcode:

Open HabitTracker.xcodeproj in Xcode.

Run the app:

Select an iOS simulator (iPhone 14 recommended) and press CMD + R.

🔥 How It Works

1️⃣ Adding a Habit

Tap the + button on the top right.

Enter the habit name and save.

2️⃣ Tracking Progress

Tap the circle ⭕ to mark a habit as completed.

The streak counter 🔥 increases for consecutive completions.

3️⃣ Editing a Habit

Tap the ✏️ (pencil icon) next to a habit.

Modify the name and save.

4️⃣ Deleting a Habit

Swipe left on a habit to delete it.

🎯 Future Improvements

✅ Cloud Syncing with Firebase - Allow users to save habits in the cloud.
✅ Reminders & Notifications - Send daily reminders to complete habits.
✅ Statistics & Charts - Visualize habit progress using graphs.
✅ Dark Mode Support - Add theme switching between light & dark mode.

💡 Contributing

We welcome contributions! Feel free to submit issues and pull requests.

Fork the repo

Create a feature branch:

git checkout -b feature-name

Commit changes:

git commit -m "Add new feature"

Push to branch:

git push origin feature-name

Create a Pull Request

📝 License

This project is open-source and available under the MIT License.

📩 Contact

For any inquiries, feel free to reach out:📧 your-email@example.com🐙 GitHub: your-username

