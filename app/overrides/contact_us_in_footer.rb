# If SpreeStaticContent extension is also being used we list a Contact Us link with the other footer page links.
Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "contact_us_in_footer",
                     :insert_bottom => "#footer-right[data-hook] ul",
                     :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/contact-us') ? 'current' : 'not'%>'><%= link_to t('contact_us'), '/contact-us'  %></li>",
                     :original => '45ce7795da02814069b4c8421126cecb872df0d1')
