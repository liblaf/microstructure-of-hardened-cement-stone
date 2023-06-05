MAKEFLAGS += --jobs

ASSETS     := $(CURDIR)/assets
SEM_DATA   := $(CURDIR)/电镜数据_20230511
TARGET_PDF := $(CURDIR)/microstructure-of-hardened-cement-stone.pdf

# {粉煤灰}-(un)polished-{Mag}-{Det}.{png|tif}
SEM_IMAGE_LIST += $(ASSETS)/00-polished-02000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-05000x-ETD.png
# SEM_IMAGE_LIST += $(ASSETS)/00-polished-02000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-10000x-ETD.png
# SEM_IMAGE_LIST += $(ASSETS)/00-polished-00500x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-00500x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-unpolished-05000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-unpolished-10000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-unpolished-02000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/15-unpolished-04000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/15-unpolished-10000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/15-unpolished-20000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/15-unpolished-01000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/30-unpolished-01000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/30-unpolished-03000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/30-unpolished-10000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/30-unpolished-30000x-ETD.png
# SEM_IMAGE_LIST += $(ASSETS)/30-unpolished-60000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/30-unpolished-60000x-ETD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-10000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-04788x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-02000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/00-polished-02500x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/15-polished-05000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/15-polished-10000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/15-polished-01000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/30-polished-10000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/30-polished-05000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/30-polished-01000x-PMD.png
SEM_IMAGE_LIST += $(ASSETS)/30-polished-00200x-PMD.png

TEX_LIST   := $(wildcard $(CURDIR)/*.tex)

ARCHIVE_FILE_LIST += $(SEM_IMAGE_LIST)
ARCHIVE_FILE_LIST += $(TEX_LIST)
ARCHIVE_FILE_LIST += $(TARGET_PDF)
ARCHIVE_FILE_LIST += $(CURDIR)/Makefile

all: $(SEM_IMAGE_LIST)

archive: $(CURDIR)/archive.zip

clean:
	$(RM) --recursive $(ASSETS)

ALWAYS:

$(ASSETS):
	@ mkdir --parents --verbose $@

$(ASSETS)/00-polished-02000x-ETD.png: $(SEM_DATA)/0-1.tif | $(ASSETS)
$(ASSETS)/00-polished-05000x-ETD.png: $(SEM_DATA)/0-2.tif | $(ASSETS)
# $(ASSETS)/00-polished-02000x-ETD.png: $(SEM_DATA)/0-2_001.tif | $(ASSETS)
$(ASSETS)/00-polished-10000x-ETD.png: $(SEM_DATA)/0-3.tif | $(ASSETS)
# $(ASSETS)/00-polished-00500x-ETD.png: $(SEM_DATA)/0-3_001.tif | $(ASSETS)
$(ASSETS)/00-polished-00500x-ETD.png: $(SEM_DATA)/0-4.tif | $(ASSETS)
$(ASSETS)/00-unpolished-05000x-ETD.png: $(SEM_DATA)/0-5.tif | $(ASSETS)
$(ASSETS)/00-unpolished-10000x-ETD.png: $(SEM_DATA)/0-6.tif | $(ASSETS)
$(ASSETS)/00-unpolished-02000x-ETD.png: $(SEM_DATA)/0-7.tif | $(ASSETS)
$(ASSETS)/15-unpolished-04000x-ETD.png: $(SEM_DATA)/15-1.tif | $(ASSETS)
$(ASSETS)/15-unpolished-10000x-ETD.png: $(SEM_DATA)/15-2.tif | $(ASSETS)
$(ASSETS)/15-unpolished-20000x-ETD.png: $(SEM_DATA)/15-3.tif | $(ASSETS)
$(ASSETS)/15-unpolished-01000x-ETD.png: $(SEM_DATA)/15-4.tif | $(ASSETS)
$(ASSETS)/30-unpolished-01000x-ETD.png: $(SEM_DATA)/30-1_001.tif | $(ASSETS)
$(ASSETS)/30-unpolished-03000x-ETD.png: $(SEM_DATA)/30-2_002.tif | $(ASSETS)
$(ASSETS)/30-unpolished-10000x-ETD.png: $(SEM_DATA)/30-3_003.tif | $(ASSETS)
$(ASSETS)/30-unpolished-30000x-ETD.png: $(SEM_DATA)/30-4_004.tif | $(ASSETS)
# $(ASSETS)/30-unpolished-60000x-ETD.png: $(SEM_DATA)/30-5_005.tif | $(ASSETS)
$(ASSETS)/30-unpolished-60000x-ETD.png: $(SEM_DATA)/30-6_006.tif | $(ASSETS)
$(ASSETS)/00-polished-10000x-PMD.png: $(SEM_DATA)/C-BSE_0-1.tif | $(ASSETS)
$(ASSETS)/00-polished-04788x-PMD.png: $(SEM_DATA)/C-BSE_0-2.tif | $(ASSETS)
$(ASSETS)/00-polished-02000x-PMD.png: $(SEM_DATA)/C-BSE_0-3.tif | $(ASSETS)
$(ASSETS)/00-polished-02500x-PMD.png: $(SEM_DATA)/C-BSE_006.tif | $(ASSETS)
$(ASSETS)/15-polished-05000x-PMD.png: $(SEM_DATA)/C-BSE_15-1.tif | $(ASSETS)
$(ASSETS)/15-polished-10000x-PMD.png: $(SEM_DATA)/C-BSE_15-2.tif | $(ASSETS)
$(ASSETS)/15-polished-01000x-PMD.png: $(SEM_DATA)/C-BSE_15-3.tif | $(ASSETS)
$(ASSETS)/30-polished-10000x-PMD.png: $(SEM_DATA)/C-BSE_30-1_001.tif | $(ASSETS)
$(ASSETS)/30-polished-05000x-PMD.png: $(SEM_DATA)/C-BSE_30-2.tif | $(ASSETS)
$(ASSETS)/30-polished-01000x-PMD.png: $(SEM_DATA)/C-BSE_30-3_001.tif | $(ASSETS)
$(ASSETS)/30-polished-00200x-PMD.png: $(SEM_DATA)/C-BSE_30-4_002.tif | $(ASSETS)

$(CURDIR)/archive.zip: $(ARCHIVE_FILE_LIST)
	zip --from-crlf --recurse-paths --update $@ $^

$(CURDIR)/%.pdf: $(CURDIR)/%.tex ALWAYS
	latexmk -xelatex -file-line-error -interaction=nonstopmode -shell-escape $<

$(SEM_IMAGE_LIST):
	magick convert $< $@

$(TARGET_PDF): $(CURDIR)/main.pdf
	@ install -D --mode="u=rw,go=r" --no-target-directory --verbose $< $@
