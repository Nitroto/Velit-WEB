#= require active_admin/base
#= require tinymce
# require admin_lib/init_tinymce

$(document).ready ->
  tinyMCE.init
    theme: 'modern'
    selector: 'textarea#mce-editor'
  return