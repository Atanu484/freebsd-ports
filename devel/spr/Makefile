PORTNAME=	spr
DISTVERSIONPREFIX=	v
DISTVERSION=	1.3.5-4
DISTVERSIONSUFFIX=	-gd90b197
PORTREVISION=	10
CATEGORIES=	devel

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	Submit pull requests for amendable, rebaseable commits to GitHub
WWW=		https://github.com/getcord/spr

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BROKEN_powerpc64le=	compilation failure: called `Option::unwrap()` on a `None` value in ring-0.16.20/build.rs: # see https://github.com/getcord/spr/issues/185

LIB_DEPENDS=	libgit2.so:devel/libgit2

USES=		cargo
USE_GITHUB=	yes
GH_ACCOUNT=	getcord

RUSTFLAGS=	${ARCH:S/i386/YES/:C/^[a-z].*//:S/YES/-C target-feature=+sse,+sse2/} # add sse sse2 target-features only on i386

CARGO_CRATES=	addr2line-0.22.0 \
		adler-1.0.2 \
		aho-corasick-1.1.3 \
		android-tzdata-0.1.1 \
		android_system_properties-0.1.5 \
		arc-swap-1.7.1 \
		ascii-0.9.3 \
		async-trait-0.1.81 \
		atty-0.2.14 \
		autocfg-1.3.0 \
		backtrace-0.3.73 \
		base64-0.13.1 \
		base64-0.21.7 \
		bitflags-1.3.2 \
		bitflags-2.6.0 \
		bstr-1.10.0 \
		bumpalo-3.16.0 \
		byteorder-1.5.0 \
		bytes-1.1.0 \
		cc-1.1.7 \
		cfg-if-1.0.0 \
		chrono-0.4.38 \
		clap-3.2.25 \
		clap_derive-3.2.25 \
		clap_lex-0.2.4 \
		combine-3.8.1 \
		console-0.15.8 \
		core-foundation-0.9.4 \
		core-foundation-sys-0.8.6 \
		deranged-0.3.11 \
		dialoguer-0.10.4 \
		doc-comment-0.3.3 \
		either-1.13.0 \
		encode_unicode-0.3.6 \
		encoding_rs-0.8.34 \
		equivalent-1.0.1 \
		errno-0.3.9 \
		fastrand-1.9.0 \
		fastrand-2.1.0 \
		fnv-1.0.7 \
		form_urlencoded-1.0.1 \
		futures-0.3.30 \
		futures-channel-0.3.30 \
		futures-core-0.3.30 \
		futures-executor-0.3.30 \
		futures-io-0.3.30 \
		futures-lite-1.13.0 \
		futures-macro-0.3.30 \
		futures-sink-0.3.30 \
		futures-task-0.3.30 \
		futures-util-0.3.30 \
		getrandom-0.2.15 \
		gimli-0.29.0 \
		git2-0.17.2 \
		git2-ext-0.6.2 \
		graphql-introspection-query-0.2.0 \
		graphql-parser-0.4.0 \
		graphql_client-0.11.0 \
		graphql_client_codegen-0.11.0 \
		graphql_query_derive-0.11.0 \
		h2-0.3.26 \
		hashbrown-0.12.3 \
		hashbrown-0.14.5 \
		heck-0.4.1 \
		hermit-abi-0.1.19 \
		hermit-abi-0.3.9 \
		home-0.5.9 \
		http-0.2.12 \
		http-body-0.4.6 \
		httparse-1.9.4 \
		httpdate-1.0.3 \
		hyper-0.14.30 \
		hyper-rustls-0.24.2 \
		hyperx-1.4.0 \
		iana-time-zone-0.1.60 \
		iana-time-zone-haiku-0.1.2 \
		idna-0.2.3 \
		indexmap-1.9.3 \
		indexmap-2.3.0 \
		indoc-1.0.9 \
		instant-0.1.13 \
		io-lifetimes-1.0.11 \
		ipnet-2.9.0 \
		itertools-0.13.0 \
		itoa-1.0.11 \
		jobserver-0.1.32 \
		js-sys-0.3.69 \
		jsonwebtoken-8.3.0 \
		language-tags-0.3.2 \
		lazy-regex-2.5.0 \
		lazy-regex-proc_macros-2.4.1 \
		lazy_static-1.5.0 \
		libc-0.2.155 \
		libgit2-sys-0.15.2+1.6.4 \
		libz-sys-1.1.18 \
		linux-raw-sys-0.3.8 \
		linux-raw-sys-0.4.14 \
		log-0.4.22 \
		matches-0.1.10 \
		memchr-2.7.4 \
		mime-0.3.17 \
		miniz_oxide-0.7.4 \
		mio-1.0.1 \
		num-bigint-0.4.6 \
		num-conv-0.1.0 \
		num-integer-0.1.46 \
		num-traits-0.2.19 \
		object-0.36.2 \
		octocrab-0.16.0 \
		once_cell-1.19.0 \
		os_str_bytes-6.6.1 \
		parking-2.2.0 \
		pem-1.1.1 \
		percent-encoding-2.1.0 \
		pin-project-lite-0.2.14 \
		pin-utils-0.1.0 \
		pkg-config-0.3.30 \
		powerfmt-0.2.0 \
		proc-macro-error-1.0.4 \
		proc-macro-error-attr-1.0.4 \
		proc-macro2-1.0.86 \
		quote-1.0.36 \
		regex-1.10.5 \
		regex-automata-0.4.7 \
		regex-syntax-0.8.4 \
		reqwest-0.11.27 \
		ring-0.16.20 \
		ring-0.17.8 \
		rustc-demangle-0.1.24 \
		rustix-0.37.27 \
		rustix-0.38.34 \
		rustls-0.21.12 \
		rustls-pemfile-1.0.4 \
		rustls-webpki-0.101.7 \
		ryu-1.0.18 \
		sct-0.7.1 \
		secrecy-0.8.0 \
		serde-1.0.204 \
		serde_derive-1.0.204 \
		serde_json-1.0.122 \
		serde_path_to_error-0.1.16 \
		serde_urlencoded-0.7.1 \
		shell-words-1.1.0 \
		shlex-1.3.0 \
		signal-hook-registry-1.4.2 \
		simple_asn1-0.6.2 \
		slab-0.4.9 \
		smawk-0.3.2 \
		snafu-0.7.5 \
		snafu-derive-0.7.5 \
		socket2-0.5.7 \
		spin-0.5.2 \
		spin-0.9.8 \
		strsim-0.10.0 \
		syn-1.0.109 \
		syn-2.0.72 \
		sync_wrapper-0.1.2 \
		system-configuration-0.5.1 \
		system-configuration-sys-0.5.0 \
		tempfile-3.10.1 \
		termcolor-1.4.1 \
		terminal_size-0.2.6 \
		textwrap-0.15.2 \
		textwrap-0.16.1 \
		thiserror-1.0.63 \
		thiserror-impl-1.0.63 \
		time-0.3.36 \
		time-core-0.1.2 \
		time-macros-0.2.18 \
		tinyvec-1.8.0 \
		tinyvec_macros-0.1.1 \
		tokio-1.39.2 \
		tokio-macros-2.4.0 \
		tokio-rustls-0.24.1 \
		tokio-util-0.7.11 \
		tower-service-0.3.2 \
		tracing-0.1.40 \
		tracing-core-0.1.32 \
		try-lock-0.2.5 \
		unicase-2.6.0 \
		unicode-bidi-0.3.15 \
		unicode-ident-1.0.12 \
		unicode-linebreak-0.1.5 \
		unicode-normalization-0.1.23 \
		unicode-width-0.1.13 \
		unreachable-1.0.0 \
		untrusted-0.7.1 \
		untrusted-0.9.0 \
		url-2.3.0 \
		vcpkg-0.2.15 \
		version_check-0.9.5 \
		void-1.0.2 \
		waker-fn-1.2.0 \
		want-0.3.1 \
		wasi-0.11.0+wasi-snapshot-preview1 \
		wasm-bindgen-0.2.92 \
		wasm-bindgen-backend-0.2.92 \
		wasm-bindgen-futures-0.4.42 \
		wasm-bindgen-macro-0.2.92 \
		wasm-bindgen-macro-support-0.2.92 \
		wasm-bindgen-shared-0.2.92 \
		web-sys-0.3.69 \
		webpki-roots-0.25.4 \
		which-6.0.2 \
		winapi-0.3.9 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-util-0.1.8 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		windows-core-0.52.0 \
		windows-sys-0.48.0 \
		windows-sys-0.52.0 \
		windows-targets-0.48.5 \
		windows-targets-0.52.6 \
		windows_aarch64_gnullvm-0.48.5 \
		windows_aarch64_gnullvm-0.52.6 \
		windows_aarch64_msvc-0.48.5 \
		windows_aarch64_msvc-0.52.6 \
		windows_i686_gnu-0.48.5 \
		windows_i686_gnu-0.52.6 \
		windows_i686_gnullvm-0.52.6 \
		windows_i686_msvc-0.48.5 \
		windows_i686_msvc-0.52.6 \
		windows_x86_64_gnu-0.48.5 \
		windows_x86_64_gnu-0.52.6 \
		windows_x86_64_gnullvm-0.48.5 \
		windows_x86_64_gnullvm-0.52.6 \
		windows_x86_64_msvc-0.48.5 \
		windows_x86_64_msvc-0.52.6 \
		winreg-0.50.0 \
		winsafe-0.0.19 \
		zeroize-1.8.1

PLIST_FILES=	bin/${PORTNAME}

do-install:
	# workaround for error: found a virtual manifest at `xx` instead of a package manifest
	${INSTALL_PROGRAM} \
		${WRKDIR}/target/release/${PORTNAME} \
		${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
