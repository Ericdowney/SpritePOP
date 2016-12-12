//
//  Pool.swift
//  SpritePop
//
//  Created by Downey, Eric on 12/9/16.
//  Copyright © 2016 Downey. All rights reserved.
//

import Foundation

public protocol PoolableObject {
    var poolIdentifier: String { get }
}

public protocol Pool {
    associatedtype T: PoolableObject, Equatable
    
    var objectFactory: (Void) -> T { get set }
    var objectPool: [T] { get set }
    var objectsInUse: [T] { get set }

    mutating func object() -> T
    mutating func restore(object: T)
    mutating func cleanPool(keepingCapacity: Bool)
}

public extension Pool {
    mutating func object() -> T {
        if objectPool.count == 0 {
            objectPool.append( objectFactory() )
            objectPool.append( objectFactory() )
        }
        let obj = objectPool.removeFirst()
        objectsInUse.append(obj)
        return obj
    }
    
    mutating func restore(object: T) {
        guard let index = objectsInUse.index(where: { $0 == object }) else {
            return
        }
        let obj = objectsInUse.remove(at:  index)
        objectPool.append(obj)
    }
    
    mutating func cleanPool(keepingCapacity: Bool = false) {
        objectsInUse.removeAll(keepingCapacity: keepingCapacity)
        objectsInUse.removeAll(keepingCapacity: keepingCapacity)
    }
}

