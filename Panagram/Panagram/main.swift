//
//  main.swift
//  Panagram
//
//  Created by Szamódy Zs. Balázs on 2017. 04. 21..
//  Copyright © 2017. Szamódy Zs. Balázs. All rights reserved.
//

import Foundation

let panagram = Panagram()
if CommandLine.argc < 2 {
    //Handle interactive mode
} else {
panagram.staticMode()
}

