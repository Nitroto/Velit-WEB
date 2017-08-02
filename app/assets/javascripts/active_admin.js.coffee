#= require active_admin/base
#= require tinymce
#= require admin_lib/init_tinymce

$(document).ready ->
  tinyMCE.init
    mode : "specific_textareas"
    theme: "modern"
    selector: "textarea:not(.mceNoEditor)"
  return