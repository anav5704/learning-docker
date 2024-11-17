#!/usr/bin/env bash

server() {
    echo "Server running at http://localhost:5000"

    message=$(echo "<html><body><p>Hello! Today's date is $(date).</p></body></html>")

    length=$(wc -c <<< "$message")
    payload="\
    HTTP/1.1 200 OK
    Content-Length: $((length-1))

    $message"
    while true
        do echo -ne "$payload" | nc -l -p 5000
    done
}

server
