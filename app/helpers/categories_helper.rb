module CategoriesHelper
	# Use with the same arguments as image_tag. Returns the same, except including
# a full path in the src URL. Useful for templates that will be rendered into
# emails etc.
def absolute_image_tag(*args)
  raw(image_tag(*args).sub /src="(.*?)"/, "src=\"#{request.protocol}#{request.host_with_port}" + '\1"')
end
def absolute_image_path(*args)
  raw(image_path(*args).sub /src="(.*?)"/, "src=\"#{request.protocol}#{request.host_with_port}" + '\1"')
end

end
