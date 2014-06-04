###
The MIT License (MIT)

Copyright (c) 2014 MRW Neundorf <matt@nax.me>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
###

module.exports = class Wp
  # Constants
  CONNECTED_STATUS:           'connected'
  DISCONNECTED_STATUS:        'disconnected'
  MEDIA_FOLDER:               'media'
  PICTURES_FOLDER:            'pictures'
  PORT:                       443
  TIMEOUT_SEC:                2
  TIMEOUT_USEC:               0
  WHATSAPP_CHECK_HOST:        'v.whatsapp.net/v2/exist'
  WHATSAPP_GROUP_SERVER:      'g.us'
  WHATSAPP_HOST:              'c.whatsapp.net'
  WHATSAPP_REGISTER_HOST:     'v.whatsapp.net/v2/register'
  WHATSAPP_REQUEST_HOST:      'v.whatsapp.net/v2/code'
  WHATSAPP_SERVER:            's.whatsapp.net'
  WHATSAPP_UPLOAD_HOST:       'https://mms.whatsapp.net/client/iphone/upload.php'
  WHATSAPP_DEVICE:            'Android'
  WHATSAPP_VER:               '2.11.209'
  WHATSAPP_USER_AGENT:        'WhatsApp/2.11.209 Android/4.3 Device/GalaxyS3'

  accountInfo: null
  challengeData: null
  debug: null
  event: null
  groupList: []
  identity: null
  inputKey: null
  outputKey: null
  groupId: false
  lastId: false
  loginStatus: null
  mediaFileInfo: []
  mediaQueue: []
  messageCounter: 1
  messageQueue: []
  name: null
  newMsgBind: false
  outQueue: []
  password: null
  phoneNumber: null
  reader: null
  serverReceivedId: null
  socket: null
  writer: null

  constructor: (number, identity, nickname, debug = false)->
    