module MotionFloatingActionButton

  module_function

  def build(args)

    @float_frame = args[:float_frame] || CGRectMake(0, 0, device.width, device.height)
    # @normal = args[:normal] 

    addButton = VCFloatingActionButton.alloc.initWithFrame(@float_frame, normalImage: UIImage.imageNamed('icon-29'), andPressedImage: UIImage.imageNamed('icon-29'), withScrollview: UITableView.new)

    # addButton = [[VCFloatingActionButton alloc]initWithFrame:floatFrame normalImage:[UIImage imageNamed:@"plus"] andPressedImage:[UIImage imageNamed:@"cross"] withScrollview:_dummyTable];


    addButton

  end
end