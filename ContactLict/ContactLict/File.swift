//
//  File.swift
//  ContactLict
//
//  Created by Alexander Agafonov on 25.10.2023.
//

import Foundation

struct Contact {
    let person: String?
    let phoneNumber: String?
    let email: String?
    
    
}


var personList = ["Кукумбер Маркович", "Марк Аврелий",
                  "Вертущкин Олег", "Коба Джугашвили",
                  "Карл Франс", "Рикки Мартин",
                  "Бздышек Заподлянский", "Главврач (Дурка)",
                  "Дядя Толя", "Займет сотку"]

var phoneNumberList = ["+7999192384", "+384857294", "02", "03", "555385", "+7776663443", "911", "8800000700","112","+936718466"]

var emailList = ["sexinstructor@mail.com", "XxxNagibator666xxX@yandex.kz", "911@alarm.ru",
                 "crab@rak.su", "rome_rule@spqr.ru", "100@vdolg.ru",
                 "ussr@ussr.org", "glavgad@durka.com", "prodam@jarazh.com",
                 "sharick@serdce.dog"]

func listGenerator(_ persons: [String] = personList, _ phones: [String] = phoneNumberList, _ emails: [String] = emailList) -> [Contact]{
    let arrayName = persons.shuffled()
    let arrayPhone = phones.shuffled()
    let arrayEmail = emails.shuffled()
    var arrayForReturn: [Contact] = []
    
    for i in 0..<persons.count{
        arrayForReturn.append(Contact(person: arrayName[i], phoneNumber: arrayPhone[i], email: arrayEmail[i]))
        
    }
    return arrayForReturn
}

let contactsList = listGenerator()
