module Structure
    class Generator < Jekyll::Generator
        def generate(site)

            structure = []

            for check_page in site.pages
                page_path_list = check_page.path.split("/")
                if page_path_list[-1] == 'index.markdown'
                    page_path_list.pop()
                end
                page_cat_path = page_path_list.join("/")

                page_info = Hash.new
                if check_page.data['layout'] == 'category' or check_page.data['layout'] == 'subcategory' or check_page.data['layout'] == 'article'
                    page_info['layout'] = check_page.data['layout']
                    page_info['title'] = check_page.data['title']
                    page_info['path'] = page_cat_path
                    structure << page_info
                end
            end

            for target_page in site.pages
                target_page.data['structure'] = structure
            end
        end
    end
end
