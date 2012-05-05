Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "product_import_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:product_imports, :url => spree.admin_product_imports_path) %>",
                     :disabled => false)
