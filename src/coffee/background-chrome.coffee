chrome.extension.onMessage.addListener (request, sender, sendResponse) ->
  if request.what is 'showIcon'
    chrome.pageAction.show sender.tab.id
  true

chrome.pageAction.onClicked.addListener (tab) ->
  chrome.tabs.create
    url: "http://savedeo.com/download?url=#{encodeURI tab.url}"
