Marionette = require('backbone.marionette')

class Page extends Marionette.LayoutView
  transition: 'slide'
  className: 'page'

  canGoBack: ->
    @_parent.canGoBack()

  transitionBack: (route, options = {}) ->
    options.transition ||= @transition
    @_parent.goBack(route, options)

  transitionHome: (route, transition) ->
    @_parent.goHome(route, transition ||= @transition)

module.exports = Page
