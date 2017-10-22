# config.mk - makefile configuration for sam
# copyright 2015 Rob King <jking@deadpixi.com>

# CC is the C compiler to use
CC=gcc
CFLAGS?=
CFLAGS+=-std=c99

# STANDARDS names the C preprocessor defines that need to
# be present to get a more-or-less standard compilation
# environment.
#
# Mac OS X users need to add -D_DARWIN_C_SOURCE here.
STANDARDS=-D_POSIX_C_SOURCE=200809L -D_DARWIN_C_SOURCE

# DESTDIR is the root of the installation tree
DESTDIR?=/usr/local

# BINDIR is the directory where binaries go
BINDIR?=$(DESTDIR)/bin

# MANDIR is where manual pages go
MANDIR?=$(DESTDIR)/share/man/

# Add additional include and library directories
# BSD/Mac OS X users might need to add something like
# INCLUDES=-I/usr/X11R6/include -I/usr/X11R6/include/freetype2
# LDFLAGS=-L/usr/X11R6/lib
INCLUDES=`pkg-config --cflags freetype2` -I/opt/X11/include
LDFLAGS=`pkg-config --libs freetype2` -L/opt/X11/lib

# Set this to your default remote shell.
RXPATH=/usr/bin/ssh
