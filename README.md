# NSRangeComplementarySet
Supports retrieve complementary set of range by exclude a range.

# Example
```
let ranges = NSRange(location: 10, length: 10) - NSRange(location: 10, length: 3)
-> ranges: [(location: 13, length: 7)]

let ranges = NSRange(location: 10, length: 10) - NSRange(location: 15, length: 4)
-> ranges: [(location: 10, length: 5), (location: 19, length: 1)]

let ranges = NSRange(location: 10, length: 10) - NSRange(location: 15, length: 0)
-> ranges: [(location: 10, length: 10)]

let ranges = NSRange(location: 10, length: 10) - NSRange(location: 15, length: 10)
-> ranges: [(location: 10, length: 5)]
```

# Installation

NSRangeComplementarySet is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NSRangeComplementarySet"
```

# Unlicense
Do whatever you want with this code.
