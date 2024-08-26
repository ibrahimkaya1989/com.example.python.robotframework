from selenium import webdriver
from msedge.selenium_tools import EdgeOptions, Edge

# Specify the path to the EdgeDriver executable
edge_driver_path = 'C:/Tools/WebDrivers/msedgedriver.exe'

# Create EdgeOptions object
edge_options = EdgeOptions()

# Set the path to the EdgeDriver executable
edge_options.binary_location = "C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"

# Create a new instance of the Edge driver, passing the options parameter
driver = Edge(options=edge_options)

# Now you can use the 'driver' object as usual for automation
driver.get("https://www.example.com")

# Close the browser
driver.quit()