pkg_name=VotingApp-Redis-Plan
pkg_origin=kbhimanavarjula
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_source="https://github.com/kbhimanavarjula/VotingApp"
pkg_build_deps=(core/git core/virtualenv)
pkg_deps=(core/coreutils core/python2 core/redis)
pkg_exports=([port]=port)
pkg_exposes=(port)
pkg_svc_user="root"
pkg_binds=()

do_download()
{
        build_line "do_download() =================================================="
	wget http://download.redis.io/redis-stable.tar.gz
	tar xvzf redis-stable.tar.gz
	cd redis-stable
#	make install
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





#pkg_source="http://some_source_url/releases/${pkg_name}-${pkg_version}.tar.gz"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
# pkg_shasum="TODO"
# pkg_deps=(core/glibc)
# pkg_build_deps=(core/make core/gcc)
# pkg_lib_dirs=(lib)
# pkg_include_dirs=(include)
# pkg_bin_dirs=(bin)
# pkg_pconfig_dirs=(lib/pconfig)
# pkg_svc_run="bin/haproxy -f $pkg_svc_config_path/haproxy.conf"
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )
# pkg_exposes=(port ssl-port)
# pkg_binds=(
#   [database]="port host"
# )
# pkg_binds_optional=(
#   [storage]="port host"
# )
# pkg_interpreters=(bin/bash)
# pkg_svc_user="hab"
# pkg_svc_group="$pkg_svc_user"
# pkg_description="Some description."
# pkg_upstream_url="http://example.com/project-name"
