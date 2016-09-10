prawn_document(:page_layout => :landscape) do |pdf|
 pdf.font_size(25){  pdf.text "Name", :style => :bold}
 pdf.text @affiliation.name
 pdf.font_size(25){  pdf.text "Affiliation type", :style => :bold}
 pdf.text @affiliation.affiliation_type
 pdf.font_size(25){  pdf.text "Note", :style => :bold}
 pdf.text @affiliation.note.html_safe
 pdf.font_size(25){  pdf.text "Information", :style => :bold}

end