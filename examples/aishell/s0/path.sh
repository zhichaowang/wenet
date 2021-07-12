export WENET_DIR=$PWD/../../..
export BUILD_DIR=${WENET_DIR}/runtime/server/x86/build
export OPENFST_PREFIX_DIR=${BUILD_DIR}/../fc_base/openfst-subbuild/openfst-populate-prefix
export PATH=$PWD:${BUILD_DIR}:${BUILD_DIR}/kaldi:${OPENFST_PREFIX_DIR}/bin:$PWD/utils:$PATH
# kaldi path
KALDI_ROOT=/search/speech/wangzhichao/espnet/espnet-wzc/tools/kaldi
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh

# NOTE(kan-bayashi): Use UTF-8 in Python to avoid UnicodeDecodeError when LC_ALL=C
export PYTHONIOENCODING=UTF-8
export PYTHONPATH=../../:$PYTHONPATH
