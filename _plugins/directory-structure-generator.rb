module Structure
    class Generator < Jekyll::Generator
        def generate(site)

            pages = []

            for check_page in site.pages
                page_info = Hash.new
                if is_chime_page(check_page.data['layout'])
                    path_list = make_path_split(check_page.path)
                    cat_path = path_list.join("/")

                    # copy data from the page's front matter and embellish it
                    page_info = check_page.data.clone
                    page_info['path_list'] = path_list
                    page_info['depth'] = path_list.length
                    page_info['path'] = cat_path
                    page_info['link_path'] = "/#{cat_path}/"
                    page_info['selected'] = false

                    pages << page_info
                end
            end

            # sort by depth
            pages = pages.sort_by { |hsh| hsh['depth'] }
            lowest_depth = pages[0]['depth']

            # build columns
            all_columns = []
            for check_page in pages
                if all_columns.length < check_page['depth'] - lowest_depth + 1
                    all_columns << []
                end
                all_columns[check_page['depth'] - lowest_depth] << check_page
            end
            # sort the root pages within their column
            all_columns[0] = all_columns[0].sort_by { |hsh| hsh['order'] }

            for target_page in site.pages
                if !is_chime_page(target_page.data['layout'])
                    # send non-category pages just the root pages
                    target_page.data['columns'] = [{"title" => "", "pages" => all_columns[0]}]
                    next
                end

                target_path_list = make_path_split(target_page.path)
                target_page_cat_path = target_path_list.join("/")
                target_page_depth = target_path_list.length

                display_columns = []
                end_range = 0
                end_depth = [target_page_depth - lowest_depth + 1, all_columns.length - 1].min
                next_column_title = ""
                for check_depth in (0..end_depth)
                    check_column = all_columns[check_depth]
                    show_pattern = target_path_list[0..end_range].join("/")
                    select_pattern = target_path_list[0..end_range + 1].join("/")
                    column_info = {"title" => next_column_title}
                    column_pages = []
                    for check_page in check_column
                        clone_page = check_page.clone
                        if select_pattern == clone_page['path']
                            clone_page['selected'] = true
                            next_column_title = clone_page['title']
                        end

                        if /^#{show_pattern}/.match(clone_page['path'])
                            column_pages << clone_page
                        end
                    end

                    # sort by order and assign
                    column_info['pages'] = column_pages.sort_by { |hsh| hsh['order'] }
                    display_columns << column_info
                    end_range += 1
                end

                target_page.data['columns'] = display_columns
            end
        end

        def is_chime_page(layout)
            return (layout == "category" or layout == "subcategory" or layout == "article")
        end

        def make_path_split(path_string)
            path_list = path_string.split("/")
            if path_list.length > 1 and path_list[-1] == "index.markdown"
                path_list.pop()
            end
            return path_list
        end

    end
end
