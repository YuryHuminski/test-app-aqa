const { locator } = require("@qavajs/steps-playwright/po.js");
const QavaHomePage = require("./QavaHomePage");
const QavaDocsIntroPage = require("./QavaDocsIntroPage");
const QavaDocsWhatsNewInV2Page = require("./QavaDocsWhatsNewInV2Page");

module.exports = class App {
  QavaHomePage = locator.as(QavaHomePage);
  QavaDocsIntroPage = locator.as(QavaDocsIntroPage);
  QavaDocsWhatsNewInV2Page = locator.as(QavaDocsWhatsNewInV2Page);
}
