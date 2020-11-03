//
//  Person.swift
//  personsListSwiftUI
//
//  Created by Кирилл Файфер on 02.11.2020.
//

import Foundation

struct Person: Identifiable {
    let name: String
    let surname: String
    let email: String
    let phone: String
    let id: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getManagers() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index],
                id: index
            )
            persons.append(person)
        }
        return persons
    }
}
