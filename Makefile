all:
	make -C cyanide
	make -C anthrax
	make -C libirecovery
	make -C syringe
	make -C doctors

clean:
	make clean -C cyanide
	make clean -C anthrax
	make clean -C libirecovery
	make clean -C syringe
	make clean -C doctors
