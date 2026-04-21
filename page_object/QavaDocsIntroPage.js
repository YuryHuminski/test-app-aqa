const { locator } = require('@qavajs/steps-playwright/po.js');

module.exports = class QavaDocsIntroPage {
    selector = 'body';

    /**
     * Left docs sidebar link.
     * NOTE: Keep it scoped to Docusaurus sidebar to avoid matching content links.
     */
    WhatsNewInV2Link = locator(`nav.menu a.menu__link:has-text("What's new in v2")`);

    /** Top navigation "Steps" dropdown */
    StepsDropdownToggle = locator('nav.navbar a:has-text("Steps")');
    StepsDropdownMenu = locator('nav.navbar .dropdown__menu');
    StepsDropdownLinks = locator('nav.navbar .dropdown__menu .dropdown__link');

    /**
     * Helper for Steps dropdown packages.
     * @param {string} packageName
     */
    stepsPackageLink = (packageName) => locator(`nav.navbar .dropdown__menu .dropdown__link:has-text("${packageName}")`);
}
