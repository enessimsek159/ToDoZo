//
//  ToDoView.swift
//  ToDoZo
//
//  Created by Eno MacPro on 5.07.2024.
//

import SwiftUI

struct ToDoView: View {
    @State var title = ""
    @State var items: [ToDo] = []
    
    
    func addItem(value: ToDo) {
        items.append(value)
        print(value.date)
        print(value.id)
        print(value.title)
        
        title = ""
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List {
                    ForEach(items, id: \.id) { value in
                        Text(value.title)
                    }
                }
                HStack{
                    TextField("Yeni Görev Ekle", text: $title)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    Button("Görev Ekle", action: {
                        addItem(value: ToDo(title: title, date: Date()))
                        
                    })
                    .padding()
                }
                
            }
            
        }
    }
}

#Preview {
    ToDoView()
}
