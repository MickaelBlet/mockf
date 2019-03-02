##
## Author: Mickaël BLET
##

VERSION				=	1.0.0

NAME				=	mock_libc
BINARY_NAME			=	mock_libc
LIBRARY_NAME		=	mock_libc
BINARY_DIRECTORY	=	./bin/
LIBRARY_DIRECTORY	=	./lib/
SOURCE_DIRECTORY	=	./src/
TEST_DIRECTORY		=	./test/
INCLUDE_DIRECTORY	=	./include/
OBJECT_DIRECTORY	=	./obj/
SOURCE_EXTENTION	=	.cpp

BINARY_EXCLUDE_SOURCE	= 
LIBRARY_EXCLUDE_SOURCE	=
TEST_EXCLUDE_SOURCE		=

COMPILER			=	clang++
VARIABLES			=	VERSION=\"$(VERSION)\"
COMMON_FLAGS		=	-std=c++11
DEBUG_FLAGS			=	-ggdb -Wall -Wextra
RELEASE_FLAGS		=	-O2 -Wall -Wextra -Werror
TEST_FLAGS			=	-std=c++11 -ggdb -Wall -Wextra

DEBUG_ARCHIVES		=
RELEASE_ARCHIVES	=

# local libraries (example: -lpthread)
DEBUG_LIBRARIES		=
RELEASE_LIBRARIES	=
TEST_LIBRARIES		=

include ./module.mk

exe_test:	test
	$(BINARY_DIRECTORY)$(BINARY_NAME)-test

fclean:
	$(RM) -r \
	$(OBJECT_DIRECTORY) \
	$(BINARY_DIRECTORY) \
	$(LIBRARY_DIRECTORY)

PHONY: exe_test fclean