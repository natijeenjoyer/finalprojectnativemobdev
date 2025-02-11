//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Yelzhan Zhagalbay on 11.02.2025.
//

import SwiftUI

struct AddHabitView: View {
    @ObservedObject var viewModel: HabitViewModel
    @State private var habitTitle = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                TextField("Название привычки", text: $habitTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .foregroundColor(.black)

                Button(action: {
                    viewModel.addHabit(title: habitTitle)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Добавить привычку")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("Gold"))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding()
                }
                .disabled(habitTitle.isEmpty)
            }
            .padding()
            .background(Color.white)
            .navigationTitle("Новая привычка")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
