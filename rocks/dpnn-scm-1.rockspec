package = "dpnn"
version = "scm-1"

source = {
   url = "git://github.com/nicholas-leonard/dpnn",
   tag = "master"
}

description = {
   summary = "dp extensions to nn Modules and Criterions",
   detailed = [[sharedClone, sharedType, outside, post-initialization, etc]],
   homepage = "https://github.com/nicholas-leonard/dpnn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}