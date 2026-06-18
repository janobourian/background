#!/bin/bash

logger "Messages"
logger -p local10.info "Message"
logger -s -p local10.info "Message"
logger -t myscript -p local10.info "Message"
logger -i -t myscript "Message"