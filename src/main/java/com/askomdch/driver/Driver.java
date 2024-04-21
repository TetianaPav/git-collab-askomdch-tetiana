package com.askomdch.driver;
import com.askomdch.config.ConfigReader;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.safari.SafariDriver;

import java.time.Duration;

public class Driver {
    private static WebDriver driver;
    private Driver(){}

    public static WebDriver getDriver(){

        String browser = ConfigReader.getProperty("browser");

        if (driver == null){
            switch (browser){
                case "chrome":
//                    WebDriverManager.chromedriver().clearDriverCache().setup();
//                    WebDriverManager.chromedriver().clearResolutionCache().setup();
                    WebDriverManager.chromedriver().setup();
                    ChromeOptions chromeOptions = new ChromeOptions();
                    chromeOptions.addArguments("--headless");
                    WebDriverManager.chromedriver().browserVersion("124.0.6367.60").setup();
                    chromeOptions.addArguments("--window-size=1920,1080");
                    chromeOptions.addArguments("--no-sandbox");
                    chromeOptions.addArguments("--disable-dev-shm-usage");
                    driver = new ChromeDriver(chromeOptions);
                    break;
                case "firefox":
                    WebDriverManager.firefoxdriver().setup();
                    FirefoxOptions firefoxOptions = new FirefoxOptions();
                    firefoxOptions.addArguments("--headless");  // Headless mode for CI/CD environment
                    firefoxOptions.addArguments("--window-size=1920,1080");
                    driver = new FirefoxDriver(firefoxOptions);
                    break;
                case "safari":
                    driver = new SafariDriver();
                    break;
                case "edge":
                    WebDriverManager.edgedriver().setup();
                    EdgeOptions edgeOptions = new EdgeOptions();
                    edgeOptions.addArguments("--headless");  // Headless mode for CI/CD environment
                    edgeOptions.addArguments("--window-size=1920,1080");
                    driver = new EdgeDriver(edgeOptions);
                    break;
            }
            driver.manage().window().maximize();
            driver.manage().deleteAllCookies();
            driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(15));
            driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(15));
        }
        return driver;
    }

    public static void quitDriver(){
        if (driver != null){
            driver.quit();
            driver = null;
        }
    }

}