//
//  Command.swift
//  SpritePop
//
//  Copyright © 2016 Downey. All rights reserved.
//

/// GameCommand protocol represents the Command pattern with an execute method
public protocol GameCommand {
    associatedtype Actor: GameComponent
    func execute(with actor: Actor)
}
