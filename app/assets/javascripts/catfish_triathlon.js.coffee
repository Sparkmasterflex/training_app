window.CatfishTriathlon =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    this.render_layout()

  render_layout: () ->
    this.layout = new CatfishTriathlon.Views.Layout
      el: $('#app')
    this.layout.render().el


$(document).ready ->
  unless $('body').data('user') is "0"
    CatfishTriathlon.user = new CatfishTriathlon.Models.User id: $('body').data('user')
    CatfishTriathlon.user.fetch
      success: (user) -> CatfishTriathlon.initialize()
      error: -> console.log "Epic Fail"
