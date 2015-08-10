/*
 * Web driver manager
*/
'use strict';

// running on CI, but DISPLAY is NOT provided
if (process.env.CI && !process.env.DISPLAY) {
  // skip browser tests
  console.error('Running on CI but DISPLAY is NOT provided.');
  console.error('Skipping all browser tests.');
  process.exit(0);
}

var webdriver = require('selenium-webdriver');

var driver = new webdriver.Builder().withCapabilities(webdriver.Capabilities.firefox()).build();

module.exports = driver;
