package com.test.janijegoroff.junit5;

import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;

import com.roxstudio.utils.CUrl;

import org.junit.jupiter.api.*;

import java.io.File;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class AppiumServerTest {
    private static AppiumDriverLocalService server;

    @BeforeAll
    public static void startAppiumServer() {
        AppiumServiceBuilder serviceBuilder = new AppiumServiceBuilder();
        // If defined in environment variables NODE_PATH and APPIUM_PATH
        // AppiumServiceBuilder should pick them up automatically
        serviceBuilder.usingDriverExecutable(new File("/usr/local/bin/node"));
        serviceBuilder.withAppiumJS(new File("node_modules/appium"));
        serviceBuilder.withArgument(GeneralServerFlag.BASEPATH, "/wd/hub");

        server = AppiumDriverLocalService.buildService(serviceBuilder);
        server.start();
    }

    @AfterAll
    public static void stopAppiumServer() {
        server.stop();
    }

    @Test
    public void testServerRunning() {
        assertTrue(server.isRunning());
    }

    @Test
    public void testServerRunningDefaultUrl() {
        assertEquals("http://0.0.0.0:4723/wd/hub/", server.getUrl().toString());
    }

    @Test
    public void testHttpStatusCode() {
        String statusUrl = server.getUrl() + "status".toString();
        CUrl curl = new CUrl(statusUrl);
        curl.exec();
        assertEquals(200, curl.getHttpCode());
    }
}
