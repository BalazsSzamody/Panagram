//
//  StringExtension.swift
//  Panagram
//
//  Created by Szamódy Zs. Balázs on 2017. 04. 22..
//  Copyright © 2017. Szamódy Zs. Balázs. All rights reserved.
//

import Foundation

extension String{
    func isAnagramOfString(_ s: String) -> Bool {
        let lowerSelf = self.lowercased().replacingOccurrences(of: " ", with: "")
        let lowerOther = s.lowercased().replacingOccurrences(of: " ", with: "")
        
        return lowerSelf.characters.sorted() == lowerOther.characters.sorted()
    }
    
    func isPalindrome() -> Bool {
        let f = self.lowercased().replacingOccurrences(of: " ", with: "")
        
        let s = String(f.characters.reversed())
        
        return f == s
    }
}
