import os
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
import selenium.webdriver
import selenium.webdriver.firefox.service

firefox_bin = "/snap/firefox/current/usr/lib/firefox/firefox"
firefoxdriver_bin = "/snap/firefox/current/usr/lib/firefox/geckodriver"
options = selenium.webdriver.firefox.options.Options()
options.binary_location = firefox_bin

driver = webdriver.Firefox(options=options)

driver.get("file:///home/adam/git/midi-ch-aef/index.html")

dBtnIds = ['easyBtn', 'mediBtn', 'hardBtn']

# For each song
midiFolder = 'midis'
for midiFile in os.listdir(midiFolder):

    aPath = os.path.abspath(os.sep.join([midiFolder, midiFile]))
    if(os.path.isfile(aPath)):

        # Upload song
        file_input = driver.find_element(By.CSS_SELECTOR, "input[type='file']")
        file_input.send_keys(aPath)

        # Click some buttons
        for bId in dBtnIds:
            driver.find_element(By.ID, bId).click()
            time.sleep(1)
            driver.find_element(By.ID, 'rechartBtn').click()
            time.sleep(1)
            driver.find_element(By.ID, 'blob').click()
            time.sleep(2)

input("Press Enter to continue...")

driver.close()