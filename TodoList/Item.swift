//
//  Item.swift
//  TodoList
//
//  Created by Nicholas Rowley on 25/07/17.
//
//

import Foundation

class Item: NSObject, NSCoding{
    var name:String?
    
    static let Dir = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    init(name:String?){
        self.name = name
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as? String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
}
