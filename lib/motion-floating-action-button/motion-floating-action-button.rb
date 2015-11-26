module MotionFloatingActionButton

  module_function

  def build(args)

    puts args
    $args = args
    @floating_frame = args[:floating_frame] || CGRectMake(device.width*3/4, device.height/2, device.width*1/4, device.height/2)

    addButton = VCFloatingActionButton.alloc.initWithFrame(@floating_frame, normalImage: UIImage.imageNamed('icon-29'), andPressedImage: UIImage.imageNamed('icon-29'), withScrollview: UITableView.new)

    addButton
  end
end