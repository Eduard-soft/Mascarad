//
//  DataManager.swift
//  Mascarad
//
//  Created by Эдуард on 13.11.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let nameMembers = [
        "Smith",
        "Johnson",
        "Williams",
        "Jones",
        "Brown"
    ]

    let phoneNumberMembers = [
        "81039034511",
        "81039034515",
        "81039034520",
        "81039034523",
        "81039034531"
    ]
    
    let emailMenbers = [
        "putin@email.ru",
        "tramp@email.ru",
        "merkel@email.ru",
        "obama@email.ru",
        "bellisimo@email.ru"
    ]
    
    let imageMembers = [
        "putin",
        "tramp",
        "merkel",
        "obama",
        "tereshcova"
    ]
    
    let pawsRandomImages = [
        "paws1",
        "paws2",
        "paws3",
        "paws4",
        "paws2"
    ]
    
//    var contact: String {
//        "\(phoneNumberMembers) \(emailMenbers)"
//    }
    
    private init() {}
}


