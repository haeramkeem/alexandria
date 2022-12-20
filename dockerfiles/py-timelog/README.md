# Time logger (w/ Python)

## Purpose of this image

This image logs current time to the `LOG_FILE_PATH`.

## Environment variables

1. `LOG_FILE_PATH`: Path of the file which container writes the current time. Default is `/var/log/time.log`.
2. `LOG_INTERVAL`: Time interval for log writing. Default is `1`.

## Releases

Official docker image can be found in [here](https://hub.docker.com/r/haeramkeem/py-timelog)
