//
//  Model.swift
//  Aula_Rest
//
//  Created by Turma01-9 on 05/04/24.
//

import Foundation
//
//struct Wand: Codable{
//    let wood : String?
//    let core : String?
//    let length : Double?
//}

struct HaPo : Decodable, Identifiable{
    let id : String
    let name : String?
//    let alternate_names: [String]?
//    let species : String?
    let gender : String?
    let house : String?
    let dateOfBirth : String?
    let yearOfBirth : Int?
//    let wizard : Bool?
//    let ancestry : String?
//    let eyeColor : String?
//    let hairColor : String?
//    let wand : Wand
//    let patronus : String?
//    let hogwartsStudent : Bool?
//    let hogwartsStaff: Bool?
//    let actor : String?
//    let alternate_actors : [String]?
//    let alive : Bool?
    let image : String?
}

