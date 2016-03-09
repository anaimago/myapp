pdf.move_up 20
 
# Add the font style and size
pdf.font "Helvetica"
pdf.font_size 13
pdf.text_box "User #{ @user_telephone.id }", :align => :right


pdf.font_size 12
pdf.text "Ime i prezime
Adresa
Broj telefona", :align => :left
pdf.move_down 50
 
pdf.font_size 18
pdf.text "Thank you for your order, Milutine.", :align => :center
pdf.move_down 20
 
invoiceinfo = [["Prva kolona", "druga kolona"], ["Ime i prezime", "bilo sta"], ["Adresa", "tfdtsf"],["Broj mobitela", "dsfgasrgfarfad"], ["Ime i prezime", "bilo sta"], ["Adresa", "tfdtsf"],["Broj mobitela", "dsfgasrgfarfad"]]
 
pdf.table invoiceinfo,
	:header => true,
	:position => :center,
	:column_widths => { 0 => 150, 1 => 350},
	:cell_style => { size: 10, :text_color => "000000", :border_width => 1},
	:row_colors => ["FFFFCC", "1597FE"] do 
	 	row(0).border_width = 2
	 	row(0).font_style = :bold
 	end


pdf.move_down 30

pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
	count = pdf.page_count
	pdf.text "Page #{count}"
end

pdf.font_size 14
pdf.text "Below you can find your order details.", :align=> :center
pdf.move_down 20

pdf.font_size 12
pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum velit id tellus pulvinar, vitae ornare diam facilisis. Sed tempus lorem ut urna laoreet ultrices. Pellentesque tortor enim, iaculis vitae porta et, placerat sit amet est. Pellentesque dapibus nisl sit amet molestie mattis. Vestibulum convallis elit ipsum, eget pellentesque quam imperdiet ac. Vivamus laoreet nisi ac arcu ultricies faucibus. Mauris felis velit, sodales a ultricies accumsan, scelerisque ac quam. S

Vestibulum feugiat leo nec mollis scelerisque. Etiam aliquet porta bibendum. Sed et velit aliquam, pharetra sem eu, mattis nulla. Maecenas id mauris sem. Pellentesque hendrerit, nulla ultrices consectetur tempor, quam libero tempus odio, vitae fermentum leo mi ultricies metus. Maecenas condimentum magna ut sem lobortis pulvinar. Nam vitae viverra eros. Mauris maximus mauris aliquet, facilisis libero ac, sagittis odio. Aenean mattis non arcu a venenatis. Aenean vitae blandit nibh. Integer venenatis semper quam, sit amet ullamcorper erat fermentum in. Maecenas et rutrum metus. Mauris euismod, erat eu euismod lacinia, dui mauris gravida erat, vel aliquam mi tellus in nisl.

Mauris pretium, mi sit amet gravida rutrum, erat ipsum egestas massa, sed scelerisque magna ante nec felis. Praesent volutpat porta lacus, vitae ultrices lacus. Donec vel metus ultricies, condimentum lorem ut, accumsan augue. Praesent ac est tristique, placerat ipsum sit amet, vulputate metus. Morbi ornare lacinia eleifend. Mauris pretium pretium nisl eu gravida. Integer molestie fringilla massa sit amet euismod. Curabitur finibus mi eget felis semper luctus. Nullam eleifend enim in elit posuere consectetur. Aliquam in vulputate libero, tincidunt pulvinar erat. Proin volutpat eleifend tortor eu feugiat. Donec commodo lacus leo, id efficitur sapien lobortis mollis. ", :align=> :justify
pdf.move_down 30

data = [ ["Header", "A " * 5, "B"],
 ["Data row", "C", "D " * 5],
 ["Another data row", "E", "F"]]
pdf.table(data) do
 cells.padding = 12
 cells.borders = []
 row(0).borders = [:bottom]
 row(0).border_width = 2
 row(0).font_style = :bold
 columns(0..1).borders = [:right]
 row(0).columns(0..1).borders = [:bottom, :right]
end

pdf.move_down 30

data = [ ["Item", "Jan Sales", "Feb Sales"],
 ["Oven", 100, 89],
 ["Fridge", 62, 30],
 ["Microwave", 71, 47]
 ]
pdf.table(data) do
 values = cells.columns(1..-1).rows(1..-1)
 bad_sales = values.filter do |cell|
 cell.content.to_i < 40
 end
 bad_sales.background_color = "FFAAAA"
 good_sales = values.filter do |cell|
 cell.content.to_i > 70
 end
 good_sales.background_color = "AAFFAA"
end
 
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
	count = pdf.page_count
	pdf.text "Page #{count}"
end