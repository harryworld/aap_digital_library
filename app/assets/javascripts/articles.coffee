$ ->
  $('select').select2
    theme: 'classic'
  $('#article_country_id').select2
    tags: true,
    placeholder: "No country",
    allowClear: true
  $('#article_author_id').select2
    tags: true,
    placeholder: "No author",
    allowClear: true

  $('.search-result').hover ->
    $(this).children('div').children('.search-result-title').toggleClass('active')
  $('.search-result').on 'click', ->
    linkTo = '/articles/' + $(this).data('articleId')
    window.location.href = linkTo