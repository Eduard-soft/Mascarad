//
//  Model.swift
//  Mascarad
//
//  Created by Эдуард on 13.11.2021.
//

struct Member {
    
    let member = DataManager.shared
    
    let name: String
    let phoneNumber: String
    let email: String
    let image: String
    let pawsImage: String
}

extension Member {
    static func getMemberList() -> [Member] {
        
        var members: [Member] = []
        
        let names = DataManager.shared.nameMembers
        let phoneNumbers = DataManager.shared.phoneNumberMembers
        let emails = DataManager.shared.emailMenbers
        let images = DataManager.shared.imageMembers
        let pawsImages = DataManager.shared.pawsRandomImages.shuffled()
        
        let iterationCount = min(
            names.count,
            phoneNumbers.count,
            emails.count,
            images.count,
            pawsImages.count
        )
        
        for index in 0...iterationCount {
            let member = Member(
                name: names[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index],
                image: images[index],
                pawsImage: pawsImages[index]
            )
        
            members.append(member)
        }
        
        return members
    }
}


