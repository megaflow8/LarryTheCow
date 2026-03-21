# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Sub-meta package for the applications of GNOME"
HOMEPAGE="https://www.gnome.org/"

S="${WORKDIR}"

LICENSE="metapackage"
SLOT="3.0"
KEYWORDS="~amd64"

IUSE="flatpak"

# Note to developers:
# This is a wrapper for the extra apps integrated with GNOME
# Keep pkg order within a USE flag as upstream releng versions file
# TODO: Replace cheese with Snapshot once we have it packaged
DEPEND=""
RDEPEND="
	>=gnome-base/gnome-core-libs-${PV}

	sys-apps/baobab

	app-arch/file-roller
	gnome-extra/gnome-calculator
	gnome-extra/gnome-calendar
	gnome-extra/gnome-weather
	gnome-extra/gnome-logs
	gnome-base/dconf-editor
	gnome-extra/gnome-tweaks

	x11-themes/MoreWaita
	x11-themes/adw-gtk3
	app-arch/unzip
	gnome-extra/gnome-shell-extension-gsconnect
	gnome-extra/gnome-shell-extension-appindicator
	flatpak? ( gnome-extra/gnome-software[flatpak] )

"
BDEPEND=""
