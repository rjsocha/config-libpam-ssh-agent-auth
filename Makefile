all:
	[ -d build ] || mkdir build
	rsync -aq --delete src/ build/
	dpkg-deb --root-owner-group --build build .
clean:
	[ -d build ]] && rm -rf build/
