# Use this setup block to configure all options available in Bootsy.
Bootsy.setup do |config|
  # Default editor options
  # You can override them locally by passing an editor_options hash to bootsy_area
  config.editor_options = {
    font_styles: true,
    emphasis: true,
    lists: true,
    html: true,
    link: true,
    image: true,
    color: true
  }

  # Image versions available
  Possible values: :small, :medium, :large and/or :original
  config.image_versions_available = [:small, :medium, :large, :original]


  # SMALL IMAGES

  # Width limit for small images
  config.small_image[:width] = 80

  # Height limit for small images
  config.small_image[:height] = 80


  # MEDIUM IMAGES

  # Width limit for medium images
  config.medium_image[:width] = 360

  # Height limit for medium images
  config.medium_image[:height] = 360


  # LARGE IMAGES

  # Width limit for large images
  config.large_image[:width] = 760

  # Height limit for large images
  config.large_image[:height] = 760


  # Whether user can destroy uploaded files
  config.allow_destroy = true


  # # Store directory (inside of 'public')
  # BE CAREFUL! Changing this may break previously uploaded file paths!
  config.store_dir = 'uploads'
end