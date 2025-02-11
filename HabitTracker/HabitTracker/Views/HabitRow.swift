//
//  HabitRow.swift
//  HabitTracker
//
//  Created by Yelzhan Zhagalbay on 11.02.2025.
//

import SwiftUI

struct HabitRow: View {
    var habit: Habit
    var onToggle: () -> Void
    var onEdit: () -> Void
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(habit.title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text("🔥 Серия: \(habit.streak) дней")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            Spacer()
            Button(action: onToggle) {
                Image(systemName: habit.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(habit.isCompleted ? Color("Gold") : .gray)
                    .font(.title)
            }
            Button(action: onEdit) {
                Image(systemName: "pencil")
                    .foregroundColor(Color("Gold"))
            }
        }
        .padding()
        .background(Color.white.cornerRadius(10))
        .shadow(radius: 2)
    }
}
