# Linio Alice Automated Acceptance Tests

## Install
1. Ensure you have RVM with ruby version 2.0 or newer and bundler installed.
2. Install `PhantomJS` headless WebKit driver (for max speed and improved Chrome compatibility).
3. Install `ChromeDriver` (Optional).
4. Install `Bundler`.
5. Go to the `venture` folder and run `bundle install`.

## Run
1. Go to the folder "venture"
2. Execute cucumber: `cucumber -p LMX / LVE, etc.. for Live environment, for staging: A01-MX, etc`.

# If you want to change any configuration, edit "cucumber.yml"
1. Go to folder "venture" after "Config"
2. You can edit any variable

# We can run with Selenium Webdriver, PhantomJs or ChromeDriver
- Selenium Wendriver =  We see the browser Firefox
- PhatomJS = We don't see the browser
- ChromeDriver= We see the browser Chrome