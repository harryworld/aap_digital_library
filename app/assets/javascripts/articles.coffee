$ ->
  $('select').select2
    theme: 'classic'
  $('#article_author_id').select2
    tags: true,
    placeholder: "No author",
    allowClear: true