package io.github.yangshuo.cs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"io.github.yangshuo.cs"})
public class ChargingStationApplication {

	public static void main(String[] args) {
		SpringApplication.run(ChargingStationApplication.class, args);
	}

}
