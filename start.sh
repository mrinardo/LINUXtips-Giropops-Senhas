#!/bin/bash

redis-server --daemonize yes

flask run --host=0.0.0.0

