# Description:
#   Let people know that a room has been deprecated and nobody
#   will be listening.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   #deprecate this room - starts warnings
#   #activate this room - stops warnings

class SimpleRoomManager
  constructor: () ->
    @closedRooms = [
        "Tech - iOS",
        "Tech - Android"
        ]

  isDeprecated: (room) ->
    room in @closedRooms

  deprecate: (room) ->
    @closedRooms.push room

  activate: (room) -> 
    @closedRooms = @closedRooms.filter (e) -> e != room

  rooms: ->
    @closedRooms




module.exports = (robot) ->

  roomManager = new SimpleRoomManager

  # The order actually matters here to prevent weird double responses when
  # either activating a deprecated room or deprecating an active room.

  robot.respond /activate this room/i, (msg) ->
    room = msg.message.room
    if roomManager.isDeprecated(room)
      roomManager.activate(room)
      msg.send "This room is now active."
    else
      msg.send "This room was already active."

  robot.hear /^.+/i, (msg) ->
    room = msg.message.room
    if roomManager.isDeprecated(room)
      msg.send "Are you lost @" + msg.user + "? This room has been deprecated."

  robot.respond /deprecate this room/i, (msg) ->
    room = msg.message.room
    if not roomManager.isDeprecated(room)
      roomManager.deprecate(room)
      msg.send "This room is now deprecated."
    else
      msg.send "This room was already deprecated."

