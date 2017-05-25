# NGSpriteKitSpringTest
This project demonstrates a potential bug in the Spritekit-Spring library. It creates a simple scene with two squares:

![Before](/before.png)

When a touch is detected, it runs the following code:

```swift
childOne.run(SKAction.scale(by: 1.2, duration: 1))
childTwo.run(SKAction.scale(by: 1.2, duration: 2, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 2))
```

Which causes the nodes to scale up by different ratios even though they were both scaled by 1.2:

![After](/after.png)
