PORTNAME=	argc
DISTVERSIONPREFIX=	v
DISTVERSION=	1.23.0
CATEGORIES=	devel

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	Easily parse command line arguments in bash
WWW=		https://github.com/sigoden/argc

LICENSE=	APACHE20 MIT
LICENSE_COMB=	dual
LICENSE_FILE_APACHE20=	${WRKSRC}/LICENSE-APACHE
LICENSE_FILE_MIT=	${WRKSRC}/LICENSE-MIT

USES=		cargo

USE_GITHUB=	yes
GH_ACCOUNT=	sigoden

CARGO_CRATES=	aho-corasick-1.1.3 \
		anstyle-1.0.11 \
		anyhow-1.0.98 \
		assert_cmd-2.0.17 \
		assert_fs-1.1.3 \
		autocfg-1.5.0 \
		base64-0.22.1 \
		bitflags-2.9.1 \
		bstr-1.12.0 \
		cfg-if-1.0.1 \
		console-0.15.11 \
		convert_case-0.8.0 \
		crossbeam-deque-0.8.6 \
		crossbeam-epoch-0.9.18 \
		crossbeam-utils-0.8.21 \
		difflib-0.4.0 \
		dirs-6.0.0 \
		dirs-sys-0.5.0 \
		doc-comment-0.3.3 \
		either-1.15.0 \
		encode_unicode-1.0.0 \
		env_home-0.1.0 \
		equivalent-1.0.2 \
		errno-0.3.13 \
		fastrand-2.3.0 \
		float-cmp-0.10.0 \
		futures-core-0.3.31 \
		futures-macro-0.3.31 \
		futures-task-0.3.31 \
		futures-timer-3.0.3 \
		futures-util-0.3.31 \
		getrandom-0.2.16 \
		getrandom-0.3.3 \
		glob-0.3.2 \
		globset-0.4.16 \
		globwalk-0.9.1 \
		hashbrown-0.15.4 \
		hermit-abi-0.5.2 \
		ignore-0.4.23 \
		indexmap-2.10.0 \
		insta-1.43.1 \
		itoa-1.0.15 \
		libc-0.2.174 \
		libredox-0.1.4 \
		linux-raw-sys-0.9.4 \
		log-0.4.27 \
		memchr-2.7.5 \
		natord-1.0.9 \
		nom-8.0.0 \
		normalize-line-endings-0.3.0 \
		num-traits-0.2.19 \
		num_cpus-1.17.0 \
		once_cell-1.21.3 \
		option-ext-0.2.0 \
		path-absolutize-3.1.1 \
		path-dedot-3.1.1 \
		pin-project-lite-0.2.16 \
		pin-utils-0.1.0 \
		predicates-3.1.3 \
		predicates-core-1.0.9 \
		predicates-tree-1.0.12 \
		proc-macro-crate-3.3.0 \
		proc-macro2-1.0.95 \
		quote-1.0.40 \
		r-efi-5.3.0 \
		redox_users-0.5.0 \
		regex-1.11.1 \
		regex-automata-0.4.9 \
		regex-syntax-0.8.5 \
		relative-path-1.9.3 \
		roff-0.2.2 \
		rstest-0.25.0 \
		rstest_macros-0.25.0 \
		rustc_version-0.4.1 \
		rustix-1.0.7 \
		ryu-1.0.20 \
		same-file-1.0.6 \
		semver-1.0.26 \
		serde-1.0.219 \
		serde_derive-1.0.219 \
		serde_json-1.0.140 \
		shell-words-1.1.0 \
		similar-2.7.0 \
		slab-0.4.10 \
		smawk-0.3.2 \
		syn-2.0.104 \
		tempfile-3.20.0 \
		termtree-0.5.1 \
		textwrap-0.16.2 \
		thiserror-2.0.12 \
		thiserror-impl-2.0.12 \
		threadpool-1.8.1 \
		toml_datetime-0.6.11 \
		toml_edit-0.22.27 \
		unicode-ident-1.0.18 \
		unicode-linebreak-0.1.5 \
		unicode-segmentation-1.12.0 \
		unicode-width-0.2.1 \
		wait-timeout-0.2.1 \
		walkdir-2.5.0 \
		wasi-0.11.1+wasi-snapshot-preview1 \
		wasi-0.14.2+wasi-0.2.4 \
		which-8.0.0 \
		winapi-util-0.1.9 \
		windows-sys-0.59.0 \
		windows-sys-0.60.2 \
		windows-targets-0.52.6 \
		windows-targets-0.53.2 \
		windows_aarch64_gnullvm-0.52.6 \
		windows_aarch64_gnullvm-0.53.0 \
		windows_aarch64_msvc-0.52.6 \
		windows_aarch64_msvc-0.53.0 \
		windows_i686_gnu-0.52.6 \
		windows_i686_gnu-0.53.0 \
		windows_i686_gnullvm-0.52.6 \
		windows_i686_gnullvm-0.53.0 \
		windows_i686_msvc-0.52.6 \
		windows_i686_msvc-0.53.0 \
		windows_x86_64_gnu-0.52.6 \
		windows_x86_64_gnu-0.53.0 \
		windows_x86_64_gnullvm-0.52.6 \
		windows_x86_64_gnullvm-0.53.0 \
		windows_x86_64_msvc-0.52.6 \
		windows_x86_64_msvc-0.53.0 \
		winnow-0.7.11 \
		winsafe-0.0.19 \
		wit-bindgen-rt-0.39.0

PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.mk>
