package com.askomdch.runner;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/java/com.askomdch/features"},
        glue = {"com/askomdch/step_definitions", "com/askomdch/hooks"},
        dryRun = false,
        tags = "@regression",
        plugin ={"pretty", "junit:target/surefire-reports/regressionReport.xml",
                "json:target/surefire-reports/regressionReport.json",
                "html:target/surefire-reports/regressionReport.html"}

)
public class RegressionRunner {

}
