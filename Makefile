all: nimobjects
	gcc main.c nimcache/*.o

clean:
	rm -rf nimcache *.o a.out

.PHONY: nimobjects
nimobjects:
	$(NIM)/bin/nim c --noLinking --os:standalone --deadCodeElim:on --noMain  --parallelBuild:1 --gcc.exe:$(GCC) --passC:"-I$(NIM)/tinyc/win32/include" --passC:"-w" --passC:"-O2" --passC:"-Wall" --passC:"-Wextra" --passC:"-ffreestanding" --passC:"-mcmodel=kernel" --threads:on   libmain.nim

