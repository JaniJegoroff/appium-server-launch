const appium = require("appium");
const chai = require("chai");

const assert = chai.assert;

describe("Appium server", () => {
  before(async () => {
    let args = { base_path: "/wd/hub", allow_cors: true };
    this.server = await appium.main(args);
  });

  after(async () => {
    await this.server.close();
  });

  it("should be running", async () => {
    const res = await fetch("http://localhost:4723/wd/hub/status");
    assert(res.status == 200);
  });
});
