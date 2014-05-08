Refinery::Audios.configure do |config|
    #Configures the maximum allowed upload size (in bytes) for an audio file
    #config.max_file_size = 524288000

    # Configure how many audios per page should be displayed in the list of images in the admin area
    #config.pages_per_admin_index =  20

    # Configure white-listed mime types for validation
    config.whitelisted_mime_types = ["audio/mpeg"]
	
    # Configure skin. Put css class name to activate skin and add css with images to assets path.
    # config.skin_css_class = default-skin

    # Configure Dragonfly
    # This is where in the middleware stack to insert the Dragonfly middleware
    # config.dragonfly_insert_before = ActionDispatch::Callbacks
    # config.dragonfly_secret = f9867504f6e95fa1ec3278b7b185ec80a5c7000d5b8d7b2a
    # If you decide to trust file extensions replace :ext below with :format
    # config.dragonfly_url_format = /system/audios/:job/:basename.:format
    # config.datastore_root_path = /home/ivan/work/refinery20/duch/public/system/refinery/audios
    # config.trust_file_extensions = false

end
