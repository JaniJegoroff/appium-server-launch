const appium = require('appium');
const { expect } = require('chai');

describe('Appium server', () => {
  before(async () => {
    const args = { base_path: '/wd/hub', allow_cors: true };
    this.server = await appium.main(args);
  });

  after(async () => {
    await this.server.close();
  });

  it('should be running', async () => {
    const res = await fetch('http://localhost:4723/wd/hub/status');
    expect(res.status).to.deep.equal(200);
  });
});
