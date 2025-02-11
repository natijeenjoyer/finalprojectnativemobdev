//
//  Habit.swift
//  HabitTracker
//
//  Created by Yelzhan Zhagalbay on 11.02.2025.
//

import Foundation

struct Habit: Identifiable, Codable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
    var streak: Int
    var lastCompletedDate: Date?
}

