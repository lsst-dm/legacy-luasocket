# EupsPkg config file. Sourced by 'eupspkg'

config()
{
    sed -i'.orig' "s,INSTALL_TOP_SHARE=/usr/local/share/lua/5.1,LUAINC=-I${LUA_DIR}/include\nINSTALL_TOP_SHARE=${LUA_DIR}/share/lua/5.1," config &&
    sed -i'.orig' "s,INSTALL_TOP_LIB=/usr/local/lib/lua/5.1,INSTALL_TOP_LIB=${LUA_DIR}/lib/lua/5.1," config 
}
