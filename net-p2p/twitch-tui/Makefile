PORTNAME=	twitch-tui
DISTVERSIONPREFIX=	v
DISTVERSION=	2.6.19
PORTREVISION=	2
CATEGORIES=	net-p2p

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	Twitch chat in the terminal
WWW=		https://xithrius.github.io/twitch-tui/ \
		https://github.com/Xithrius/twitch-tui

LICENSE=	APACHE20 MIT
LICENSE_COMB=	dual
LICENSE_FILE_APACHE20=	${WRKSRC}/LICENSE-APACHE
LICENSE_FILE_MIT=	${WRKSRC}/LICENSE-MIT

USES=		cargo

USE_GITHUB=	yes
GH_ACCOUNT=	Xithrius

CARGO_CRATES=	addr2line-0.21.0 \
		adler-1.0.2 \
		adler2-2.0.0 \
		aho-corasick-1.1.3 \
		aligned-vec-0.5.0 \
		allocator-api2-0.2.21 \
		android-tzdata-0.1.1 \
		android_system_properties-0.1.5 \
		anstream-0.6.18 \
		anstyle-1.0.10 \
		anstyle-parse-0.2.6 \
		anstyle-query-1.1.2 \
		anstyle-wincon-3.0.7 \
		anyhow-1.0.97 \
		arbitrary-1.4.1 \
		arg_enum_proc_macro-0.3.4 \
		arrayvec-0.7.6 \
		atomic-waker-1.1.2 \
		autocfg-1.4.0 \
		av1-grain-0.2.3 \
		avif-serialize-0.8.3 \
		backtrace-0.3.71 \
		base64-0.22.1 \
		bit_field-0.10.2 \
		bitflags-1.3.2 \
		bitflags-2.9.0 \
		bitstream-io-2.6.0 \
		built-0.7.7 \
		bumpalo-3.17.0 \
		bytemuck-1.22.0 \
		byteorder-lite-0.1.0 \
		bytes-1.10.1 \
		cassowary-0.3.0 \
		castaway-0.2.3 \
		cc-1.2.18 \
		cesu8-1.1.0 \
		cfg-expr-0.15.8 \
		cfg-if-1.0.0 \
		cfg_aliases-0.2.1 \
		chrono-0.4.40 \
		clap-4.5.35 \
		clap_builder-4.5.35 \
		clap_derive-4.5.32 \
		clap_lex-0.7.4 \
		clipboard-win-5.4.0 \
		color-eyre-0.6.3 \
		color-spantrace-0.2.1 \
		color_quant-1.1.0 \
		colorchoice-1.0.3 \
		combine-4.6.7 \
		compact_str-0.8.1 \
		console-0.15.11 \
		core-foundation-0.9.4 \
		core-foundation-0.10.0 \
		core-foundation-sys-0.8.7 \
		crc32fast-1.4.2 \
		crossbeam-deque-0.8.6 \
		crossbeam-epoch-0.9.18 \
		crossbeam-utils-0.8.21 \
		crossterm-0.28.1 \
		crossterm_winapi-0.9.1 \
		crunchy-0.2.3 \
		darling-0.20.11 \
		darling_core-0.20.11 \
		darling_macro-0.20.11 \
		deranged-0.4.1 \
		dialoguer-0.11.0 \
		displaydoc-0.2.5 \
		either-1.15.0 \
		encode_unicode-1.0.0 \
		encoding-0.2.33 \
		encoding-index-japanese-1.20141219.5 \
		encoding-index-korean-1.20141219.5 \
		encoding-index-simpchinese-1.20141219.5 \
		encoding-index-singlebyte-1.20141219.5 \
		encoding-index-tradchinese-1.20141219.5 \
		encoding_index_tests-0.1.4 \
		encoding_rs-0.8.35 \
		endian-type-0.1.2 \
		equivalent-1.0.2 \
		errno-0.3.11 \
		error-code-3.3.1 \
		exr-1.73.0 \
		eyre-0.6.12 \
		fastrand-2.3.0 \
		fd-lock-4.0.4 \
		fdeflate-0.3.7 \
		fern-0.7.1 \
		flate2-1.1.1 \
		fnv-1.0.7 \
		foldhash-0.1.5 \
		foreign-types-0.3.2 \
		foreign-types-shared-0.1.1 \
		form_urlencoded-1.2.1 \
		futures-0.3.31 \
		futures-channel-0.3.31 \
		futures-core-0.3.31 \
		futures-executor-0.3.31 \
		futures-io-0.3.31 \
		futures-macro-0.3.31 \
		futures-sink-0.3.31 \
		futures-task-0.3.31 \
		futures-util-0.3.31 \
		fuzzy-matcher-0.3.7 \
		getrandom-0.2.15 \
		getrandom-0.3.2 \
		gif-0.13.1 \
		gimli-0.28.1 \
		h2-0.4.8 \
		half-2.5.0 \
		hashbrown-0.12.3 \
		hashbrown-0.15.2 \
		heck-0.5.0 \
		hex-0.4.3 \
		home-0.5.11 \
		http-1.3.1 \
		http-body-1.0.1 \
		http-body-util-0.1.3 \
		httparse-1.10.1 \
		hyper-1.6.0 \
		hyper-rustls-0.27.5 \
		hyper-tls-0.6.0 \
		hyper-util-0.1.11 \
		iana-time-zone-0.1.63 \
		iana-time-zone-haiku-0.1.2 \
		icu_collections-1.5.0 \
		icu_locid-1.5.0 \
		icu_locid_transform-1.5.0 \
		icu_locid_transform_data-1.5.1 \
		icu_normalizer-1.5.0 \
		icu_normalizer_data-1.5.1 \
		icu_properties-1.5.1 \
		icu_properties_data-1.5.1 \
		icu_provider-1.5.0 \
		icu_provider_macros-1.5.0 \
		ident_case-1.0.1 \
		idna-1.0.3 \
		idna_adapter-1.2.0 \
		image-0.25.6 \
		image-webp-0.2.1 \
		imgref-1.11.0 \
		indenter-0.3.3 \
		indexmap-1.9.3 \
		indexmap-2.9.0 \
		indoc-2.0.6 \
		instability-0.3.7 \
		interpolate_name-0.2.4 \
		ipnet-2.11.0 \
		irc-1.1.0 \
		irc-proto-1.1.0 \
		is_terminal_polyfill-1.70.1 \
		itertools-0.12.1 \
		itertools-0.13.0 \
		itoa-1.0.15 \
		jni-0.21.1 \
		jni-sys-0.3.0 \
		jobserver-0.1.33 \
		jpeg-decoder-0.3.1 \
		js-sys-0.3.77 \
		lazy_static-1.5.0 \
		lebe-0.5.2 \
		libc-0.2.171 \
		libfuzzer-sys-0.4.9 \
		linux-raw-sys-0.4.15 \
		linux-raw-sys-0.9.3 \
		litemap-0.7.5 \
		lock_api-0.4.12 \
		log-0.4.27 \
		loop9-0.1.5 \
		lru-0.12.5 \
		maybe-rayon-0.1.1 \
		memchr-2.7.4 \
		mime-0.3.17 \
		minimal-lexical-0.2.1 \
		miniz_oxide-0.7.4 \
		miniz_oxide-0.8.7 \
		mio-1.0.3 \
		native-tls-0.2.14 \
		ndk-context-0.1.1 \
		new_debug_unreachable-1.0.6 \
		nibble_vec-0.1.0 \
		nix-0.29.0 \
		nom-7.1.3 \
		noop_proc_macro-0.3.0 \
		num-bigint-0.4.6 \
		num-conv-0.1.0 \
		num-derive-0.4.2 \
		num-integer-0.1.46 \
		num-rational-0.4.2 \
		num-traits-0.2.19 \
		objc2-0.6.0 \
		objc2-encode-4.1.0 \
		objc2-foundation-0.3.0 \
		object-0.32.2 \
		once_cell-1.21.3 \
		openssl-0.10.72 \
		openssl-macros-0.1.1 \
		openssl-probe-0.1.6 \
		openssl-sys-0.9.107 \
		owo-colors-3.5.0 \
		parking_lot-0.12.3 \
		parking_lot_core-0.9.10 \
		paste-1.0.15 \
		percent-encoding-2.3.1 \
		pin-project-1.1.10 \
		pin-project-internal-1.1.10 \
		pin-project-lite-0.2.16 \
		pin-utils-0.1.0 \
		pkg-config-0.3.32 \
		png-0.17.16 \
		powerfmt-0.2.0 \
		ppv-lite86-0.2.21 \
		proc-macro2-1.0.94 \
		profiling-1.0.16 \
		profiling-procmacros-1.0.16 \
		qoi-0.4.1 \
		quick-error-2.0.1 \
		quote-1.0.40 \
		r-efi-5.2.0 \
		radix_trie-0.2.1 \
		rand-0.8.5 \
		rand_chacha-0.3.1 \
		rand_core-0.6.4 \
		ratatui-0.29.0 \
		rav1e-0.7.1 \
		ravif-0.11.11 \
		rayon-1.10.0 \
		rayon-core-1.12.1 \
		redox_syscall-0.5.10 \
		regex-1.11.1 \
		regex-automata-0.4.9 \
		regex-syntax-0.8.5 \
		reqwest-0.12.15 \
		rgb-0.8.50 \
		ring-0.17.14 \
		rustc-demangle-0.1.24 \
		rustix-0.38.44 \
		rustix-1.0.5 \
		rustls-0.23.25 \
		rustls-pemfile-2.2.0 \
		rustls-pki-types-1.11.0 \
		rustls-webpki-0.103.1 \
		rustversion-1.0.20 \
		rustyline-15.0.0 \
		ryu-1.0.20 \
		same-file-1.0.6 \
		schannel-0.1.27 \
		scopeguard-1.2.0 \
		security-framework-2.11.1 \
		security-framework-sys-2.14.0 \
		serde-1.0.219 \
		serde_derive-1.0.219 \
		serde_json-1.0.140 \
		serde_spanned-0.6.8 \
		serde_urlencoded-0.7.1 \
		serde_with-3.12.0 \
		serde_with_macros-3.12.0 \
		sharded-slab-0.1.7 \
		shell-words-1.1.0 \
		shlex-1.3.0 \
		signal-hook-0.3.17 \
		signal-hook-mio-0.2.4 \
		signal-hook-registry-1.4.2 \
		simd-adler32-0.3.7 \
		simd_helpers-0.1.0 \
		slab-0.4.9 \
		smallvec-1.14.0 \
		smawk-0.3.2 \
		socket2-0.5.9 \
		stable_deref_trait-1.2.0 \
		static_assertions-1.1.0 \
		strsim-0.11.1 \
		strum-0.26.3 \
		strum_macros-0.26.4 \
		subtle-2.6.1 \
		syn-2.0.100 \
		sync_wrapper-1.0.2 \
		synstructure-0.13.1 \
		system-configuration-0.6.1 \
		system-configuration-sys-0.6.0 \
		system-deps-6.2.2 \
		target-lexicon-0.12.16 \
		tempfile-3.19.1 \
		textwrap-0.16.2 \
		thiserror-1.0.69 \
		thiserror-impl-1.0.69 \
		thread_local-1.1.8 \
		tiff-0.9.1 \
		time-0.3.41 \
		time-core-0.1.4 \
		time-macros-0.2.22 \
		tinystr-0.7.6 \
		tokio-1.44.2 \
		tokio-macros-2.5.0 \
		tokio-native-tls-0.3.1 \
		tokio-rustls-0.26.2 \
		tokio-stream-0.1.17 \
		tokio-util-0.7.14 \
		toml-0.7.8 \
		toml-0.8.20 \
		toml_datetime-0.6.8 \
		toml_edit-0.19.15 \
		toml_edit-0.22.24 \
		tower-0.5.2 \
		tower-layer-0.3.3 \
		tower-service-0.3.3 \
		tracing-0.1.41 \
		tracing-core-0.1.33 \
		tracing-error-0.2.1 \
		tracing-subscriber-0.3.19 \
		try-lock-0.2.5 \
		unicode-ident-1.0.18 \
		unicode-linebreak-0.1.5 \
		unicode-segmentation-1.12.0 \
		unicode-truncate-1.1.0 \
		unicode-width-0.1.14 \
		unicode-width-0.2.0 \
		untrusted-0.9.0 \
		url-2.5.4 \
		utf16_iter-1.0.5 \
		utf8_iter-1.0.4 \
		utf8parse-0.2.2 \
		v_frame-0.3.8 \
		valuable-0.1.1 \
		vcpkg-0.2.15 \
		version-compare-0.2.0 \
		walkdir-2.5.0 \
		want-0.3.1 \
		wasi-0.11.0+wasi-snapshot-preview1 \
		wasi-0.14.2+wasi-0.2.4 \
		wasm-bindgen-0.2.100 \
		wasm-bindgen-backend-0.2.100 \
		wasm-bindgen-futures-0.4.50 \
		wasm-bindgen-macro-0.2.100 \
		wasm-bindgen-macro-support-0.2.100 \
		wasm-bindgen-shared-0.2.100 \
		web-sys-0.3.77 \
		webbrowser-1.0.4 \
		weezl-0.1.8 \
		winapi-0.3.9 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-util-0.1.9 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		windows-core-0.61.0 \
		windows-implement-0.60.0 \
		windows-interface-0.59.1 \
		windows-link-0.1.1 \
		windows-registry-0.4.0 \
		windows-result-0.3.2 \
		windows-strings-0.3.1 \
		windows-strings-0.4.0 \
		windows-sys-0.45.0 \
		windows-sys-0.52.0 \
		windows-sys-0.59.0 \
		windows-targets-0.42.2 \
		windows-targets-0.52.6 \
		windows-targets-0.53.0 \
		windows_aarch64_gnullvm-0.42.2 \
		windows_aarch64_gnullvm-0.52.6 \
		windows_aarch64_gnullvm-0.53.0 \
		windows_aarch64_msvc-0.42.2 \
		windows_aarch64_msvc-0.52.6 \
		windows_aarch64_msvc-0.53.0 \
		windows_i686_gnu-0.42.2 \
		windows_i686_gnu-0.52.6 \
		windows_i686_gnu-0.53.0 \
		windows_i686_gnullvm-0.52.6 \
		windows_i686_gnullvm-0.53.0 \
		windows_i686_msvc-0.42.2 \
		windows_i686_msvc-0.52.6 \
		windows_i686_msvc-0.53.0 \
		windows_x86_64_gnu-0.42.2 \
		windows_x86_64_gnu-0.52.6 \
		windows_x86_64_gnu-0.53.0 \
		windows_x86_64_gnullvm-0.42.2 \
		windows_x86_64_gnullvm-0.52.6 \
		windows_x86_64_gnullvm-0.53.0 \
		windows_x86_64_msvc-0.42.2 \
		windows_x86_64_msvc-0.52.6 \
		windows_x86_64_msvc-0.53.0 \
		winnow-0.5.40 \
		winnow-0.7.4 \
		wit-bindgen-rt-0.39.0 \
		write16-1.0.0 \
		writeable-0.5.5 \
		yoke-0.7.5 \
		yoke-derive-0.7.5 \
		zerocopy-0.8.24 \
		zerocopy-derive-0.8.24 \
		zerofrom-0.1.6 \
		zerofrom-derive-0.1.6 \
		zeroize-1.8.1 \
		zerovec-0.10.4 \
		zerovec-derive-0.10.3 \
		zune-core-0.4.12 \
		zune-inflate-0.2.54 \
		zune-jpeg-0.4.14

OPENSSLINC=	/usr/include
OPENSSLLIB=	/usr/lib

PLIST_FILES=	bin/twt

.include <bsd.port.mk>
