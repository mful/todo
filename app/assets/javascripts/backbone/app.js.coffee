@Todo = do (Backbone, Marionette) ->
  
  App = new Marionette.Application

  # rails-like route helpers are automatically created on the global
  # window.Routes object due to the js-routes gem
  App.rootRoute = Routes.todos_path()
  
  App.addRegions
    mainRegion: "#main-region"
    footerRegion: "#footer-region"
    infoRegion: "#info-region"
    
  # using this pattern to start modules allows us to clearly see how our
  # modules are started, in one place
  App.addInitializer ->
  	# Marionette automatically fires a 'start' event when .start is called
  	# this event should be handled in the module's top-level *_app.js.coffee
  	App.module("InfoApp").start()

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()
      @navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
  
  # options is default set to the empty hash
  App.navigate = (route, options = {}) ->
    Backbone.history.navigate route, options

  App.getCurrentRoute = ->
    Backbone.history.fragment

  App