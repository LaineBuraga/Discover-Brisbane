# -*- coding: utf-8 -*-
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
import unittest, time, re

class SeleniumTestingHomepageCode(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)
        self.base_url = "http://127.0.0.1:8000/"
        self.verificationErrors = []
        self.accept_next_alert = True
    
    def test_selenium_testing_homepage_code(self):
        driver = self.driver
        driver.get(self.base_url + "/")
        driver.find_element_by_css_selector("img.image").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_css_selector("img.image").click()
        driver.find_element_by_link_text("City Botanic Gardens").click()
        driver.find_element_by_link_text("Park").click()
        driver.find_element_by_link_text("Brisbane Botanic Gardens Mt Coot-tha").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Museums']").click()
        driver.find_element_by_link_text("Queensland Museum & Science Centre").click()
        driver.find_element_by_link_text("Museum").click()
        driver.find_element_by_link_text("MacArthur Museum Brisbane").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Malls']").click()
        driver.find_element_by_link_text("Myer Centre, Brisbane").click()
        driver.find_element_by_link_text("Mall").click()
        driver.find_element_by_link_text("Queen Street Mall").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_css_selector("div.categories-right > a > img.image").click()
        driver.find_element_by_link_text("Australia Zoo").click()
        driver.find_element_by_link_text("Zoo").click()
        driver.find_element_by_link_text("Currumbin Wildlife Sanctuary").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Restaurants']").click()
        driver.find_element_by_link_text("Riverbar & Kitchen").click()
        driver.find_element_by_link_text("Restaurant").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Colleges']").click()
        driver.find_element_by_link_text("Queensland University of Technology").click()
        driver.find_element_by_link_text("College").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Libraries']").click()
        driver.find_element_by_link_text("Brisbane Square Library").click()
        driver.find_element_by_link_text("Library").click()
        driver.find_element_by_link_text("State Library of Queensland").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Industries']").click()
        driver.find_element_by_link_text("Brisbane City Council").click()
        driver.find_element_by_link_text("Industry").click()
        driver.find_element_by_link_text("Tourism Australia").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Hotels']").click()
        driver.find_element_by_link_text("Treasury Hotel").click()
        driver.find_element_by_link_text("Hotel").click()
        driver.find_element_by_link_text("The Sebel Quay West Brisbane").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Feedback']").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_xpath("//img[@alt='Coming Soon']").click()
        driver.find_element_by_css_selector("button.register").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_css_selector("button.login").click()
        driver.find_element_by_link_text("Home").click()
        try: self.assertEqual("Discover Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Parks", driver.find_element_by_css_selector("div.box-text").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Zoos", driver.find_element_by_css_selector("div.categories-right > div.box-text").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Museums", driver.find_element_by_xpath("//div[@id='container']/div[2]/div[3]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Restaurants", driver.find_element_by_xpath("//div[@id='container']/div[2]/div[4]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Malls", driver.find_element_by_xpath("//div[@id='container']/div[2]/div[5]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Colleges", driver.find_element_by_xpath("//div[@id='container']/div[3]/div/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Libraries", driver.find_element_by_xpath("//div[@id='container']/div[3]/div[2]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Industries", driver.find_element_by_xpath("//div[@id='container']/div[3]/div[3]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Hotels", driver.find_element_by_xpath("//div[@id='container']/div[3]/div[4]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Tell us what you think!", driver.find_element_by_xpath("//div[@id='container']/div[4]/div/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("More coming soon!", driver.find_element_by_xpath("//div[@id='container']/div[4]/div[2]/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Register", driver.find_element_by_css_selector("button.register").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Login", driver.find_element_by_css_selector("button.login").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("", driver.find_element_by_id("submit").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("", driver.find_element_by_id("search").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
    
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
