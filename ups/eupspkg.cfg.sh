# EupsPkg config file. Sourced by 'eupspkg'

config()
{
    case $(uname) in
    Linux)
        cp ups/config.Linux config ;;
    Darwin)
        cp ups/config.Darwin config ;;
    *)
        die "Unsupported OS $(uname). Aborting." ;;
    esac

    [[ $(uname) = Darwin ]] && SED_INPLACE="sed -i '.prev'" || SED_INPLACE="sed -i"

    $SED_INPLACE "s,INSTALL_TOP_SHARE=/usr/local/share/lua/5.1,LUAINC=-I${LUA_DIR}/include"\\$'\n'"INSTALL_TOP_SHARE=${LUA_DIR}/share/lua/5.1," config &&
    $SED_INPLACE "s,INSTALL_TOP_LIB=/usr/local/lib/lua/5.1,INSTALL_TOP_LIB=${LUA_DIR}/lib/lua/5.1," config 
}
