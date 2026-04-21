const { locator } = require("@qavajs/steps-playwright/po.js");
const QavaHomePage = require("./QavaHomePage");
const QavaDocsIntroPage = require("./QavaDocsIntroPage");

module.exports = class App {
  QavaHomePage = locator.as(QavaHomePage);
  QavaDocsIntroPage = locator.as(QavaDocsIntroPage);
}
