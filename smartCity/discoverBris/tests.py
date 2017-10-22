from django.test import TestCase
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException

# Create your tests here.

#makes browser incognito
#option = webdriver.ChromeOptions()
#option.add_argument("--incognito")

#create new instance of chrome in incognito mode
#browser = webdriver.Chrome(executable_path=r"C:\Users\Eelyn\Desktop\chromedriver_win32\chromedriver.exe", chrome_options=option)

#go to website of interest
#browser.get("http://127.0.0.1:8000")

#wait to 10 seconds for page to load
#timeout = 10
#try:
#    WebDriverWait(browser, timeout).until(EC>visibility_of_element_located((By.XPATH, "//")))
#except TimeoutException:
#    print("Timed out waiting for page to load")
#    browser.quit()

#titles_element = browser.find.elements_by_xpath("//div[@class='categories-left']")
#titles = [x.text for x in titles_element]

#print('titles:')
#print(titles)

#------------------------------------------------------------------
#browser = webdriver.Chrome()
#browser.get("http://localhost:8000")

#assert 'Discover Brisbane' in browser.title
#print 'OK!'
#browser.quit()

#--------------------------------------------------------------------
driver = webdriver.Chrome(r'C:\Users\Eelyn\Desktop\chromedriver_win32\chromedriver.exe')  # Optional argument, if not specified will search path.
driver.get('http://localhost:8000');
time.sleep(5) # Let the user actually see something!
search_box = driver.find_element_by_name('q')
search_box.send_keys('ChromeDriver')
search_box.submit()
time.sleep(5) # Let the user actually see something!
driver.quit()
