const { locator } = require('@qavajs/steps-playwright/po.js');

module.exports = class QavaDocsWhatsNewInV2Page {
    selector = 'body';

    Heading = locator('css=h1');
}
