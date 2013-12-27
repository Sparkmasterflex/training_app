CatfishTriathlon.Views.Layout = Backbone.View.extend
  template: JST['layout/layout']

  initialize: (options) ->
    _.bindAll this, 'render'

  render: () ->
    this.$el.html this.template(this)
    this

