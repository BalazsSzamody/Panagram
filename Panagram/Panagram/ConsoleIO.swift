//
//  ConsoleIO.swift
//  Panagram
//
//  Created by Szamódy Zs. Balázs on 2017. 04. 21..
//  Copyright © 2017. Szamódy Zs. Balázs. All rights reserved.
//

import Foundation

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    
    init(_ value: String) {
        switch value{
            case "a": self = .anagram
            case "p": self = .palindrome
            case "h": self = .help
        default: self = .unknown
        }
    }
}



class ConsoleIO {
    class func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        print("usage:")
        print("\(executableName) -a string1 string2")
        print("or")
        print("\(executableName) -p string")
        print("or")
        print("\(executableName) -h to show usage information")
        print("Type \(executableName) without an option to enter interactive mode.")
    }
    
    func getOption(_ option: String) -> (option: OptionType, value: String) {
        return (OptionType(option), option)
    }
}
