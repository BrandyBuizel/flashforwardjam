console.log('Begin main.js via Electron')
const { app, BrowserWindow } = require('electron')

const createWindow = () => {
  const win = new BrowserWindow({
    width: 480,
    height: 720
  })

  win.loadFile('index.html')
}

app.on('ready', () => {
//app.whenReady().then(() => {
  createWindow()
})

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit()
})