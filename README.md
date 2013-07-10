Build this with a clean VM every time, with a clean root user.

Might want to set:

    rvm_project_rvmrc=0
    rvm_autolibs_flag=0
    rvm autolibs read fail

For global installs from scratch:

    make binary

For global installs from archives:

    make install
