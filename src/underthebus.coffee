# Description
#   Sometimes you need to quickly redirect blame
#
# Commands:
#   <text> under the bus <text> - responds with image
#
# Author:
#   Nick Peelman <nick@peelman.us>

module.exports = (robot) ->
  robot.hear /.*(under the bus).*/i, (msg) ->
    msg.send('http://i.imgur.com/1tph6Wf.jpg')
