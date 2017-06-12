# A Question About Swift and NSCoding

## Solved: 

Assuming that you provide default values for any new properties you introduce in a subclass, the following two rules apply:

Rule 1
If your subclass doesn’t define any designated initializers, it automatically inherits all of its superclass designated initializers.

Rule 2
If your subclass provides an implementation of all of its superclass designated initializers—either by inheriting them as per rule 1, or by providing a custom implementation as part of its definition—then it automatically inherits all of the superclass convenience initializers.

https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-ID216

It appears that when a class adheres to the `NSCoding` protocol, it also **must** have an `init` method even when it is, say, inheriting from `NSObject`

Why is that the case?

Providing boilerplate code will make the compiler happy: 

```swift
    override init () {
        super.init()
    }
```

This looks like syntactic sugar to me, and I don't expect this in Swift: An `init` method exists, apparent by the `override` keyword, and my method does nothing but call `super`. Yet, it is necessary.

What am I missing? Or is this a bug?

Oh, yes both Swift 3 and 4
