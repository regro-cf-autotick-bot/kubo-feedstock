#!/usr/bin/env bash
set -eux

export LIBRARY_LICENSES_PATH="$SRC_DIR/library_licenses/"

go-licenses save \
    "." \
    --ignore=archive/tar \
    --ignore=archive/zip \
    --ignore=cmp \
    --ignore=compress/gzip \
    --ignore=compress/zlib \
    --ignore=container/heap \
    --ignore=container/list \
    --ignore=crypto/hmac \
    --ignore=crypto/tls \
    --ignore=crypto/x509 \
    --ignore=embed \
    --ignore=encoding/asn1 \
    --ignore=expvar \
    --ignore=go/format \
    --ignore=go/token \
    --ignore=hash/crc32 \
    --ignore=hash/fnv \
    --ignore=io/fs \
    --ignore=io/ioutil \
    --ignore=log/slog \
    --ignore=math/cmplx \
    --ignore=math/rand/v2 \
    --ignore=mime \
    --ignore=mime/multipart \
    --ignore=net/netip \
    --ignore=net/textproto \
    --ignore=os/exec \
    --ignore=runtime/metrics \
    --ignore=runtime/pprof \
    --ignore=slices \
    --ignore=testing \
    --ignore=text/template \
    --ignore=unicode \
    --save_path "$LIBRARY_LICENSES_PATH"

find "$LIBRARY_LICENSES_PATH"
