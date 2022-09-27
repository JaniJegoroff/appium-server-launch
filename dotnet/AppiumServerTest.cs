using NUnit.Framework;
using OpenQA.Selenium.Appium.Service;
using Shouldly;

namespace Appium.ServerLaunchTests
{
    [TestFixture]
    public class AppiumServerLaunchTest
    {
        private AppiumLocalService _server = default!;

        [OneTimeSetUp]
        public void BeforeAll()
        {
            _server = AppiumLocalService.BuildDefaultService();
            _server.Start();
        }

        [OneTimeTearDown]
        public void AfterAll()
        {
            _server.Dispose();
        }

        [Test]
        public void TestIsRunning()
        {
            _server.IsRunning.ShouldBeTrue();
        }

        [Test]
        public void TestHttpStatusCode()
        {
            var defaultUrl = "http://localhost:4723/wd/hub/status";
            var httpClient = new HttpClient();
            int statusCode = (int)httpClient.GetAsync(defaultUrl).Result.StatusCode;
            statusCode.ShouldBeEquivalentTo(200);
        }
    }
}
