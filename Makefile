.PHONY: clean
.PHONY: build
.PHONY: run

SIM="Playdate Simulator"

all: clean build

build: Source/main.lua
	${PLAYDATESDK_HOME}/bin/pdc Source target.pdx

clean:
	rm -rf target.pdx

run: all
	$(PLAYDATESDK_HOME)/bin/$(SIM).app/Contents/MacOS/$(SIM) target.pdx

