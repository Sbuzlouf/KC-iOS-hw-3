//
//  File.swift
//  application
//
//  Created by Sumaya Buzlouf on 26/08/2022.
//

import Foundation

struct Expenses: Identifiable {
    let id = UUID()
    var group : String
    var rate : Int
    var profileImage : String
    var needs : [String]
}

var ourExp = [
    Expenses(group: "زوارة بشاير", rate: 100, profileImage: "TB", needs: ["حياتك CV-", "فطاير مشرف-"]),
    Expenses(group: "موسم شيماء", rate: 10, profileImage: "TS", needs: ["تكون مسالم-"]),
    Expenses(group: "سماعة عدنان", rate: 9, profileImage: "TA", needs: ["مواهب دافينشي بالرسم-"])
]
