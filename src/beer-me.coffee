# Description
#   A hubot script for the 21-and-older crowd that beers you. Powered by Untappd.
#
# Configuration:
#   HUBOT_UNTAPPD_CLIENT_ID
#   HUBOT_UNTAPPD_CLIENT_SECRET
#
# Commands:
#   hubot beer me <term> - find a random beer using a term.
#
# Author:
#   Jake Varness <jake.varness@gmail.com>

CLIENT_ID     = process.env.HUBOT_UNTAPPD_CLIENT_ID
CLIENT_SECRET = process.env.HUBOT_UNTAPPD_CLIENT_SECRET

module.exports = (robot) ->
  
  queryUntappd = (msg, term) ->
    params = {
      client_id: CLIENT_ID,
      client_secret: CLIENT_SECRET,
      q: term
    }
    
    msg.http('https://api.untappd.com/v4/search/beer').query(params).get() (err, res, body) ->
      
      response = JSON.parse(body)
      
      if err
        msg.send "Error :( #{err}"
        return
      else if res.statusCode isnt 200
        msg.send "Error occurred: #{res.statusCode} error text: #{response.meta.error_detail}"
        return
      else if response.response.beers.count > 0
        msg.send "Give this beer a try:"
        beer = msg.random response.response.beers.items
        msg.send "#{beer.brewery.brewery_name} #{beer.beer.beer_name}"
        msg.send "#{beer.beer.beer_style}"
        msg.send "URL: #{beer.brewery.contact.url}" unless !beer.brewery.contact.url
      else
        msg.send "Couldn't find a beer for you. Try again."
  
  robot.respond /beer me(.*)/i, (msg) ->
    matches = msg.match
    queryUntappd(msg, matches[1].trim())
