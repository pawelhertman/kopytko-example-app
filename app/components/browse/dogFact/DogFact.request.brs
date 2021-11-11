function getRequestOptions(options as Object) as Object
  return {
    url: "https://dog-facts-api.herokuapp.com/api/v1/resources/dogs?number=1",
  }
end function

function parseResponseData(data as Object) as Object
  parsedData = CreateObject("roSGNode", "Node")
  parsedData.addFields(data[0])

  return parsedData
end function
