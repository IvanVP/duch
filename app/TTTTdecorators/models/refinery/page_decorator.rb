require 'stringex'
Refinery::Page.class_eval do
  

  acts_as_indexed :fields => [:ascii_title,  :ascii_meta_keywords, :ascii_meta_description,
                                   :ascii_browser_title, :ascii_all_page_part_content]



  def ascii_title
  self.title.to_ascii #unless self.title.nil?
  end

  def ascii_meta_keywords
    self.ascii_meta_keywords.to_ascii #unless self.ascii_meta_keywords.nil?
  end

  def ascii_meta_description
    self.ascii_meta_description.to_ascii #unless self.ascii_meta_description.nil?
  end

  def ascii_menu_title
    self.ascii_menu_title.to_ascii #unless self.ascii_menu_title.nil?
  end

  def ascii_browser_title
    self.ascii_browser_title.to_ascii #unless self.ascii_browser_title.nil?
  end

  def ascii_all_page_part_content
    self.ascii_all_page_part_content.to_ascii #unless self.ascii_all_page_part_content.nil?
  end
end
 