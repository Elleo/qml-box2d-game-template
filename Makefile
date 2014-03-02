qml-box2d/libBox2D.so:
	cd qml-box2d && qmake && make

click-package: qml-box2d/libBox2D.so
	cp *.png click/
	cp *.desktop click/
	mkdir -p click/Box2D
	cp qmldir click/Box2D
	cp qml-box2d/libBox2D.so click/Box2D/
	cp -r src/* click/
	click build click

clean:
	cd qml-box2d && make clean


all: click-package
