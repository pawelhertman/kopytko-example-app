' @import /components/router/Router.facade.brs from @dazn/kopytko-framework
' @import /components/store/Store.facade.brs from @dazn/kopytko-framework
' @import /components/App.routing.brs
sub constructor()
  _initializeGlobalServices()

  m._router = RouterFacade()
  m._store = StoreFacade()

  m._store.set("detailsNumber", -1)
end sub

sub componentDidMount()
  m.routerOutlet.setFocus(true)
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
  if (NOT press) then return false

  if (key = "back")
    return m._router.back()
  end if

  return false
end function

sub _initializeGlobalServices()
  router = CreateObject("roSGNode", "Router")
  router.routing = getAppRouting()
end sub
