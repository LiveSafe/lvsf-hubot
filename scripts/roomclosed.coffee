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
    if not this.isClosed(room)
      @closedRooms.push room.toLowerCase()

  open: (room) -> 
    if this.isClosed(room)
      @closedRooms = @closedRooms.filter (e) -> e != room.toLowerCase()

  rooms: ->
    @closedRooms




module.exports = (robot) ->

  roomManager = new SimpleRoomManager
  #roomManager = new PersistentRoomManager robot

  robot.respond /close room/i, (msg) ->
    room = msg.message.room
    roomManager.close(room)
    msg.send "This room is now closed"

  robot.respond /open room/i, (msg) ->
    room = msg.message.room
    roomManager.open(room)
    msg.send "This room is now open"

  robot.hear /^.+/i, (msg) ->
    room = msg.message.room
    if roomManager.isClosed(room)
      msg.send "Hey @" + msg.user + " this room is closed"

