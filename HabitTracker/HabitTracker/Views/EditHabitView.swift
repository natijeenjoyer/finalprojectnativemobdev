//
//  EditHabitView.swift
//  HabitTracker
//
//  Created by Yelzhan Zhagalbay on 11.02.2025.
//

import SwiftUI

struct EditHabitView: View {
    @ObservedObject var viewModel: HabitViewModel
    @State private var habitTitle: String
    var habit: Habit
    @Environment(\.presentationMode) var presentationMode

    init(viewModel: HabitViewModel, habit: Habit) {
        self.viewModel = viewModel
        self.habit = habit
        _habitTitle = State(initialValue: habit.title)
    }

    var body: some View {
        NavigationView {
            VStack {
                TextField("Название привычки", text: $habitTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .foregroundColor(.black)

                Button(action: {
                    viewModel.updateHabit(id: habit.id, newTitle: habitTitle)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Сохранить изменения")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("Gold"))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .padding()
            .background(Color.white)
            .navigationTitle("Редактировать привычку")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
