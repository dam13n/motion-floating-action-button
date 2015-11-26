Motion-Swipe for RubyMotion
====================
![alt tag](https://camo.githubusercontent.com/eb4b9d9cc51e30254b575cd5b388ad57d0a4bace/687474703a2f2f692e696d6775722e636f6d2f7968344d7743422e676966)

Trying to add a Google inbox like floating button gem for RubyMotion. PRs for fixes, refactors and features accepted!

This is a wrapper around gizmoboy7's VCFloatingActionButton written in obj-c. He does an excellent job detailing how it all works, so that you can customize it easily. So see his source: https://github.com/gizmoboy7/VCFloatingActionButton


__setup needed for storyboard file usage__
You need to move the .xib file `resources` into your app's `resources` folder. RubyMotion will compile this into a .nib file, and all should be well. If you know how to avoid having to do this step, please let us know!!!

__create a floating action button view__
``` ruby
@addButton = MotionFloatingActionButton.build({
  floating_frame: CGRectMake(device.width*3/4, device.height/2, device.width*1/4, device.height/2),
  delegate: self # Needed if you want to call method of a class with your button
})  

@addButton.imageArray =  ["Facebook", "Twitter", "Google Plus", "Linked in"]
@addButton.labelArray = ["Facebook", "Twitter", "Google Plus", "Linked in"]

rmq.append(@addButton)
```    
