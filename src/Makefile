# ********************************************************************** #
# This is a makefile that builds the XFST Inuktitut morphological parser #
# ********************************************************************** #


#XFST = fst -utf8
XFST = xfst #-utf8
LEXC = lexc #-utf8

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
endif

# The default compiler for Greenlandic is the commercial version fst.
# If you have xfst, the free version, go to the directory where you store
# xfst, and write the following command:
# ln -s xfst fst
# This will give a pointer from "fst" to xfst, and the transducers will compile.

# Directories:
scripts=$(GTHOME)/gt/script


# Source files
SRCS =  iku-lex.txt \
		noun-iku-lex.txt \
		verb-iku-lex.txt \
		abbr-iku-lex.txt \
		noun-iku-morph.txt \
		verb-iku-morph.txt \
		propernoun-iku-lex.txt \
		pronoun-iku-lex.txt
#	acro-iku-lex.txt \
#	punct-iku-lex.txt prt-iku-lex.txt num-iku-lex.txt 

# No strict / sloppy distinction here
#ifeq ($(TARGET), strict)
#LEX = $(patsubst %,../int/str-%,$(SRCS))
#endif
#
#ifeq ($(TARGET), sloppy)
#LEX = $(SRCS)
#endif


# We have two targets, default and strict
# The latter is restrictive.

#all: $(TARGET)

#strict: iiku.fst
#sloppy: iiku.fst 


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon iku.save

iiku.fst: ../bin/iiku.fst
../bin/iiku.fst: ../bin/iku.fst ../bin/abbr.txt ../bin/syll2lat.fst ../bin/lat2syll.fst
	@echo
	@echo "*** Building the inverse iiku.fst ***"
	@echo
	@printf "load ../bin/iku.save \n\
	invert net \n\
	save stack ../bin/iiku.fst \n\
	quit \n" > ../tmp/iiku-fst-script
	$(XFST) < ../tmp/iiku-fst-script
	@rm -f ../tmp/iiku-fst-script


# Here comes the part building the basic parser.
# **********************************************

# This goal is to build the final analyser. It depends on all the files.

iku.fst: ../bin/iku.fst
../bin/iku.fst: ../bin/iku.save ../bin/caseconv.fst
	@echo
	@echo "*** Building iku.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/iku.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/iku.fst \n\
	quit \n" > ../tmp/iku-fst-script
	$(XFST) < ../tmp/iku-fst-script
	@rm -f ../tmp/iku-fst-script


# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the script catalogue)

empty:=
comma:=,
space:=$(empty) $(empty)
ABBRSRCS=$(subst $(space),$(comma),$(SRCS))

abbr: ../bin/abbr.txt
../bin/abbr.txt: $(scripts)/abbr-extract $(scripts)/langTools/Util.pm $(SRCS)
	@echo
	@echo "*** Extracting abbreviations from abbr-iku-lex.txt to abbr.txt ***" ;
	@echo
	@perl -I $(scripts) $(scripts)/abbr-extract \
		--output=$@ \
		--abbr_lex=abbr-iku-lex.txt \
		--lex=$(ABBRSRCS)


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../tmp/caseconv-script
	$(XFST) < ../tmp/caseconv-script
	@rm -f ../tmp/caseconv-script



iku.save: ../bin/iku.save
../bin/iku.save: ../bin/xfst-iku.bin ../bin/iku-lex.save
	@echo
	@echo "*** Building the parser iku.save ***"
	@echo
	@printf "read regex [[@\"../bin/iku-lex.save\"] .o. \
	[@\"../bin/xfst-iku.bin\"]] ; \n\
	save stack ../bin/iku.save \n\
	quit \n" > ../tmp/iku-save-script
	$(XFST) < ../tmp/iku-save-script
	@rm -f ../tmp/iku-save-script


# The first goal is to build iku-lex.save
# This goal depends on a bunch of lexicon files

iku-lex.save: ../bin/iku-lex.save
../bin/iku-lex.save: $(SRCS)
	@echo
	@echo "*** Building iku-lex.save ***" ;
	@echo
	printf "compile-source $(SRCS) \n\
	save-source ../bin/iku-lex.save \n\
	quit \n" > ../tmp/iku-lex-save-script
	$(LEXC) < ../tmp/iku-lex-save-script
	@rm -f ../tmp/iku-lex-save-script


#ifeq ($(TARGET), strict)
#$(LEX): $(SRCS)
#	@echo
#	@echo "*** Making restrictive lexicon files ***"
#	@echo  
#	@grep -v 'SUB' $(patsubst ../int/str-%,%,$@) > $@
#endif

#ifeq ($(TARGET), sloppy)
#$(LEX): $(SRCS)
#endif


# Here we build xfst-iku.bin, the morphophonological component.
# This goal depends on xfst-iku.txt

xfst-iku.bin: ../bin/xfst-iku.bin
../bin/xfst-iku.bin: xfst-iku.txt
	@echo
	@echo "*** Building xfst-iku.bin ***" ;
	@echo
	@printf "source xfst-iku.txt \n\
	save stack ../bin/xfst-iku.bin \n\
	quit \n" > ../tmp/xfst-iku-script
	$(XFST) < ../tmp/xfst-iku-script
	@rm -f ../tmp/xfst-iku-script



syll2lat.fst: ../bin/syll2lat.fst
../bin/syll2lat.fst: ../bin/lat2syll.fst ../script/syll.xfst
	@echo
	@echo "*** Building the inverse syll2lat.fst ***"
	@echo
	@printf "load ../bin/lat2syll.fst \n\
	invert net \n\
	save stack ../bin/syll2lat.fst \n\
	quit \n" > ../tmp/syll2lat-fst-script
	$(XFST) < ../tmp/syll2lat-fst-script
	@rm -f ../tmp/syll2lat-fst-script



lat2syll.fst: ../bin/lat2syll.fst
../bin/lat2syll.fst: ../script/syll.xfst
	@echo
	@echo "*** Building lat2syll.fst ***" ;
	@echo
	@printf "source ../script/syll.xfst \n\
	save stack ../bin/lat2syll.fst \n\
	quit \n" > ../tmp/lat2syll-iku-script
	$(XFST) < ../tmp/lat2syll-iku-script
	@rm -f ../tmp/lat2syll-iku-script


clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save
