import EmbarkJs from 'Embark/EmbarkJS'
# import your contracts
# e.g if you have a contract named SimpleStorage
# import SimpleStorage from 'Embark/contracts/SimpleStorage'

class Greeter
  constructor: (@message) ->

  greet: ->
    "Hello, " + @message

EmbarkJS.onReady (error) ->
  if error
    console.error(error)
  console.log "Embark is ready"

greeter = new Greeter 'world'

button = document.createElement 'button'
button.textContent = 'Say Hello'

func = -> alert greeter.greet()
button.setAttribute 'onclick', func
button.onclick = func

document.body.appendChild button
