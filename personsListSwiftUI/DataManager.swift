//
//  DataManager.swift
//  personsListSwiftUI
//
//  Created by Кирилл Файфер on 02.11.2020.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()

    private init() {}
    
    var names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy"
    ]
    
    let emails = [
        "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru"
    ]
    
    let phones = [
        "111111111", "222222222", "333333333", "444444444",
        "555555555", "666666666", "777777777", "888888888",
        "999999999"
    ]
}
