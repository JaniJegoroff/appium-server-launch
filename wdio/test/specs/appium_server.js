describe('Appium server', () => {
    it('should be running', async () => {
        await expect(browser).toHaveTitle('Appium/welcome');
    });
});
