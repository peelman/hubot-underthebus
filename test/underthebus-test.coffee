chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect
should = chai.should

describe 'underthebus', ->
  user =
    name: 'user'
    id: 'U123'
  robot =
    respond: sinon.spy()
    hear: sinon.spy()
    brain:
      on: (_, cb) ->
        cb()
      data: {}
      userForName: (who) ->
        forName =
          name: who
          id: 'U234'

  beforeEach ->
    @user = user
    @robot = robot
    @data = @robot.brain.data
    @msg =
      send: sinon.spy()
      reply: sinon.spy()
      envelope:
        user:
          @user
      message:
        user:
          @user

    require('../src/underthebus')(@robot)

  it 'listens for "under the bus"', ->
    expect(@robot.hear).to.have.been.calledWith(/.*(under the bus).*/i)

  it 'responds to "under the bus"', ->
    utb = @robot.hear.firstCall.args[1]
    utb(@msg)
    expect(@msg.send).to.have.been.calledWithMatch("http://i.imgur.com/1tph6Wf.jpg")
