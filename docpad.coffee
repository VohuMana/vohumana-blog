# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    templateData:
        site:
            title: "David James"
            
        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
        
    collections:
       pages: ->
           @getCollection("html").findAllLive({isPage:true})
       posts: ->
           @getCollection("html").findAllLive({isPost:true},[{date:1}])
       topPost: ->
           @getCollection("html").findOne({isPost:true},[{date:1}])
}

# Export the DocPad Configuration
module.exports = docpadConfig