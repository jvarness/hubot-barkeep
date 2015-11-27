## hubot-untappd

Enables hubot to suggest a beer for your next night on the town.

See [`src/beer-me.coffee`](src/beer-me.coffee) for full documentation.

## Build and Static Analysis

[![Build Status](https://travis-ci.org/jvarness/hubot-untappd.svg)](https://travis-ci.org/jvarness/hubot-untappd)
[![Codacy Badge](https://api.codacy.com/project/badge/grade/c992d17ac4664e6d913aefe9fe1cd072)](https://www.codacy.com/app/jvarness/hubot-untappd)

## Installation

In hubot project repo, run:

`npm install hubot-untappd --save`

Then add **hubot-untappd** to your `external-scripts.json`:

```json
[
  "hubot-untappd"
]
```

## Configuration

The following configuration is required in order to run the yelp script:

```coffeescript
HUBOT_UNTAPPD_CLIENT_ID       # The Untappd API client ID
HUBOT_UNTAPPD_CLIENT_SECRET   # The Untappd API client secret
```

All of these should be configured using the API keys given to you when you signed up for an Untappd Developer API account.

## Sample Interaction

The hubot-untappd package gives your hubot the ability to search for new and exciting beers to try next time you go out. For example,
if you're a fan of stout, ask your bot to beer you some stout by typing `hubot beer me stout`:

```
<You> hubot beer me stout
<hubot> Give this beer a try:
<hubot> Oskar Blues Brewery Ten FIDY
<hubot> Stout - American Imperial / Double
<hubot> This titanic, immensely viscous stout is loaded with inimitable flavors of chocolate-covered caramel and coffee and hide a hefty 98 IBUs underneath the smooth blanket of malt. It is made with enormous amounts of two-row malt, chocolate malt, roasted barley, flaked oats and hops.
```

Mmmmm... Titanic **AND** viscous.

Let's say that *types* of beer aren't really your style and you just like beers from certain *breweries*. The Untappd API allows 
you to search for beer based on a brewery or a beer type. Try replacing `stout` with `boulevard`:

```
<You> hubot beer me boulevard
<hubot> Give this beer a try:
<hubot> Boulevard Brewing Co. Double-Wide I.P.A.
<hubot> IPA - Imperial / Double
<hubot> The classic India Pale Ale is a traveler’s beer, aggressively hopped to withstand the long, hot ocean voyage to the British East Indies. Our Double-Wide I.P.A. also travels well, and is right at home in the most exotic ports of call of the Midwest. While this modern-day prairie schooner may not resemble a graceful sailing sloop, our liberal hopping regimen does make her virtually “twister-proof,” with toffee and caramel notes balancing out the lingering bitterness. Enjoy this beer fresh to best appreciate the complex blending of hop aromas, ranging from minty to citrusy, with subtle hints of pine.
```

Not really a fan of IPAs, but that'll do I guess.

Untappd will get upset if you don't provide it a term or if you provide it a term that it doesn't recognize:

```
<You> hubot beer me asdljfkhsdlkjfh
<hubot> Couldn't find a beer for you. Try again.
<You> hubot beer me
<hubot> Error occurred: 500 error text: You didn't search for anything! Please try again.
```

Just be sure to provide the script a term it can use to search with and everything will be ok.

## Powered by

[![Untappd](./img/pbu_80_yellow.png)](http://untappd.com)

[![CoffeeScript](http://coffeescript.org/documentation/images/logo.png)](http://coffeescript.org/)

[Hubot](https://hubot.github.com/)