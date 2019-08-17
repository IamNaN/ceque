module Shared
  module Pages
    def some_pages
      @pages = create_list :page, 5
    end

    def some_page_data
      @some_page_data ||= build :page
    end

    def some_other_page_data
      @some_page_data = nil
      some_page_data
    end

    def table_has(page_data)
      expect(page).to have_content page_data.title
    end

    def fill_in_form_with(page_data)
      fill_in 'Title',	with: page_data.title
      fill_in 'Slug',	with: page_data.slug
      fill_in 'Content',	with: page_data.content 
      attach_file 'page_main_image', page_data.main_image_path
    end
  end
end
