module Refinery
  module Portfolio
    include ActiveSupport::Configurable

    config_accessor :items_per_page, :cover_image_thumb_size, :fotorama_options,
                    :display_item_text, :display_gallery_text

    self.items_per_page = 20
    self.cover_image_thumb_size = '300x200'

    # Be sure to see http://http://fotorama.io/customize/ for  documentation.
    # !!! Not implemented yet 

    self.fotorama_options = {
    #   # "data-width" => "100%",
    #   # "data-ratio" => "800/600",
    #   # "data-nav" => "thumbs",
    #   # "data-allowfullscreen" => "native",
    #   # "data-transition" => "crossfade",
    #   # "data-loop" => "true",
    #   # "data-autoplay" => "true", 
    #   # "data-keyboard" => "true",
    #   # "data-swipe" => "true"
    }

    self.display_item_text = true
    self.display_gallery_text = true
  end
end
