module MotionFloatingActionButton

  module_function

  def build(args)

    @floating_frame = args[:floating_frame] || CGRectMake(device.width*3/4, device.height/2, device.width*1/4, device.height/2)
    @normal_image = args[:normal_image]
    @pressed_image = args[:pressed_image]

    addButton = VCFloatingActionButton.alloc.initWithFrame(@floating_frame, normalImage: @normal_image, andPressedImage: @pressed_image, withScrollview: UITableView.new)

    addButton
  end
end