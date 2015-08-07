/**
 * It is written with JavaScript Standard Style
 * https://github.com/feross/standard
 */
!(function () {
  console.log('Are you interesed in this code ? => ' + '%c github()', 'font-weight: bold; color: #44525a;')
  console.log('Are you interesed in us ? => ' + '%c join()', 'font-weight: bold; color: #44525a;')
}());


/**
 * Redirect recruitment page
 */
function join() {
  var message = 'Open the http://sirok.co.jp/recruit/ in new tab in 3 seconds'
  console.log('%c ' + message, 'color: #3E6DA7; background: #E4EDF4;')
  setTimeout('openRecuitmentPage()', 3000)
}

/**
 * Open page
 */
function openRecuitmentPage () {
  var recruitment_page = 'http://sirok.co.jp/recruit/'
  window.open(recruitment_page)
}
