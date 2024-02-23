' @import /components/rokuComponents/AppInfo.brs from @dazn/kopytko-utils
function getRequestOptions(options as Object) as Object
  return {
    url: "https://api.api-ninjas.com/v1/facts?limit=1",
    headers: {
      "X-Api-Key": AppInfo().getValue("apiKey")
    }
  }
end function

function parseResponse(response as Object) as Object
  parsedData = CreateObject("roSGNode", "Node")
  parsedData.addFields(response.raw.data[0])

  return parsedData
end function
