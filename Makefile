.PHONY: clean
.PHONY: build
.PHONY: run

SDK_HOME="Your PlaydateSDK path"
SIM="Playdate Simulator"

build: Source/main.lua
	$(SDK_HOME)/bin/pdc Source target.pdx

clean:
	rm -rf target.pdx

run: clean build
	$(SDK_HOME)/bin/$(SIM).app/Contents/MacOS/$(SIM) target.pdx

