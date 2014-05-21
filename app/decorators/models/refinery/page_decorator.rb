Refinery::Page.class_eval do
  require 'stringex'

  acts_as_indexed :fields => [:ascii_title, :ascii_body, :ascii_meta_keywords, :ascii_meta_description,
                                  :ascii_menu_title, :ascii_browser_title, :ascii_all_page_part_content]

  def ascii_title
    self.title.to_ascii
  end

  def ascii_body
    self.body.to_ascii
  end

  def ascii_meta_keywords
    self.meta_keywords.to_ascii
  end

  def ascii_meta_description
    self.meta_description.to_ascii
  end

  def ascii_menu_title
    self.menu_title.to_ascii
  end

  def ascii_browser_title
    self.browser_title.to_ascii
  end

  def ascii_all_page_part_content
    self.all_page_part_content.to_ascii
  end
end
 