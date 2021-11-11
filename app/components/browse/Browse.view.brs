' @import /components/router/Router.facade.brs from @dazn/kopytko-framework
sub constructor()
  m._router = RouterFacade()
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
  if (NOT press) then return false

  if (key = "OK")
    m._router.navigate("/details")

    return true
  end if

  return false
end function
