const { locator } = require("@qavajs/steps-playwright/po.js");
const QavaHomePage = require("./QavaHomePage");
const QavaDocsIntroPage = require("./QavaDocsIntroPage");
const QavaDocsWhatsNewInV2Page = require("./QavaDocsWhatsNewInV2Page");

module.exports = class App {
  // Standard programmatic mappings
  QavaHomePage = locator.as(QavaHomePage);
  QavaDocsIntroPage = locator.as(QavaDocsIntroPage);
  QavaDocsWhatsNewInV2Page = locator.as(QavaDocsWhatsNewInV2Page);

  // Human-friendly aliases used in feature files (match spacing and wording)
  ['Qava Docs Intro Page'] = locator.as(QavaDocsIntroPage);
  ['Qava Docs Whats New In V2 Page'] = locator.as(QavaDocsWhatsNewInV2Page);
}
