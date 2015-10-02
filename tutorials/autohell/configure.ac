# configure.in -- Process this file with autoconf to produce configure
AC_PREREQ([2.64])

# Initialize AC: ACINIT( package_name, version, bug_report_address)
AC_INIT([my_program], [0.0.1], [jwkim.unist@gmail.com])

# Initialize Automake
AM_INIT_AUTOMAKE

# AM stands for Automake commands, AC stands for Autoconf commands
# We use libraries
AC_PROG_RANLIB

# Let's check for a C++ compiler
AC_LANG([C++])

# Let's set a C++ compiler
AC_PROG_CXX([g++])

######################################################################
# PARALLEL MAKE 
######################################################################

NPROCS=1
if [[ "$build_os" == "linux-gnu" ]]
then
  NPROCS=$(grep -c ^processor /proc/cpuinfo)
elif [[ "$build_os" == "darwin" ]]
then
  NPROCS=$(sysctl -n hw.physicalcpu)
fi

#NPROCS=`expr $NPROCS / 2`
MAKEFLAGS="-j$NPROCS"

# Let's specify where the Makefiles should be produced.
# These are the same locations as your Makefile.in's, but named as Makefile only
# We need to do this because both Autoconf and Automake read this file and 
# produce Makefiles from this list.
AC_CONFIG_FILES([Makefile 
                 inc/Makefile 
                 src/Makefile
                 ])

# Finally produce "configure" script
AC_OUTPUT

echo \
"---------------------------------------------------------------------

${PACKAGE_NAME} 

Version        : ${PACKAGE_VERSION}
OS             : ${build_os}
Prefix         : ${prefix}
Compiler       : ${CC}
CPP Flags      : ${CPPFLAGS} ${DEBUG_CPPFLAGS} 
C++ Flags      : ${CXXFLAGS} ${DEBUG_CXXFLAGS}
Make Flags     : ${MAKEFLAGS}
Libraries      : ${LIBS} 

---------------------------------------------------------------------"


