module MotionFloatingActionButton

  module_function

  def new(  floating_frame,
            options
          )

    normal_image = options[:normal_image] || UIImage.imageNamed('plus')
    pressed_image = options[:pressed_image] || UIImage.imageNamed('plus')
    navigation_bar = options[:navigation_bar]
    scroll_view = options[:scroll_view]
    delegate = options[:delegate]

    if scroll_view && navigation_bar
      addButton = VCFloatingActionButton.alloc.initWithFrame(floating_frame, 
        normalImage: normal_image, 
        andPressedImage: pressed_image,
        withScrollview: scroll_view,
        andNavigationBar: navigation_bar
      )
    elsif scroll_view
      addButton = VCFloatingActionButton.alloc.initWithFrame(floating_frame, 
        normalImage: normal_image, 
        andPressedImage: pressed_image, 
        withScrollview: scroll_view,
      )
    elsif navigation_bar
      addButton = VCFloatingActionButton.alloc.initWithFrame(floating_frame, 
        normalImage: normal_image, 
        andPressedImage: pressed_image, 
        andNavigationBar: navigation_bar
      )
    else
      addButton = VCFloatingActionButton.alloc.initWithFrame(floating_frame, 
        normalImage: normal_image, 
        andPressedImage: pressed_image
      )
    end
    addButton.delegate = delegate

    addButton
  end
          

  def build(args)

    @floating_frame = args[:floating_frame] || CGRectMake(device.width*3/4, device.height/2, device.width*1/4, device.height/2)
    @normal_image = args[:normal_image]
    @pressed_image = args[:pressed_image]
    @navigation_bar = args[:navigation_bar]
    @delegate = args[:delegate]

    # addButton = VCFloatingActionButton.alloc.initWithFrame(@floating_frame, normalImage: @normal_image, andPressedImage: @pressed_image) #, withScrollview: UITableView.new)
    addButton = VCFloatingActionButton.alloc.initWithFrame(@floating_frame, normalImage: @normal_image, andPressedImage: @pressed_image, andNavigationBar: @navigation_bar)
    addButton = delegate
    addButton
  end
end