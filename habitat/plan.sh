pkg_name=VotingApp-Redis-Plan
pkg_origin=kbhimanavarjula
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_source="https://github.com/kbhimanavarjula/VotingApp"
pkg_build_deps=(core/git)
pkg_deps=(core/coreutils core/python2 core/redis core/make core/gcc)
pkg_exports=([port]=port)
pkg_exposes=(port)
pkg_svc_user="root"
pkg_binds=()

do_download()
{
        build_line "do_download() =================================================="
#	wget http://download.redis.io/redis-stable.tar.gz
#	tar xzf redis-stable.tar.gz
#	cd redis-stable
#	make
        return 0
}

do_verify() {

        return 0
}
do_clean() {
        build_line "do_clean() ===================================================="
        return 0
}

do_unpack() {
        build_line "do_unpack() ===================================================="
        return 0
}

do_build() {
        build_line "do_build() ===================================================="
        #local source_dir="${HAB_CACHE_SRC_PATH}/${pkg_dirname}/${pkg_filename}"
        #pip install -r "${source_dir}/vote/requirements.txt"
        #redis-server install
	return 0
}

do_install() {
        build_line "do_install() ===================================================="
        #redis-server install
}

