PKGVER = v1.000
FONTS := $(shell find $$PWD/monaspace-$(PKGVER)/fonts/otf -name '*.otf')

define PATCH_FONT
FontPatcher/font-patcher $(1) --out fonts;
endef

build:
	mkdir -p fonts
	$(foreach font,$(FONTS),$(call PATCH_FONT, $(font)))

clean:
	rm -rf fonts
