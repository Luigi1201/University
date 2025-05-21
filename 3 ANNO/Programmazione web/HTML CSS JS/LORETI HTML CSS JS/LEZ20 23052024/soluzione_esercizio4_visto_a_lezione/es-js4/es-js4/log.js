const dayjs = require("dayjs");

const myLog = function (msg) {
  console.log(msg);
};

const myLogTime = function (msg) {
  console.log(dayjs().format() + " - " + msg);
};

//module.exports = myLog;
exports.cl = myLog;
exports.clt = myLogTime;
