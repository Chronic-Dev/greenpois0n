all:
	mkdir -p ./staging
	
	make -C cyanide
	mkdir -p ./staging/cyanide
	cp -R ./cyanide/payloads ./staging/cyanide/payloads
	
	make -C anthrax
	mkdir -p ./staging/anthrax
	cp ./anthrax/template.dmg ./staging/anthrax/ramdisk.dmg
	
	make -C libirecovery
	mkdir -p ./staging/libirecovery
	cp libirecovery/libirecovery.a ./staging/libirecovery/libirecovery.a
	
	make -C syringe
	mkdir -p ./staging/syringe
	cp syringe/libpois0n/libpois0n.a ./staging/syringe/libpois0n.a
	cp syringe/syringe/injectpois0n ./staging/injectpois0n
	
	make -C doctors
	mkdir -p ./staging/doctor

clean:
	make clean -C cyanide
	make clean -C anthrax
	make clean -C libirecovery
	make clean -C syringe
	make clean -C doctors
	rm -rf ./staging
