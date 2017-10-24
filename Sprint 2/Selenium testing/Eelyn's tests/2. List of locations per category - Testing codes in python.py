# -*- coding: utf-8 -*-
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
import unittest, time, re

class 2ListOfLocationsPerCategoryTestingCodesInPython(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)
        self.base_url = "http://127.0.0.1:8000/"
        self.verificationErrors = []
        self.accept_next_alert = True
    
    def test_2_list_of_locations_per_category_testing_codes_in_python(self):
        driver = self.driver
        driver.get("http://127.0.0.1:8000/")
        try: self.assertEqual("Discover Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("General Information", driver.find_element_by_css_selector("h2").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Parks", driver.find_element_by_css_selector("div.box-text").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_css_selector("img.image").click()
        try: self.assertEqual("Parks", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Discover Brisbane - Parks in Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Zoos", driver.find_element_by_css_selector("div.categories-right > div.box-text").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_css_selector("div.categories-right > a > img.image").click()
        try: self.assertEqual("Discover Brisbane - Zoos in Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Zoos", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Museums", driver.find_element_by_xpath("//div[@id='container']/div[2]/div[3]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Museums']").click()
        try: self.assertEqual("Discover Brisbane - Museums in Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Museums", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Restaurants", driver.find_element_by_xpath("//div[@id='container']/div[2]/div[4]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Restaurants']").click()
        try: self.assertEqual("Discover Brisbane - Restaurants in Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Restaurants", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Malls", driver.find_element_by_xpath("//div[@id='container']/div[2]/div[5]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Malls']").click()
        try: self.assertEqual("Malls", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Colleges", driver.find_element_by_xpath("//div[@id='container']/div[3]/div/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Colleges']").click()
        try: self.assertEqual("Colleges", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Libraries", driver.find_element_by_xpath("//div[@id='container']/div[3]/div[2]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Libraries']").click()
        try: self.assertEqual("Libraries", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Industries", driver.find_element_by_xpath("//div[@id='container']/div[3]/div[3]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Industries']").click()
        try: self.assertEqual("Industries", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Discover Brisbane - Industries in Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Hotels", driver.find_element_by_xpath("//div[@id='container']/div[3]/div[4]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Hotels']").click()
        try: self.assertEqual("Discover Brisbane - Hotels in Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Hotels", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Home").click()
    
    def is_element_present(self, how, what):
        try: self.driver.find_element(by=how, value=what)
        except NoSuchElementException as e: return False
        return True
    
    def is_alert_present(self):
        try: self.driver.switch_to_alert()
        except NoAlertPresentException as e: return False
        return True
    
    def close_alert_and_get_its_text(self):
        try:
            alert = self.driver.switch_to_alert()
            alert_text = alert.text
            if self.accept_next_alert:
                alert.accept()
            else:
                alert.dismiss()
            return alert_text
        finally: self.accept_next_alert = True
    
    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verificationErrors)

if __name__ == "__main__":
    unittest.main()
