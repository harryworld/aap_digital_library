########################
# Index page
########################

# Article slider
$ ->
  slidesToShow = 4
  slideToGo = 0
  currentSlide = 0
  totalSlides = 0

  $('.article-slider').slick
    slidesToShow: slidesToShow
    infinite: false
    arrows: false

  $('.article-slider-fast-back').on 'click', ->
    currentSlide = $('.article-slider').slick 'slickCurrentSlide'
    slideToGo = slideToGo - slidesToShow
    slideToGo = 0 if slideToGo < 0
    $('.article-slider').slick 'slickGoTo', slideToGo

  $('.article-slider-back').on 'click', ->
    currentSlide = $('.article-slider').slick 'slickCurrentSlide'
    slideToGo = slideToGo - 1
    slideToGo = 0 if slideToGo < 0
    $('.article-slider').slick 'slickGoTo', slideToGo

  $('.article-slider-next').on 'click', ->
    currentSlide = $('.article-slider').slick 'slickCurrentSlide'
    totalSlides = $('.article-slider').data('num-of-articles')
    slideToGo = slideToGo + 1
    slideToGo = totalSlides - 1 if slideToGo > totalSlides - 1
    $('.article-slider').slick 'slickGoTo', slideToGo

  $('.article-slider-fast-next').on 'click', ->
    currentSlide = $('.article-slider').slick 'slickCurrentSlide'
    totalSlides = $('.article-slider').data('num-of-articles') + 2
    slideToGo = slideToGo + slidesToShow
    slideToGo = totalSlides - slidesToShow if slideToGo > totalSlides - slidesToShow
    $('.article-slider').slick 'slickGoTo', slideToGo