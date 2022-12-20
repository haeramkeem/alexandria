import os
from datetime import datetime
from time import sleep

def log_to_file(content):
    with open(os.environ.get("LOG_FILE_PATH"), 'a') as file_obj:
        file_obj.write(content + '\n')

def main():
    while True:
        log_to_file("Current time: " + datetime.now().astimezone().isoformat())
        sleep(int(os.environ.get("LOG_INTERVAL")))

if __name__ == "__main__":
    main()
