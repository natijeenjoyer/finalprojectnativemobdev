//
//  ContentView.swift
//  HabitTracker
//
//  Created by Yelzhan Zhagalbay on 11.02.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = HabitViewModel()
    @State private var showingAddHabit = false
    @State private var editingHabit: Habit?

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.habits) { habit in
                        HabitRow(habit: habit, onToggle: {
                            viewModel.toggleHabit(id: habit.id)
                        }, onEdit: {
                            editingHabit = habit
                        })
                    }
                    .onDelete(perform: viewModel.deleteHabit)
                }
            }
            .background(Color.white)
            .navigationBarTitle("Трекер привычек", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingAddHabit = true }) {
                        Image(systemName: "plus")
                            .foregroundColor(Color("Gold"))
                    }
                }
            }
            .sheet(isPresented: $showingAddHabit) {
                AddHabitView(viewModel: viewModel)
            }
            .sheet(item: $editingHabit) { habit in
                EditHabitView(viewModel: viewModel, habit: habit)
            }
        }
    }
}
