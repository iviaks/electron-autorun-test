const path = require('path');
const { BrowserWindow, app } = require('electron');

const initialize = async () => {
  mainWindow = new BrowserWindow({
    width: 800,
    height: 800,
    title: 'Test application',
  });

  // Open dev tools
  // mainWindow.webContents.openDevTools();

  // Render HTML file
  mainWindow.loadFile(path.resolve(__dirname, 'index.html'));
};

app.on('ready', initialize);
