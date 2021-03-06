/**
 * It is written with JavaScript Standard Style
 * https://github.com/feross/standard
 */
!(function () {
  var styles = {
    common: 'font-weight: bold; color: #44525a; font-size: 14px;',
    emoji: function (emoji) {
      return 'background-image: url("https://isitchristmas.com/emojis/' + emoji + '.png"); background-size: cover'
    }
  }

  var messages = {
    code: 'Are you interesed in code ? --> github()',
    join: 'Are you interesed in us ? -->  join()'
  }

  console.log('%c' + messages.code + '%c  ', styles.common, styles.emoji('octocat'))
  console.log('%c' + messages.join + '%c  ', styles.common, styles.emoji('door'))


  // サイドバーメニュー
  var menu = document.querySelector('.header__menu')
  var main = document.querySelector('main')
  menu.addEventListener('click', function(e){
    e.preventDefault()
    // 属性値があれば
    if (menu.hasAttributes()) {
      var a = menu.attributes[0]
      if ( a.value == '' ) {
        menu.setAttribute(a.name, 'active')
        main.style['transform'] = 'translate3d(210px, 0px, 0px)'
      } else {
        menu.setAttribute(a.name, '')
        main.style['transform'] = ''
      }
    }
  })

}())

/**
 * Redirect recruitment page
 */
function join () {
  var message = 'Open the http://sirok.co.jp/recruit/ in 3 seconds'
  console.log('%c ' + message, 'color: #3E6DA7; background: #E4EDF4;')
  setTimeout('openRecuitmentPage()', 3000)
}

/**
 * Open page
 */
function openRecuitmentPage () {
  var recruitment_page = 'http://sirok.co.jp/recruit/'
  window.location.href = recruitment_page
}

/**
 * Redirect github page
 */
function github () {
  var message = 'Open the https://github.com/sotayamashita/bdash in 3 seconds'
  console.log('%c ' + message, 'color: #3E6DA7; background: #E4EDF4;')
  setTimeout('openGithubPage()', 3000)
}

/**
 * Open page
 */
function openGithubPage () {
  var github_page = 'https://github.com/sotayamashita/bdash'
  window.location.href = github_page
}
