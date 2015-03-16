module ApplicationHelper

	def menu_link(path, name)
		active = path == controller_name ? 'class="active"' : ''
		raw "<li #{active}><a href='/#{path}'>#{name}</a></li>"
	end

	def item_active(value)
		value ? 'Si' : 'No'
	end

	def get_gender(value)
		value ? 'Masculino' : 'Femenino'
	end
end
