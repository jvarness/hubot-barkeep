## hubot-barkeep

Enables hubot to suggest a beer for your next night on the town.

See [`src/beer-me.coffee`](src/beer-me.coffee) for full documentation.

## Build and Static Analysis

[![Build Status](https://travis-ci.org/jvarness/hubot-barkeep.svg)](https://travis-ci.org/jvarness/hubot-barkeep)
[![Codacy Badge](https://api.codacy.com/project/badge/grade/2a6f69093d254ab995f70123c7419f29)](https://www.codacy.com/app/jvarness/hubot-barkeep)

## Installation

In hubot project repo, run:

`npm install hubot-barkeep --save`

Then add **hubot-barkeep** to your `external-scripts.json`:

```json
[
  "hubot-barkeep"
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

The hubot-barkeep package gives your hubot the ability to search for new and exciting beers to try next time you go out. For example,
if you're a fan of stout, ask your bot to beer you some stout by typing `hubot beer me stout`:

```
<You> hubot beer me stout
<hubot> Give this beer a try:
<hubot> Stone Brewing Co. Coffee Milk Stout
<hubot> Stout - Milk / Sweet
<hubot> URL: http://www.stonebrewing.com/
```

Mmmmm... Coffee stout.

Let's say that *types* of beer aren't really your style and you just like beers from certain *breweries*. The Untappd API allows 
you to search for beer based on a brewery or a beer type. Try replacing `stout` with `boulevard`:

```
<You> hubot beer me boulevard
<hubot> Give this beer a try:
<hubot> Boulevard Brewing Co. Collaboration No. 5 - Tropical Pale Ale
<hubot> Pale Ale - American
<hubot> URL: http://www.boulevard.com/
```

Tropical Pale Ale huh? I might have to try that sometime.

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