xml.instruct!
xml.categories do
	@categories.each do |category|
		xml.category do
			xml.name category.name
			xml.information category.information
			xml.photo image_url(category.photo.url(:thumb))
		end
	end
end