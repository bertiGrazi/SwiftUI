//
//  AddNewTask.swift
//  TaskManagerApp
//
//  Created by Grazi  Berti on 03/02/23.
//

import SwiftUI

struct AddNewTask: View {
    //MARK: - Properties
    @EnvironmentObject var taskModel: TaskViewModel
    //MARK: - All Environment Values in one Variable
    @Environment(\.self) var env
    
    //MARK: - View
    var body: some View {
        VStack(spacing: 12) {
            Text("Edit Text")
                .font(.title3.bold())
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading) {
                    Button {
                        env.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                }
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Task Color")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                //MARK: Sample Card Colors
                let colors: [String] = [
                    "Yellow", "Green", "Blue", "Purple", "Red", "Orange"
                ]
                
                HStack(spacing: 15) {
                    ForEach(colors, id: \.self) { color in
                        Circle()
                            .fill(Color(color))
                            .frame(width: 25, height: 25)
                            .background {
                                if taskModel.taskColor == color {
                                    Circle()
                                        .strokeBorder(.gray)
                                        .padding(-3)
                                }
                            }
                            .contentShape(Circle())
                            .onTapGesture {
                                taskModel.taskColor = color
                            }
                    }
                }
                .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 30)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

   
struct AddNewTask_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTask()
            .environmentObject(TaskViewModel())
    }
}
