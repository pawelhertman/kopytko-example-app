' @import /components/http/request/createRequest.brs from @dazn/kopytko-framework
sub constructor()
  m.state = {
    fact: "Loading random dog fact...",
  }

  _request = createRequest("DogFactRequest")
  _request.then(_onFetchingSuccess, _onFetchingFailure)
end sub

sub _onFetchingSuccess(data as Object)
  setState({ fact: data.fact })
end sub

sub _onFetchingFailure(error as Object)
  setState({ fact: "Response failure" })
end sub
