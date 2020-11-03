//
//  ContactInformation.swift
//  personsListSwiftUI
//
//  Created by Кирилл Файфер on 02.11.2020.
//

import SwiftUI

struct ContactInformation: View {
    let person: Person
    
    var body: some View {
        Form {
            VStack {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Phone: \(person.phone)")
                            
                        Text("Email: \(person.email)")
                        Spacer()
                    }
                    Spacer()
                }
                .navigationTitle(person.fullName)
            }
        }
    }
}

struct ContactInformation_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(person: Person.getManagers().first!)
    }
}
