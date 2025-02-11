//
//  HabitViewModel.swift
//  HabitTracker
//
//  Created by Yelzhan Zhagalbay on 11.02.2025.
//

import Foundation

class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = [] {
        didSet {
            saveHabits()
        }
    }
    
    init() {
        loadHabits()
    }
    
    func addHabit(title: String) {
        let newHabit = Habit(title: title, isCompleted: false, streak: 0, lastCompletedDate: nil)
        habits.append(newHabit)
    }
    
    func toggleHabit(id: UUID) {
        if let index = habits.firstIndex(where: { $0.id == id }) {
            let today = Calendar.current.startOfDay(for: Date())

            if habits[index].isCompleted {
                habits[index].isCompleted = false
            } else {
                habits[index].isCompleted = true

                if let lastDate = habits[index].lastCompletedDate,
                   Calendar.current.isDate(lastDate, inSameDayAs: today) {
                    return
                }
                
                if let lastDate = habits[index].lastCompletedDate,
                   Calendar.current.isDate(lastDate, equalTo: today, toGranularity: .day) {
                    habits[index].streak += 1
                } else {
                    habits[index].streak = 1
                }

                habits[index].lastCompletedDate = today
            }
        }
    }
    
    func updateHabit(id: UUID, newTitle: String) {
        if let index = habits.firstIndex(where: { $0.id == id }) {
            habits[index].title = newTitle
        }
    }

    func deleteHabit(at offsets: IndexSet) {
        habits.remove(atOffsets: offsets)
    }
    
    private func saveHabits() {
        if let encoded = try? JSONEncoder().encode(habits) {
            UserDefaults.standard.set(encoded, forKey: "habits")
        }
    }
    
    private func loadHabits() {
        if let savedData = UserDefaults.standard.data(forKey: "habits"),
           let decoded = try? JSONDecoder().decode([Habit].self, from: savedData) {
            habits = decoded
        }
    }
}
