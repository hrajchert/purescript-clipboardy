const clipboardy = require('clipboardy');

exports._read = function () {
  return clipboardy.read();
};

exports._write = function (val) {
  return clipboardy.write(val);
};

exports._readSync = function () {
  return clipboardy.readSync();
};

exports._writeSync = function (val) {
  return clipboardy.writeSync(val);
};
