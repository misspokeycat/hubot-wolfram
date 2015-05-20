appid = "8YEAX9-REUUYHH5G6"
client = require('node-wolfram')
Wolfram = new client(appid)

module.exports = (robot) ->
    robot.respond /wolphram(.*)/i, (msg) ->
    Wolfram.query "2+2", (err, result) ->
    if err?
        console.log err
    else
        for pod in result.queryresult.pod
            message.send pod.subpod.Result.plaintext[0]