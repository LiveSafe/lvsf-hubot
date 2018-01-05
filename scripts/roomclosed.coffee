# Description:
#   Let people know that nobody is paying attention.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   #close room starts warnings
#   #open room starts warnings
#


# class PersistentRoomManager
#   constructor: (@robot) ->
#     @robot.brain.on 'loaded', =>
#       @closedRooms = @robot.brain.data.closedRooms
#       @closedRooms = [] unless @closedRooms

#   isClosed: (room) ->
#     room.toLowerCase() in @closedRooms

#   close: (room) ->
#     if not isClosed(room)
#       @closedRooms.push room
#       save()

#   open: (room) -> 
#     if isClosed(room)
#       @closedRooms = @closedRooms.filter (e) -> e != room
#       save()

#   save: ->
#     @robot.brain.data.closedRooms = @closedRooms
  


class SimpleRoomManager
  constructor: () ->
    @closedRooms = [
        "tech - ios",
        "tech - android"
        ]

  isClosed: (room) ->
    room.toLowerCase() in @closedRooms

  close: (room) ->
    if not isClosed(room)
      @closedRooms.push room

  open: (room) -> 
    if isClosed(room)
      @closedRooms = @closedRooms.filter (e) -> e != room




module.exports = (robot) ->

  roomManager = new SimpleRoomManager
  #roomManager = new PersistentRoomManager robot

  robot.respond /close room/, (msg) ->
    room = msg.message.room
    roomManager.close(room)

  robot.respond /open room/, (msg) ->
    room = msg.message.room
    roomManager.open(room)

  robot.hear /*/, (msg) ->
    room = msg.message.room
    if roomManager.isClosed(room)
      msg.send "THIS ROOM IS DEPRECATED"
