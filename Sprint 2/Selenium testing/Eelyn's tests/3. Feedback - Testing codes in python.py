# -*- coding: utf-8 -*-
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
import unittest, time, re

class 3FeedbackTestingCodesInPython(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)
        self.base_url = "http://127.0.0.1:8000/"
        self.verificationErrors = []
        self.accept_next_alert = True
    
    def test_3_feedback_testing_codes_in_python(self):
        driver = self.driver
        driver.get("http://127.0.0.1:8000")
        try: self.assertEqual("Discover Brisbane", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Tell us what you think!", driver.find_element_by_xpath("//div[@id='container']/div[4]/div/div").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_xpath("//img[@alt='Feedback']").click()
        try: self.assertEqual("Feedback form", driver.find_element_by_xpath("//div[@id='topbar']/ul/li[2]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Name:", driver.find_element_by_css_selector("label.field-label > label").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("", driver.find_element_by_id("id_name").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Email:", driver.find_element_by_xpath("//div[@id='container']/div[3]/form/div[2]/label/label").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("", driver.find_element_by_id("id_email").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Message:", driver.find_element_by_xpath("//div[@id='container']/div[3]/form/div[3]/label/label").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("", driver.find_element_by_id("id_message").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        try: self.assertEqual("Submit", driver.find_element_by_css_selector("button[type=\"submit\"]").text)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_id("id_name").clear()
        driver.find_element_by_id("id_name").send_keys("Sally")
        driver.find_element_by_id("id_email").clear()
        driver.find_element_by_id("id_email").send_keys("sally@gmail.com")
        driver.find_element_by_id("id_message").clear()
        driver.find_element_by_id("id_message").send_keys("Thank you! I love it!")
        driver.find_element_by_css_selector("button[type=\"submit\"]").click()
        try: self.assertEqual("Discover Brisbane - Thank you", driver.title)
        except AssertionError as e: self.verificationErrors.append(str(e))
        driver.find_element_by_css_selector("button").click()
        for i in range(60):
            try:
                if self.is_element_present(By.CSS_SELECTOR, "h1"): break
            except: pass
            time.sleep(1)
        else: self.fail("time out")
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
