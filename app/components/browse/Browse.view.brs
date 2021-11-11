' @import /components/router/Router.facade.brs from @dazn/kopytko-framework
sub constructor()
  m._router = RouterFacade()
end sub

sub componentDidMount()
  m.elementToFocus = m.navigationButton
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
  if (NOT press) then return false

  if (key = "left" AND NOT m.navigationButton.isInFocusChain())
    m.navigationButton.setFocus(true)

    return true
  else if (key = "right" AND NOT m.emptyButton.isInFocusChain())
    m.emptyButton.setFocus(true)

    return true
  end if

  return false
end function

sub _onNavigationButtonSelected(event as Object)
  m._router.navigate("/details")
end sub
