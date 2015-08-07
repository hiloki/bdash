/**
 * It is written with JavaScript Standard Style
 * https://github.com/feross/standard
 */
!(function () {

  var message =  {
    join: {
      text: 'Are you interesed in this code ? => github()',
      style: 'font-weight: bold; color: #44525a; font-size: 14px;'
    },
    code: {
      text: 'Are you interesed in us ? =>  join()',
      style: 'font-weight: bold; color: #44525a; font-size: 14px; background-image: url("http://www.emoji-cheat-sheet.com/graphics/emojis/octocat.png"); background-size: cover'
    }
  }

  console.log('%c' + message.code.text + ' %c %c', message.code.style)
  console.log('%c ' + message.join.text, message.join.style)
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
