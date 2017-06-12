# A Question About Swift and NSCoding

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
