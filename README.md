# hubot-underthebus

[![NPM][npm-image] ][npm-url]

[![Build status][ci-image] ][ci-url]

[npm-image]:https://nodei.co/npm/hubot-underthebus.png?downloads=true
[npm-url]:https://npmjs.com/package/hubot-underthebus
[ci-image]:https://api.travis-ci.org/peelman/hubot-underthebus.png?branch=master
[ci-url]:https://travis-ci.org/peelman/hubot-underthebus


Sometimes you need to quickly redirect blame

See [`src/underthebus.coffee`](src/underthebus.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-underthebus --save`

Then add **hubot-underthebus** to your `external-scripts.json`:

```json
[
  "hubot-underthebus"
]
```

## Sample Interaction

```
user1>> you guys are sure quick to throw somebody under the bus.
hubot>> http://i.imgur.com/1tph6Wf.jpg
```
