//
//  ContactList.swift
//  personsListSwiftUI
//
//  Created by Кирилл Файфер on 02.11.2020.
//

import SwiftUI

struct ContactList: View {
    let list: [Person]
    
    var body: some View {
        List(list) { person in
            NavigationLink(person.fullName,
                           destination: ContactInformation(person: person))
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(list: Person.getManagers())
    }
}
