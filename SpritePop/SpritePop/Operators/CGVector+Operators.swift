//
//  CGVector+Operators.swift
//  SpritePop
//
//  Created by Downey, Eric on 12/9/16.
//  Copyright © 2016 Downey. All rights reserved.
//

// MARK: - CGVector + - * / CGFloat

public func +(lhs: CGVector, rhs: CGFloat) -> CGVector {
    return CGVector(dx: lhs.dx + rhs, dy: lhs.dy + rhs)
}

public func -(lhs: CGVector, rhs: CGFloat) -> CGVector {
    return CGVector(dx: lhs.dx - rhs, dy: lhs.dy - rhs)
}

public func *(lhs: CGVector, rhs: CGFloat) -> CGVector {
    return CGVector(dx: lhs.dx * rhs, dy: lhs.dy * rhs)
}

public func /(lhs: CGVector, rhs: CGFloat) -> CGVector {
    return CGVector(dx: lhs.dx / rhs, dy: lhs.dy / rhs)
}

// MARK: - CGVector += -= *= /= CGFloat

public func +=(lhs: inout CGVector, rhs: CGFloat) {
    lhs = CGVector(dx: lhs.dx + rhs, dy: lhs.dy + rhs)
}

public func -=(lhs: inout CGVector, rhs: CGFloat) {
    lhs = CGVector(dx: lhs.dx - rhs, dy: lhs.dy - rhs)
}

public func *=(lhs: inout CGVector, rhs: CGFloat) {
    lhs = CGVector(dx: lhs.dx * rhs, dy: lhs.dy * rhs)
}

public func /=(lhs: inout CGVector, rhs: CGFloat) {
    lhs = CGVector(dx: lhs.dx / rhs, dy: lhs.dy / rhs)
}

// MARK: - Simple: a + b, a - b, etc

public func +(lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy + rhs.dy)
}

public func -(lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy - rhs.dy)
}

public func *(lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx * rhs.dx, dy: lhs.dy * rhs.dy)
}

public func /(lhs: CGVector, rhs: CGVector) -> CGVector {
    return CGVector(dx: lhs.dx / rhs.dx, dy: lhs.dy / rhs.dy)
}

// MARK: - Inout: a += b, a -= b, etc

public func +=(lhs: inout CGVector, rhs: CGVector) {
    lhs = CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy + rhs.dy)
}

public func -=(lhs: inout CGVector, rhs: CGVector) {
    lhs = CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy - rhs.dy)
}

public func *=(lhs: inout CGVector, rhs: CGVector) {
    lhs = CGVector(dx: lhs.dx * rhs.dx, dy: lhs.dy * rhs.dy)
}

public func /=(lhs: inout CGVector, rhs: CGVector) {
    lhs = CGVector(dx: lhs.dx / rhs.dx, dy: lhs.dy / rhs.dy)
}

// MARK: - CGVector + - * / CGPoint

public func +(lhs: CGVector, rhs: CGPoint) -> CGVector {
    return CGVector(dx: lhs.dx + rhs.x, dy: lhs.dy + rhs.y)
}

public func -(lhs: CGVector, rhs: CGPoint) -> CGVector {
    return CGVector(dx: lhs.dx - rhs.x, dy: lhs.dy - rhs.y)
}

public func *(lhs: CGVector, rhs: CGPoint) -> CGVector {
    return CGVector(dx: lhs.dx * rhs.x, dy: lhs.dy * rhs.y)
}

public func /(lhs: CGVector, rhs: CGPoint) -> CGVector {
    return CGVector(dx: lhs.dx / rhs.x, dy: lhs.dy / rhs.y)
}

// MARK: - CGVector += -= *= /= CGPoint

public func +=(lhs: inout CGVector, rhs: CGPoint) {
    lhs = CGVector(dx: lhs.dx + rhs.x, dy: lhs.dy + rhs.y)
}

public func -=(lhs: inout CGVector, rhs: CGPoint) {
    lhs = CGVector(dx: lhs.dx - rhs.x, dy: lhs.dy - rhs.y)
}

public func *=(lhs: inout CGVector, rhs: CGPoint) {
    lhs = CGVector(dx: lhs.dx * rhs.x, dy: lhs.dy * rhs.y)
}

public func /=(lhs: inout CGVector, rhs: CGPoint) {
    lhs = CGVector(dx: lhs.dx / rhs.x, dy: lhs.dy / rhs.y)
}
