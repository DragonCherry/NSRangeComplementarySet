//
//  NSRange+ComplementarySet.swift
//  Pods
//
//  Created by DragonCherry on 10/21/16.
//
//

import Foundation

public extension NSRange {
    
    /// Detect a range is overlapping current range.
    ///
    /// - Parameter range: Target range to check.
    /// - Returns: Overlapped status.
    open func isOverlapped(with range: NSRange, isInclusive: Bool = false) -> Bool {
        if location > range.location {
            if isInclusive {
                return location <= range.location + range.length
            } else {
                return location < range.location + range.length
            }
        } else {
            if isInclusive {
                return location + length >= range.location
            } else {
                return location + length > range.location
            }
        }
    }
    
    /// Retrieves complementary set of range by exclude a range from self.
    ///
    /// - Parameter range: Range to exclude from.
    /// - Returns: Complement set of range after excluding.
    open func exclude(range: NSRange) -> [NSRange]? {
        
        var left: NSRange?
        var right: NSRange?
        
        // not overlapping
        if !isOverlapped(with: range) { return [self] }
        
        // given range includes whole caller range
        if range.location <= location && location + length <= range.location + range.length { return nil }
        
        // lefthand remainder
        if location < range.location && length > 0 {
            left = NSMakeRange(location, min(location + length, range.location) - location)
        }
        
        // righthand remainder
        if range.location + range.length < location + length {
            right = NSMakeRange(max(range.location + range.length, location), location + length - (range.location + range.length))
        }
        
        if let left = left, let right = right {
            // if remainders are continuous
            if left.location + left.length == right.location {
                return [NSMakeRange(left.location, left.length + right.length)]
            } else {
                return [left, right]
            }
        } else {
            if let left = left { return [left] }
            if let right = right { return [right] }
        }
        return nil
    }
}

func -(left: NSRange, right: NSRange) -> [NSRange]? {
    return left.exclude(range: right)
}
