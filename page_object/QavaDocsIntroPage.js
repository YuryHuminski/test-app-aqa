const { locator } = require('@qavajs/steps-playwright/po.js');

module.exports = class QavaDocsIntroPage {
    selector = 'body';

    /**
     * Left docs sidebar link.
     * NOTE: Keep it scoped to Docusaurus sidebar to avoid matching content links.
     */
    WhatsNewInV2Link = locator(`nav.menu a.menu__link:has-text("What's new in v2")`);

    /** Top navigation "Steps" dropdown */
    StepsDropdown = locator('nav.navbar .navbar__item.dropdown:has(a:has-text("Steps"))');
    StepsDropdownToggle = locator('nav.navbar .navbar__item.dropdown:has(a:has-text("Steps")) > a');
    StepsDropdownMenu = locator('nav.navbar .navbar__item.dropdown:has(a:has-text("Steps")) .dropdown__menu');
    StepsDropdownLinks = locator('nav.navbar .navbar__item.dropdown:has(a:has-text("Steps")) .dropdown__menu .dropdown__link');

    /**
     * Helper for Steps dropdown packages.
     * @param {string} packageName
     */
    stepsPackageLink = (packageName) =>
        locator(`nav.navbar .navbar__item.dropdown:has(a:has-text("Steps")) .dropdown__menu .dropdown__link:has-text("${packageName}")`);
}
