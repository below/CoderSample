//
//  CodedObjects.swift
//  CoderSample
//
//  Created by Alexander v. Below on 11.06.17.
//  Copyright © 2017 Alexander von Below. All rights reserved.
//

import Foundation

class CodedGood : NSObject, NSCoding {
    var foo : String = "foo"
    
    
    // MARK: I am not doing anything here, really. Am I?
    override init () {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        guard let foo = aDecoder.decodeObject(forKey: "foo") as? String else { return nil }
        self.foo = foo
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.foo, forKey: "foo")
    }
}

class CodedBad : NSObject, NSCoding {
    var bar = "bar"
    
    required init?(coder aDecoder: NSCoder) {
        guard let bar = aDecoder.decodeObject(forKey: "bar") as? String else { return nil }
        self.bar = bar
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.bar, forKey: "bar")
    }
}
