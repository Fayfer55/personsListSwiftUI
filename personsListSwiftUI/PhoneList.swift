//
//  PhoneList.swift
//  personsListSwiftUI
//
//  Created by Кирилл Файфер on 02.11.2020.
//

import SwiftUI

struct PhoneList: View {
    let list: [Person]
    
    var body: some View {
        List {
            ForEach(list) { person in
                Section(header: Text(person.fullName)) {
                    Text("Phone: \(person.phone)")
                    Text("Email: \(person.email)")
                }
            }
        }
    }
}

struct PhoneList_Previews: PreviewProvider {
    static var previews: some View {
        PhoneList(list: Person.getManagers())
    }
}
