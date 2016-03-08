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
 
pdf.font_size 14
pdf.text "Below you can find your order details.", :align=> :center
pdf.move_down 20


invoiceinfo = [["Ime i prezime", "bilo sta"], ["Adresa", "tfdtsf"],["Broj mobitela", "dsfgasrgfarfad"]]
 
 
pdf.table invoiceinfo,
	:position => :center,
	:column_widths => { 0 => 150, 1 => 350},
	:row_colors => ["d2e3ed", "FFFFFF"]
pdf.move_down 20

pdf.font_size 12
pdf.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dictum velit id tellus pulvinar, vitae ornare diam facilisis. Sed tempus lorem ut urna laoreet ultrices. Pellentesque tortor enim, iaculis vitae porta et, placerat sit amet est. Pellentesque dapibus nisl sit amet molestie mattis. Vestibulum convallis elit ipsum, eget pellentesque quam imperdiet ac. Vivamus laoreet nisi ac arcu ultricies faucibus. Mauris felis velit, sodales a ultricies accumsan, scelerisque ac quam. S

Vestibulum feugiat leo nec mollis scelerisque. Etiam aliquet porta bibendum. Sed et velit aliquam, pharetra sem eu, mattis nulla. Maecenas id mauris sem. Pellentesque hendrerit, nulla ultrices consectetur tempor, quam libero tempus odio, vitae fermentum leo mi ultricies metus. Maecenas condimentum magna ut sem lobortis pulvinar. Nam vitae viverra eros. Mauris maximus mauris aliquet, facilisis libero ac, sagittis odio. Aenean mattis non arcu a venenatis. Aenean vitae blandit nibh. Integer venenatis semper quam, sit amet ullamcorper erat fermentum in. Maecenas et rutrum metus. Mauris euismod, erat eu euismod lacinia, dui mauris gravida erat, vel aliquam mi tellus in nisl.

Mauris pretium, mi sit amet gravida rutrum, erat ipsum egestas massa, sed scelerisque magna ante nec felis. Praesent volutpat porta lacus, vitae ultrices lacus. Donec vel metus ultricies, condimentum lorem ut, accumsan augue. Praesent ac est tristique, placerat ipsum sit amet, vulputate metus. Morbi ornare lacinia eleifend. Mauris pretium pretium nisl eu gravida. Integer molestie fringilla massa sit amet euismod. Curabitur finibus mi eget felis semper luctus. Nullam eleifend enim in elit posuere consectetur. Aliquam in vulputate libero, tincidunt pulvinar erat. Proin volutpat eleifend tortor eu feugiat. Donec commodo lacus leo, id efficitur sapien lobortis mollis.

Cras vulputate tincidunt sapien in venenatis. Donec id interdum odio. Aenean dictum pulvinar volutpat. Suspendisse condimentum libero quis tellus malesuada, ut aliquam velit placerat. In ex nunc, rhoncus eget est non, sollicitudin tincidunt augue. Aliquam at erat vitae sem tempor scelerisque. Proin ullamcorper, sem vitae semper sollicitudin, massa odio tristique lacus, quis tempus eros nisl et nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. ", :align=> :justify, :text_color =>"346842"


pdf.font_size 10
 
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
	count = pdf.page_count
	pdf.text "Page #{count}"
end