//
//  MainScreen.swift
//  personsListSwiftUI
//
//  Created by Кирилл Файфер on 02.11.2020.
//

import SwiftUI

struct MainScreen: View {
    let personsList = Person.getManagers()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactList(list: personsList)
                    .tabItem {
                            Image(systemName: "person.circle.fill")
                            Text("Contacts")
                    }
                PhoneList(list: personsList)
                    .tabItem {
                            Image(systemName: "phone")
                            Text("Phones")
                    }
            }
            .navigationTitle("Persons List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
