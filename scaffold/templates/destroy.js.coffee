url = '<%%= <%= singular_name %>_path  @<%= singular_name %> %>'
line = $("a[href='#{url}']").closest('tr')
line.fadeOut 1000, ->
  line.remove()
