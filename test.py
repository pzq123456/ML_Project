# write txt file to "./logs/test.txt" just for test

import os
import time

def write_txt():
    # create folder
    if not os.path.exists("./logs"):
        os.makedirs("./logs")
    # write txt file
    with open("./logs/test.txt", "a") as f:
        f.write(time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) + "123")

if __name__ == "__main__":
    write_txt()
    