const appium = require('appium')
const chai = require('chai')  

const assert = chai.assert

describe('hooks', function () {
    before(async function () {
        let args = {base_path: '/wd/hub'}
        let server = await appium.main(args)
    });
  
    after(async function () {
        await server.close()
    });
});

describe('Appium server', () => {
    it('should be running', async () => {
        assert(true)
    });
});
