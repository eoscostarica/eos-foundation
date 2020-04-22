// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require rails.validations.simple_form
//= require_tree .

$(function(){ $(document).foundation() })

// import { UALJs } from 'ual-plainjs-renderer'
// import { Scatter } from 'ual-scatter'
// import { Lynx } from 'ual-lynx'

const myCallback = arrayOfUsers => {
  // Execute on successful user authentication
}



const EOSMainnet = {
  chainId: 'aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906',
  rpcEndpoints: [{
    protocol: "https",
    host: "api.eosn.io",
    port: 443,
  }]
}

const myAppName = 'EOS Foundation Registration'

const scatter = new Scatter([myChain], { appName: myAppName })
const lynx = new Lynx([myChain], { appName: myAppName })

const myAppRoot = {
  containerElement: document.getElementById('eos-foundation-ual')
}

const ual = new UALJs(myCallback, [myChain], myAppName, [scatter, lynx], myAppRoot)

ual.init()

addTransferButtonEventListener()

function addTransferButtonEventListener() {
  const transferButton = document.getElementById('btn-transfer')

  transferButton.addEventListener('click', async () => {
  	console.log("click")
    // Update our demo transaction to use the logged in user
    const userAccountName = await loggedInUser.getAccountName()
    demoTransaction.actions[0].authorization[0].actor = userAccountName
    demoTransaction.actions[0].data.from = userAccountName

    loggedInUser.signTransaction(
      demoTransaction,
      { broadcast: true }
    )
  })
}

// addLogoutButtonListener()

// function addLogoutButtonListener() {
//   const logoutButton = document.getElementById('btn-logout')

//   logoutButton.addEventListener('click', async () => {
//     clearInterval(balanceUpdateInterval)

//     const transferDiv = document.getElementById('div-transfer')
//     transferDiv.style.display = 'none'

//     ual.logoutUser()
//   })
// }
