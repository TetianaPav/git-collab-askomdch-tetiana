package com.askomdch.runner;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/java/com.askomdch/features"},
        glue = {"com/askomdch/step_definitions", "com/askomdch/hooks"},
        dryRun = false,
        tags = "@smoke",
        plugin={"pretty", "junit:target/surefire-reports/smokeReport.xml",
                "json:target/surefire-reports/smokeReport.json",
                "html:target/surefire-reports/smokeReport.html"}
)
public class SmokeRunner {

}
