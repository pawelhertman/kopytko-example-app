' @import /components/common/rokuComponents/AppInfo.brs
function getRequestOptions(options as Object) as Object
  return {
    url: "https://api.api-ninjas.com/v1/facts?limit=1",
    headers: {
      "X-Api-Key": AppInfo().getValue("apiKey")
    }
  }
end function

function parseResponseData(data as Object) as Object
  parsedData = CreateObject("roSGNode", "Node")
  parsedData.addFields(data[0])

  return parsedData
end function
