using System.Net.Http;
using NUnit.Framework;
using OpenQA.Selenium.Appium.Service;

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
            Assert.IsTrue(_server.IsRunning);
        }

        [Test]
        public void TestHttpStatusCode()
        {
            var defaultUrl = "http://localhost:4723/wd/hub/status";
            var httpClient = new HttpClient();
            var response = httpClient.GetAsync(defaultUrl).Result;
            Assert.That((int)response.StatusCode, Is.EqualTo(200));
        }
    }
}
