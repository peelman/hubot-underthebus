# Description
#   Sometimes you need to quickly redirect blame
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Nick Peelman <nick@peelman.us>

module.exports = (robot) ->
  robot.hear /.*(under the bus).*/i, (msg) ->
    msg.send('http://i.imgur.com/1tph6Wf.jpg')
