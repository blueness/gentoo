# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

SLOT="0"
DESCRIPTION="XSLT processing support"
XEMACS_PKG_CAT="standard"

RDEPEND="app-xemacs/jde
app-xemacs/cc-mode
app-xemacs/semantic
app-xemacs/cedet-common
app-xemacs/debug
app-xemacs/speedbar
app-xemacs/edit-utils
app-xemacs/xemacs-eterm
app-xemacs/mail-lib
app-xemacs/xemacs-base
app-xemacs/elib
app-xemacs/eieio
app-xemacs/sh-script
app-xemacs/fsf-compat
app-xemacs/xemacs-devel
app-xemacs/os-utils
"
KEYWORDS="~alpha amd64 ppc ppc64 ~riscv sparc x86"

inherit xemacs-packages
