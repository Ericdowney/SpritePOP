//
//  Command.swift
//  SpritePop
//
//  Created by Downey, Eric on 12/9/16.
//  Copyright © 2016 Downey. All rights reserved.
//

public protocol GameCommand {
    associatedtype T
    func execute(with object: T)
}
