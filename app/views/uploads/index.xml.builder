xml.instruct!
xml.uploads do
	@uploads.each do |upload|
		xml.upload do
			xml.name upload.name
			xml.logo image_url(upload.logo.url(:thumb))
		end
	end
end