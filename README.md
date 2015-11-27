Motion-Swipe for RubyMotion
====================
![alt tag](https://camo.githubusercontent.com/eb4b9d9cc51e30254b575cd5b388ad57d0a4bace/687474703a2f2f692e696d6775722e636f6d2f7968344d7743422e676966)

Trying to add a Google inbox like floating button gem for RubyMotion. PRs for fixes, refactors and features accepted!

This is a wrapper around gizmoboy7's VCFloatingActionButton written in obj-c. We've included some of the fixes in the issues and pull requests from his repo and have made some customizations here too, so it is diverged and will likely stay that way. See his source: https://github.com/gizmoboy7/VCFloatingActionButton

We'd like to dedicate this gem to @andrewhavens, may he eschew iOS guidelines in the future.

__setup needed for storyboard file usage__

You need to move the .xib file `resources` into your app's `resources` folder. RubyMotion will compile this into a .nib file, and all should be well. If you know how to avoid having to do this step, please let us know!!!

__create a floating action button view__
``` ruby

# If you are not using a nav bar, you can ignore these values.
nav_bar_height = self.navigation_controller.navigationBar.frame.size.height
nav_bar = self.navigation_controller.navigationBar
scroll_view = UITableView.new  # haven't played with the scroll view option myself
    
@addButton = MotionFloatingActionButton.new(
      CGRectMake(device.width*3/4, device.height/2+nav_bar_height, device.width*1/4, device.height/2),
      normal_image: rmq.image.resource('icons/plus'),
      pressed_image: rmq.image.resource('icons/plus'),
      scroll_view: scroll_view, #optional
      navigation_bar: nav_bar, #optional
      delegate: self
    )

# Older way but should still work
@addButton = MotionFloatingActionButton.build({
  floating_frame: CGRectMake(device.width*3/4, device.height/2, device.width*1/4, device.height/2),
  normal_image: rmq.image.resource('icons/plus'), # or UIImage.imageNamed('plus')
  pressed_image: rmq.image.resource('icons/plus-pressed'), # or UIImage.imageNamed('plus-pressed')
  delegate: self
})  

@addButton.imageArray =  ["Facebook", "Twitter", "Google Plus", "Linked in"]
@addButton.labelArray = ["Facebook", "Twitter", "Google Plus", "Linked in"]

rmq.append(@addButton)
```    

__do something after a menu item is pressed__

``` ruby
def didSelectMenuOptionAtIndex(index)
  puts index
end
```
