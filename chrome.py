from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

# Specify the path to the ChromeDriver executable
chrome_driver_path = "C:/Tools/WebDrivers/chromedriver.exe"

# Create a ChromeOptions object
chrome_options = webdriver.ChromeOptions()

# Set the path to the ChromeDriver executable
chrome_options.binary_location = "C:/Program Files/Google/Chrome/Application/chrome.exe"

# Create a new instance of the Chrome driver, passing the chrome_options parameter
driver = webdriver.Chrome(options=chrome_options)

# Navigate to Google
driver.get("https://www.google.com")

# Find the accept button
accept_button = driver.find_element("xpath", "//button[2]")

# Click on the button
accept_button.click()

# Find the search input element
search_box = driver.find_element("name", "q")

# Type a search query
search_box.send_keys("Selenium with Python")

# Submit the form (press Enter)
search_box.send_keys(Keys.RETURN)

# Wait for a moment to see the results
time.sleep(2)

# Print the title of the search results page
print("Search Results Page Title:", driver.title)

# Close the browser
driver.quit()