App.HTMLEditor =
  initialize: ->
    $(".html-area").each ->
      # TODO: doesn't work when adding / updating invalid translation data
      if $(this).hasClass("admin")
        CKEDITOR.inline(this.name, language: $("html").attr("lang"), toolbar: "admin")
      else
        CKEDITOR.inline(this.name, language: $("html").attr("lang"))
