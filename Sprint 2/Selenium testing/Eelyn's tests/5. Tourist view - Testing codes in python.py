# -*- coding: utf-8 -*-
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
import unittest, time, re

class 4TouristViewTestingCodesInPython(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)
        self.base_url = "http://127.0.0.1:8000/"
        self.verificationErrors = []
        self.accept_next_alert = True
    
    def test_4_tourist_view_testing_codes_in_python(self):
        driver = self.driver
        driver.get("http://127.0.0.1:8000")
        try: self.assertEqual("Discover Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_css_selector("button.login").click()
        driver.find_element_by_id("id_username").clear()
        driver.find_element_by_id("id_username").send_keys("asd")
        driver.find_element_by_id("id_password").clear()
        driver.find_element_by_id("id_password").send_keys("asd")
        driver.find_element_by_css_selector("button[type=\"submit\"]").click()
        try: self.assertEqual("Discover Brisbane - Business View", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Hotels", driver.find_element_by_link_text("Hotels").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Zoos", driver.find_element_by_link_text("Zoos").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Restaurants", driver.find_element_by_link_text("Restaurants").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Malls", driver.find_element_by_link_text("Malls").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Museums", driver.find_element_by_link_text("Museums").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Parks", driver.find_element_by_link_text("Parks").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Colleges in Brisbane", driver.find_element_by_link_text("Colleges in Brisbane").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Libraries in Brisbane", driver.find_element_by_link_text("Libraries in Brisbane").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Industries in Brisbane", driver.find_element_by_link_text("Industries in Brisbane").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Tell us what you think!", driver.find_element_by_link_text("Tell us what you think!").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_link_text("Hotels").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_link_text("Parks").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_link_text("Restaurants").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_link_text("Tell us what you think!").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_link_text("Industries in Brisbane").click()
        driver.find_element_by_link_text("Home").click()
        driver.find_element_by_css_selector("button.logout").click()
        try: self.assertEqual("Discover Brisbane", driver.title)
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
