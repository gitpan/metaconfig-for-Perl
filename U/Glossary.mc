This file contains a description of all the shell variables whose value is
determined by the Configure script.  Variables intended for use in C
programs (e.g. I_UNISTD) are already described in config_h.SH.  [`configpm'
generates pod documentation for Config.pm from this file--please try to keep
the formatting regular.]

_a (Unix.U):
	This variable defines the extension used for ordinary libraries.
	For unix, it is '.a'.  The '.' is included.  Other possible
	values include '.lib'.

_exe (Unix.U):
	This variable defines the extension used for executable files.
	For unix it is empty.  Other possible values include '.exe'.

_o (Unix.U):
	This variable defines the extension used for object files.
	For unix, it is '.o'.  The '.' is included.  Other possible
	values include '.obj'.

afs (afs.U):
	This variable is set to 'true' if AFS (Andrew File System) is used
	on the system, 'false' otherwise.  It is possible to override this
	with a hint value or command line option, but you'd better know
	what you are doing.

alignbytes (alignbytes.U):
	This variable holds the number of bytes required to align a
	double. Usual values are 2, 4 and 8.

ansi2knr (ansi2knr.U):
	This variable is set if the user needs to run ansi2knr.  
	Currently, this is not supported, so we just abort.

aphostname (d_gethname.U):
	This variable contains the command which can be used to compute the
	host name. The command is fully qualified by its absolute path, to make
	it safe when used by a process with super-user privileges.

apiversion (patchlevel.U):
	This is a number which identifies the lowest version of perl
	to have an API (for XS extensions) compatible with the present
	version.  For example, for 5.005_01, the apiversion should be
	5.005, since 5.005_01 should be binary compatible with 5.005.
	This should probably be incremented manually somehow, perhaps
	from patchlevel.h.  For now, we'll guess maintenance subversions
	will retain binary compatibility.

ar (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the ar program.  After Configure runs,
	the value is reset to a plain "ar" and is not useful.

archlib (archlib.U):
	This variable holds the name of the directory in which the user wants
	to put architecture-dependent public library files for $package.
	It is most often a local directory such as /usr/local/lib.
	Programs using this variable must be prepared to deal
	with filename expansion.

archlibexp (archlib.U):
	This variable is the same as the archlib variable, but is
	filename expanded at configuration time, for convenient use.

archname64 (use64bits.U):
	This variable is used for the 64-bitness part of $archname.

archname (archname.U):
	This variable is a short name to characterize the current
	architecture.  It is used mainly to construct the default archlib.

archobjs (Unix.U):
	This variable defines any additional objects that must be linked
	in with the program on this architecture.  On unix, it is usually
	empty.  It is typically used to include emulations of unix calls
	or other facilities.  For perl on OS/2, for example, this would
	include os2/os2.obj.

awk (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the awk program.  After Configure runs,
	the value is reset to a plain "awk" and is not useful.

baserev (baserev.U):
	The base revision level of this package, from the .package file.

bash (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

bin (bin.U):
	This variable holds the name of the directory in which the user wants
	to put publicly executable images for the package in question.  It
	is most often a local directory such as /usr/local/bin. Programs using
	this variable must be prepared to deal with ~name substitution.

binexp (bin.U):
	This is the same as the bin variable, but is filename expanded at
	configuration time, for use in your makefiles.

bison (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

byacc (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the byacc program.  After Configure runs,
	the value is reset to a plain "byacc" and is not useful.

byteorder (byteorder.U):
	This variable holds the byte order. In the following, larger digits
	indicate more significance.  The variable byteorder is either 4321
	on a big-endian machine, or 1234 on a little-endian, or 87654321
	on a Cray ... or 3412 with weird order !

c (n.U):
	This variable contains the \c string if that is what causes the echo
	command to suppress newline.  Otherwise it is null.  Correct usage is
	$echo $n "prompt for a question: $c".

castflags (d_castneg.U):
	This variable contains a flag that precise difficulties the
	compiler has casting odd floating values to unsigned long:
	0 = ok
	1 = couldn't cast < 0
	2 = couldn't cast >= 0x80000000
	4 = couldn't cast in argument expression list

cat (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the cat program.  After Configure runs,
	the value is reset to a plain "cat" and is not useful.

cc (cc.U):
	This variable holds the name of a command to execute a C compiler which
	can resolve multiple global references that happen to have the same
	name.  Usual values are 'cc', 'Mcc', 'cc -M', and 'gcc'.

cccdlflags (dlsrc.U):
	This variable contains any special flags that might need to be
	passed with 'cc -c' to compile modules to be used to create a shared
	library that will be used for dynamic loading.  For hpux, this
	should be +z.  It is up to the makefile to use it.

ccdlflags (dlsrc.U):
	This variable contains any special flags that might need to be
	passed to cc to link with a shared library for dynamic loading.
	It is up to the makefile to use it.  For sunos 4.1, it should
	be empty.

ccflags (ccflags.U):
	This variable contains any additional C compiler flags desired by
	the user.  It is up to the Makefile to use this.

ccsymbols (Cppsym.U):
	The variable contains the symbols defined by the C compiler alone.
	The symbols defined by cpp or by cc when it calls cpp are not in
	this list, see cppsymbols and cppccsymbols.
	The list is a space-separated list of symbol=value tokens.

cf_by (cf_who.U):
	Login name of the person who ran the Configure script and answered the
	questions. This is used to tag both config.sh and config_h.SH.

cf_email (cf_email.U):
	Electronic mail address of the person who ran Configure. This can be
	used by units that require the user's e-mail, like MailList.U.

cf_time (cf_who.U):
	Holds the output of the "date" command when the configuration file was
	produced. This is used to tag both config.sh and config_h.SH.

chgrp (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

chmod (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

chown (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

clocktype (d_times.U):
	This variable holds the type returned by times(). It can be long,
	or clock_t on BSD sites (in which case <sys/types.h> should be
	included).

comm (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the comm program.  After Configure runs,
	the value is reset to a plain "comm" and is not useful.

compress (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

contains (contains.U):
	This variable holds the command to do a grep with a proper return
	status.  On most sane systems it is simply "grep".  On insane systems
	it is a grep followed by a cat followed by a test.  This variable
	is primarily for the use of other Configure units.

cp (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the cp program.  After Configure runs,
	the value is reset to a plain "cp" and is not useful.

cpio (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

cpp (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the cpp program.  After Configure runs,
	the value is reset to a plain "cpp" and is not useful.

cpp_stuff (cpp_stuff.U):
	This variable contains an identification of the catenation mechanism
	used by the C preprocessor.

cppccsymbols (Cppsym.U):
	The variable contains the symbols defined by the C compiler when
	when it calls cpp.  The symbols defined by the cc alone or cpp
	alone are not in this list, see ccsymbols and cppsymbols.
	The list is a space-separated list of symbol=value tokens.

cppflags (ccflags.U):
	This variable holds the flags that will be passed to the C pre-
	processor. It is up to the Makefile to use it.

cpplast (cppstdin.U):
	This variable has the same functionality as cppminus, only it applies
	to cpprun and not cppstdin.

cppminus (cppstdin.U):
	This variable contains the second part of the string which will invoke
	the C preprocessor on the standard input and produce to standard
	output.  This variable will have the value "-" if cppstdin needs
	a minus to specify standard input, otherwise the value is "".

cpprun (cppstdin.U):
	This variable contains the command which will invoke a C preprocessor
	on standard input and put the output to stdout. It is guaranteed not
	to be a wrapper and may be a null string if no preprocessor can be
	made directly available. This preprocessor might be different from the
	one used by the C compiler. Don't forget to append cpplast after the
	preprocessor options.

cppstdin (cppstdin.U):
	This variable contains the command which will invoke the C
	preprocessor on standard input and put the output to stdout.
	It is primarily used by other Configure units that ask about
	preprocessor symbols.

cppsymbols (Cppsym.U):
	The variable contains the symbols defined by the C preprocessor
	alone.  The symbols defined by cc or by cc when it calls cpp are
	not in this list, see ccsymbols and cppccsymbols.
	The list is a space-separated list of symbol=value tokens.

crosscompile (crosscompile.U):
	This variable conditionally defines the CROSSCOMPILE symbol
	which signifies that the build process is be a cross-compilation.
	This is normally set by hints files or from Configure command line.

cryptlib (d_crypt.U):
	This variable holds -lcrypt or the path to a libcrypt.a archive if
	the crypt() function is not defined in the standard C library. It is
	up to the Makefile to use this.

csh (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the csh program.  After Configure runs,
	the value is reset to a plain "csh" and is not useful.

d_access (d_access.U):
	This variable conditionally defines HAS_ACCESS if the access() system
	call is available to check for access permissions using real IDs.

d_accessx (d_accessx.U):
	This variable conditionally defines the HAS_ACCESSX symbol, which
	indicates to the C program that the accessx() routine is available.

d_alarm (d_alarm.U):
	This variable conditionally defines the HAS_ALARM symbol, which
	indicates to the C program that the alarm() routine is available.

d_archlib (archlib.U):
	This variable conditionally defines ARCHLIB to hold the pathname
	of architecture-dependent library files for $package.  If
	$archlib is the same as $privlib, then this is set to undef.

d_attribut (d_attribut.U):
	This variable conditionally defines HASATTRIBUTE, which
	indicates the C compiler can check for function attributes,
	such as printf formats.

d_bcmp (d_bcmp.U):
	This variable conditionally defines the HAS_BCMP symbol if
	the bcmp() routine is available to compare strings.

d_bcopy (d_bcopy.U):
	This variable conditionally defines the HAS_BCOPY symbol if
	the bcopy() routine is available to copy strings.

d_bsd (Guess.U):
	This symbol conditionally defines the symbol BSD when running on a
	BSD system.

d_bsdgetpgrp (d_getpgrp.U):
	This variable conditionally defines USE_BSD_GETPGRP if
	getpgrp needs one arguments whereas USG one needs none.

d_bsdsetpgrp (d_setpgrp.U):
	This variable conditionally defines USE_BSD_SETPGRP if
	setpgrp needs two arguments whereas USG one needs none.
	See also d_setpgid for a POSIX interface.

d_bzero (d_bzero.U):
	This variable conditionally defines the HAS_BZERO symbol if
	the bzero() routine is available to set memory to 0.

d_casti32 (d_casti32.U):
	This variable conditionally defines CASTI32, which indicates
	whether the C compiler can cast large floats to 32-bit ints.

d_castneg (d_castneg.U):
	This variable conditionally defines CASTNEG, which indicates
	wether the C compiler can cast negative float to unsigned.

d_charvspr (d_vprintf.U):
	This variable conditionally defines CHARVSPRINTF if this system
	has vsprintf returning type (char*).  The trend seems to be to
	declare it as "int vsprintf()".

d_chown (d_chown.U):
	This variable conditionally defines the HAS_CHOWN symbol, which
	indicates to the C program that the chown() routine is available.

d_chroot (d_chroot.U):
	This variable conditionally defines the HAS_CHROOT symbol, which
	indicates to the C program that the chroot() routine is available.

d_chsize (d_chsize.U):
	This variable conditionally defines the CHSIZE symbol, which
	indicates to the C program that the chsize() routine is available
	to truncate files.  You might need a -lx to get this routine.

d_closedir (d_closedir.U):
	This variable conditionally defines HAS_CLOSEDIR if closedir() is
	available.

d_cmsghdr_s (d_socket.U):
	This variable conditionally defines the HAS_STRUCT_CMSGHDR symbol,
	which indicates that the the struct cmsghdr is supported.

d_const (d_const.U):
	This variable conditionally defines the HASCONST symbol, which
	indicates to the C program that this C compiler knows about the
	const type.

d_crypt (d_crypt.U):
	This variable conditionally defines the CRYPT symbol, which
	indicates to the C program that the crypt() routine is available
	to encrypt passwords and the like.

d_csh (d_csh.U):
	This variable conditionally defines the CSH symbol, which
	indicates to the C program that the C-shell exists.

d_cuserid (d_cuserid.U):
	This variable conditionally defines the HAS_CUSERID symbol, which
	indicates to the C program that the cuserid() routine is available
	to get character login names.

d_dbl_dig (d_dbl_dig.U):
	This variable conditionally defines d_dbl_dig if this system's
	header files provide DBL_DIG, which is the number of significant
	digits in a double precision number.

d_dbmclose64 (dbm64.U):
	This variable conditionally defines the HAS_DBMCLOSE64 symbol, which
	indicates to the C program that the dbmclose64() routine is available.

d_dbminit64 (dbm64.U):
	This variable conditionally defines the HAS_DBMINIT64 symbol, which
	indicates to the C program that the dbminit64() routine is available.

d_delete64 (dbm64.U):
	This variable conditionally defines the HAS_DELETE64 symbol, which
	indicates to the C program that the delete64() routine is available.

d_difftime (d_difftime.U):
	This variable conditionally defines the HAS_DIFFTIME symbol, which
	indicates to the C program that the difftime() routine is available.

d_dirent64_s (io64.U):
	This symbol will be defined if the C compiler supports struct dirent64.

d_dirnamlen (i_dirent.U):
	This variable conditionally defines DIRNAMLEN, which indicates
	to the C program that the length of directory entry names is
	provided by a d_namelen field.

d_dlerror (d_dlerror.U):
	This variable conditionally defines the HAS_DLERROR symbol, which
	indicates to the C program that the dlerror() routine is available.

d_dlopen (d_dlopen.U):
	This variable conditionally defines the HAS_DLOPEN symbol, which
	indicates to the C program that the dlopen() routine is available.

d_dlsymun (d_dlsymun.U):
	This variable conditionally defines DLSYM_NEEDS_UNDERSCORE, which
	indicates that we need to prepend an underscore to the symbol
	name before calling dlsym().

d_dosuid (d_dosuid.U):
	This variable conditionally defines the symbol DOSUID, which
	tells the C program that it should insert setuid emulation code
	on hosts which have setuid #! scripts disabled.

d_drand48proto (d_drand48proto.U):
	This variable conditionally defines the HAS_DRAND48_PROTO symbol,
	which indicates to the C program that the system provides
	a prototype for the drand48() function.  Otherwise, it is
	up to the program to supply one.

d_dup2 (d_dup2.U):
	This variable conditionally defines HAS_DUP2 if dup2() is
	available to duplicate file descriptors.

d_eaccess (d_eaccess.U):
	This variable conditionally defines the HAS_EACCESS symbol, which
	indicates to the C program that the eaccess() routine is available.

d_endgrent (d_endgrent.U):
	This variable conditionally defines the HAS_ENDGRENT symbol, which
	indicates to the C program that the endgrent() routine is available
	for sequential access of the group database.

d_endhent (d_endhent.U):
	This variable conditionally defines HAS_ENDHOSTENT if endhostent() is
	available to close whatever was being used for host queries.

d_endnent (d_endnent.U):
	This variable conditionally defines HAS_ENDNETENT if endnetent() is
	available to close whatever was being used for network queries.

d_endpent (d_endpent.U):
	This variable conditionally defines HAS_ENDPROTOENT if endprotoent() is
	available to close whatever was being used for protocol queries.

d_endpwent (d_endpwent.U):
	This variable conditionally defines the HAS_ENDPWENT symbol, which
	indicates to the C program that the endpwent() routine is available
	for sequential access of the passwd database.

d_endsent (d_endsent.U):
	This variable conditionally defines HAS_ENDSERVENT if endservent() is
	available to close whatever was being used for service queries.

d_endspent (d_endspent.U):
	This variable conditionally defines HAS_ENDSPENT if endspent() is
	available to finalize the scan of SysV shadow password entries.

d_eofnblk (nblock_io.U):
	This variable conditionally defines EOF_NONBLOCK if EOF can be seen
	when reading from a non-blocking I/O source.

d_eunice (Guess.U):
	This variable conditionally defines the symbols EUNICE and VAX, which
	alerts the C program that it must deal with ideosyncracies of VMS.

d_fchmod (d_fchmod.U):
	This variable conditionally defines the HAS_FCHMOD symbol, which
	indicates to the C program that the fchmod() routine is available
	to change mode of opened files.

d_fchown (d_fchown.U):
	This variable conditionally defines the HAS_FCHOWN symbol, which
	indicates to the C program that the fchown() routine is available
	to change ownership of opened files.

d_fcntl (d_fcntl.U):
	This variable conditionally defines the HAS_FCNTL symbol, and indicates
	whether the fcntl() function exists

d_fd_macros (d_fd_set.U):
	This variable contains the eventual value of the HAS_FD_MACROS symbol,
	which indicates if your C compiler knows about the macros which
	manipulate an fd_set.

d_fd_set (d_fd_set.U):
	This variable contains the eventual value of the HAS_FD_SET symbol,
	which indicates if your C compiler knows about the fd_set typedef.

d_fds_bits (d_fd_set.U):
	This variable contains the eventual value of the HAS_FDS_BITS symbol,
	which indicates if your fd_set typedef contains the fds_bits member.
	If you have an fd_set typedef, but the dweebs who installed it did
	a half-fast job and neglected to provide the macros to manipulate
	an fd_set, HAS_FDS_BITS will let us know how to fix the gaffe.

d_fetch64 (dbm64.U):
	This variable conditionally defines the HAS_FETCH64 symbol, which
	indicates to the C program that the fetch64() routine is available.

d_fgetpos64 (stdio64.U):
	This variable conditionally defines the HAS_FGETPOS64 symbol, which
	indicates to the C program that the fgetpos64() routine is available.

d_fgetpos (d_fgetpos.U):
	This variable conditionally defines HAS_FGETPOS if fgetpos() is
	available to get the file position indicator.

d_firstkey64 (dbm64.U):
	This variable conditionally defines the HAS_FIRSTKEY64 symbol, which
	indicates to the C program that the firstkey64() routine is available.

d_flexfnam (d_flexfnam.U):
	This variable conditionally defines the FLEXFILENAMES symbol, which
	indicates that the system supports filenames longer than 14 characters.

d_flock64_s (io64.U):
	This symbol will be defined if the C compiler supports struct flock64.

d_flock (d_flock.U):
	This variable conditionally defines HAS_FLOCK if flock() is
	available to do file locking.

d_fopen64 (stdio64.U):
	This variable conditionally defines the HAS_FOPEN64 symbol, which
	indicates to the C program that the fopen64() routine is available.

d_fork (d_fork.U):
	This variable conditionally defines the HAS_FORK symbol, which
	indicates to the C program that the fork() routine is available.

d_fpathconf (d_pathconf.U):
	This variable conditionally defines the HAS_FPATHCONF symbol, which
	indicates to the C program that the pathconf() routine is available
	to determine file-system related limits and options associated
	with a given open file descriptor.

d_freopen64 (stdio64.U):
	This variable conditionally defines the HAS_FREOPEN64 symbol, which
	indicates to the C program that the freopen64() routine is available.

d_fseek64 (stdio64.U):
	This variable conditionally defines the HAS_FSEEK64 symbol, which
	indicates to the C program that the fseek64() routine is available.

d_fseeko64 (stdio64.U):
	This variable conditionally defines the HAS_FSEEKO64 symbol, which
	indicates to the C program that the fseeko64() routine is available.

d_fseeko (d_fseeko.U):
	This variable conditionally defines the HAS_FSEEKO symbol, which
	indicates to the C program that the fseeko() routine is available.

d_fsetpos64 (stdio64.U):
	This variable conditionally defines the HAS_FSETPOS64 symbol, which
	indicates to the C program that the fsetpos64() routine is available.

d_fsetpos (d_fsetpos.U):
	This variable conditionally defines HAS_FSETPOS if fsetpos() is
	available to set the file position indicator.

d_fstat64 (io64.U):
	This variable conditionally defines the HAS_FSTAT64 symbol, which
	indicates to the C program that the fstat64() routine is available.

d_fstatfs (d_statfs.U):
	This variable conditionally defines the HAS_FSTATFS symbol, which
	indicates to the C program that the fstatfs() routine is available.

d_fstatvfs (d_statvfs.U):
	This variable conditionally defines the HAS_FSTATVFS symbol, which
	indicates to the C program that the fstatvfs() routine is available.

d_ftell64 (stdio64.U):
	This variable conditionally defines the HAS_FTELL64 symbol, which
	indicates to the C program that the ftell64() routine is available.

d_ftello64 (stdio64.U):
	This variable conditionally defines the HAS_FTELLO64 symbol, which
	indicates to the C program that the ftello64() routine is available.

d_ftello (d_ftello.U):
	This variable conditionally defines the HAS_FTELLO symbol, which
	indicates to the C program that the ftello() routine is available.

d_ftime (d_ftime.U):
	This variable conditionally defines the HAS_FTIME symbol, which indicates
	that the ftime() routine exists.  The ftime() routine is basically
	a sub-second accuracy clock.

d_ftruncate64 (io64.U):
	This variable conditionally defines the HAS_FTRUNCATE64 symbol, which
	indicates to the C program that the ftruncate64() routine is available.

d_Gconvert (d_gconvert.U):
	This variable holds what Gconvert is defined as to convert
	floating point numbers into strings. It could be 'gconvert'
	or a more complex macro emulating gconvert with gcvt() or sprintf.
	Possible values are:
	d_Gconvert='gconvert((x),(n),(t),(b))'
	d_Gconvert='gcvt((x),(n),(b))'
	d_Gconvert='sprintf((b),"%.*g",(n),(x))'

d_getgrent (d_getgrent.U):
	This variable conditionally defines the HAS_GETGRENT symbol, which
	indicates to the C program that the getgrent() routine is available
	for sequential access of the group database.

d_getgrps (d_getgrps.U):
	This variable conditionally defines the HAS_GETGROUPS symbol, which
	indicates to the C program that the getgroups() routine is available
	to get the list of process groups.

d_gethbyaddr (d_gethbyad.U):
	This variable conditionally defines the HAS_GETHOSTBYADDR symbol, which
	indicates to the C program that the gethostbyaddr() routine is available
	to look up hosts by their IP addresses.

d_gethbyname (d_gethbynm.U):
	This variable conditionally defines the HAS_GETHOSTBYNAME symbol, which
	indicates to the C program that the gethostbyname() routine is available
	to look up host names in some data base or other.

d_gethent (d_gethent.U):
	This variable conditionally defines HAS_GETHOSTENT if gethostent() is
	available to look up host names in some data base or another.

d_gethname (d_gethname.U):
	This variable conditionally defines the HAS_GETHOSTNAME symbol, which
	indicates to the C program that the gethostname() routine may be
	used to derive the host name.

d_gethostprotos (d_gethostprotos.U):
	This variable conditionally defines the HAS_GETHOST_PROTOS symbol,
	which indicates to the C program that <netdb.h> supplies
	prototypes for the various gethost*() functions.  
	See also netdbtype.U for probing for various netdb types.

d_getlogin (d_getlogin.U):
	This variable conditionally defines the HAS_GETLOGIN symbol, which
	indicates to the C program that the getlogin() routine is available
	to get the login name.

d_getmntent (d_getmntent.U):
	This variable conditionally defines the HAS_GETMNTENT symbol, which
	indicates to the C program that the getmntent() routine is available
	to iterate through mounted files.

d_getnbyaddr (d_getnbyad.U):
	This variable conditionally defines the HAS_GETNETBYADDR symbol, which
	indicates to the C program that the getnetbyaddr() routine is available
	to look up networks by their IP addresses.

d_getnbyname (d_getnbynm.U):
	This variable conditionally defines the HAS_GETNETBYNAME symbol, which
	indicates to the C program that the getnetbyname() routine is available
	to look up networks by their names.

d_getnent (d_getnent.U):
	This variable conditionally defines HAS_GETNETENT if getnetent() is
	available to look up network names in some data base or another.

d_getnetprotos (d_getnetprotos.U):
	This variable conditionally defines the HAS_GETNET_PROTOS symbol,
	which indicates to the C program that <netdb.h> supplies
	prototypes for the various getnet*() functions.  
	See also netdbtype.U for probing for various netdb types.

d_getpbyname (d_getprotby.U):
	This variable conditionally defines the HAS_GETPROTOBYNAME 
	symbol, which indicates to the C program that the 
	getprotobyname() routine is available to look up protocols
	by their name.

d_getpbynumber (d_getprotby.U):
	This variable conditionally defines the HAS_GETPROTOBYNUMBER 
	symbol, which indicates to the C program that the 
	getprotobynumber() routine is available to look up protocols
	by their number.

d_getpent (d_getpent.U):
	This variable conditionally defines HAS_GETPROTOENT if getprotoent() is
	available to look up protocols in some data base or another.

d_getpgid (d_getpgid.U):
	This variable conditionally defines the HAS_GETPGID symbol, which
	indicates to the C program that the getpgid(pid) function
	is available to get the process group id.

d_getpgrp2 (d_getpgrp2.U):
	This variable conditionally defines the HAS_GETPGRP2 symbol, which
	indicates to the C program that the getpgrp2() (as in DG/UX) routine
	is available to get the current process group.

d_getpgrp (d_getpgrp.U):
	This variable conditionally defines HAS_GETPGRP if getpgrp() is
	available to get the current process group.

d_getppid (d_getppid.U):
	This variable conditionally defines the HAS_GETPPID symbol, which
	indicates to the C program that the getppid() routine is available
	to get the parent process ID.

d_getprior (d_getprior.U):
	This variable conditionally defines HAS_GETPRIORITY if getpriority()
	is available to get a process's priority.

d_getprotoprotos (d_getprotoprotos.U):
	This variable conditionally defines the HAS_GETPROTO_PROTOS symbol,
	which indicates to the C program that <netdb.h> supplies
	prototypes for the various getproto*() functions.  
	See also netdbtype.U for probing for various netdb types.

d_getpwent (d_getpwent.U):
	This variable conditionally defines the HAS_GETPWENT symbol, which
	indicates to the C program that the getpwent() routine is available
	for sequential access of the passwd database.

d_getsbyname (d_getsrvby.U):
	This variable conditionally defines the HAS_GETSERVBYNAME 
	symbol, which indicates to the C program that the 
	getservbyname() routine is available to look up services
	by their name.

d_getsbyport (d_getsrvby.U):
	This variable conditionally defines the HAS_GETSERVBYPORT 
	symbol, which indicates to the C program that the 
	getservbyport() routine is available to look up services
	by their port.

d_getsent (d_getsent.U):
	This variable conditionally defines HAS_GETSERVENT if getservent() is
	available to look up network services in some data base or another.

d_getservprotos (d_getservprotos.U):
	This variable conditionally defines the HAS_GETSERV_PROTOS symbol,
	which indicates to the C program that <netdb.h> supplies
	prototypes for the various getserv*() functions.  
	See also netdbtype.U for probing for various netdb types.

d_getspent (d_getspent.U):
	This variable conditionally defines HAS_GETSPENT if getspent() is
	available to retrieve SysV shadow password entries sequentially.

d_getspnam (d_getspnam.U):
	This variable conditionally defines HAS_GETSPNAM if getspnam() is
	available to retrieve SysV shadow password entries by name.

d_gettimeod (d_ftime.U):
	This variable conditionally defines the HAS_GETTIMEOFDAY symbol, which
	indicates that the gettimeofday() system call exists (to obtain a
	sub-second accuracy clock). You should probably include <sys/resource.h>.

d_gnulibc (d_gnulibc.U):
	Defined if we're dealing with the GNU C Library.

d_grpasswd (i_grp.U):
	This variable conditionally defines GRPASSWD, which indicates
	that struct group in <grp.h> contains gr_passwd.

d_hasmntopt (d_hasmntopt.U):
	This variable conditionally defines the HAS_HASMNTOPT symbol, which
	indicates to the C program that the hasmntopt() routine is available
	to query the mount options of file systems.

d_htonl (d_htonl.U):
	This variable conditionally defines HAS_HTONL if htonl() and its
	friends are available to do network order byte swapping.

d_index (d_strchr.U):
	This variable conditionally defines HAS_INDEX if index() and
	rindex() are available for string searching.

d_inetaton (d_inetaton.U):
	This variable conditionally defines the HAS_INET_ATON symbol, which
	indicates to the C program that the inet_aton() function is available
	to parse IP address "dotted-quad" strings.

d_ino64_t (io64.U):
	This symbol will be defined if the C compiler supports ino64_t.

d_int64t (i_inttypes.U):
	This symbol will be defined if the C compiler supports int64_t.

d_iovec_s (i_sysuio.U):
	This variable conditionally defines the HAS_STRUCT_IOVEC symbol,
	which indicates that the struct iovec is supported.

d_isascii (d_isascii.U):
	This variable conditionally defines the HAS_ISASCII constant,
	which indicates to the C program that isascii() is available.

d_killpg (d_killpg.U):
	This variable conditionally defines the HAS_KILLPG symbol, which
	indicates to the C program that the killpg() routine is available
	to kill process groups.

d_lchown (d_lchown.U):
	This variable conditionally defines the HAS_LCHOWN symbol, which
	indicates to the C program that the lchown() routine is available
	to operate on a symbolic link (instead of following the link).

d_link (d_link.U):
	This variable conditionally defines HAS_LINK if link() is
	available to create hard links.

d_llseek (io64.U):
	This variable conditionally defines the HAS_LLSEEK symbol, which
	indicates to the C program that the llseek() routine is available.

d_locconv (d_locconv.U):
	This variable conditionally defines HAS_LOCALECONV if localeconv() is
	available for numeric and monetary formatting conventions.

d_lockf64 (io64.U):
	This variable conditionally defines the HAS_LOCKF64 symbol, which
	indicates to the C program that the lockf64() routine is available.

d_lockf (d_lockf.U):
	This variable conditionally defines HAS_LOCKF if lockf() is
	available to do file locking.

d_longdbl (d_longdbl.U):
	This variable conditionally defines HAS_LONG_DOUBLE if 
	the long double type is supported.

d_longlong (d_longlong.U):
	This variable conditionally defines HAS_LONG_LONG if 
	the long long type is supported.

d_lseek64 (io64.U):
	This variable conditionally defines the HAS_LSEEK64 symbol, which
	indicates to the C program that the lseek64() routine is available.

d_lstat64 (io64.U):
	This variable conditionally defines the HAS_LSTAT64 symbol, which
	indicates to the C program that the lstat64() routine is available.

d_lstat (d_lstat.U):
	This variable conditionally defines HAS_LSTAT if lstat() is
	available to do file stats on symbolic links.

d_madvise (d_madvise.U):
	This variable conditionally defines HAS_MADVISE if madvise() is
	available to map a file into memory.

d_mblen (d_mblen.U):
	This variable conditionally defines the HAS_MBLEN symbol, which
	indicates to the C program that the mblen() routine is available
	to find the number of bytes in a multibye character.

d_mbstowcs (d_mbstowcs.U):
	This variable conditionally defines the HAS_MBSTOWCS symbol, which
	indicates to the C program that the mbstowcs() routine is available
	to convert a multibyte string into a wide character string.

d_mbtowc (d_mbtowc.U):
	This variable conditionally defines the HAS_MBTOWC symbol, which
	indicates to the C program that the mbtowc() routine is available
	to convert multibyte to a wide character.

d_memchr (d_memchr.U):
	This variable conditionally defines the HAS_MEMCHR symbol, which
	indicates to the C program that the memchr() routine is available
	to locate characters within a C string.

d_memcmp (d_memcmp.U):
	This variable conditionally defines the HAS_MEMCMP symbol, which
	indicates to the C program that the memcmp() routine is available
	to compare blocks of memory.

d_memcpy (d_memcpy.U):
	This variable conditionally defines the HAS_MEMCPY symbol, which
	indicates to the C program that the memcpy() routine is available
	to copy blocks of memory.

d_memmove (d_memmove.U):
	This variable conditionally defines the HAS_MEMMOVE symbol, which
	indicates to the C program that the memmove() routine is available
	to copy potentatially overlapping blocks of memory.

d_memset (d_memset.U):
	This variable conditionally defines the HAS_MEMSET symbol, which
	indicates to the C program that the memset() routine is available
	to set blocks of memory.

d_mkdir (d_mkdir.U):
	This variable conditionally defines the HAS_MKDIR symbol, which
	indicates to the C program that the mkdir() routine is available
	to create directories..

d_mkfifo (d_mkfifo.U):
	This variable conditionally defines the HAS_MKFIFO symbol, which
	indicates to the C program that the mkfifo() routine is available.

d_mktime (d_mktime.U):
	This variable conditionally defines the HAS_MKTIME symbol, which
	indicates to the C program that the mktime() routine is available.

d_mmap (d_mmap.U):
	This variable conditionally defines HAS_MMAP if mmap() is
	available to map a file into memory.

d_mprotect (d_mprotect.U):
	This variable conditionally defines HAS_MPROTECT if mprotect() is
	available to modify the access protection of a memory mapped file.

d_msg (d_msg.U):
	This variable conditionally defines the HAS_MSG symbol, which
	indicates that the entire msg*(2) library is present.

d_msg_ctrunc (d_socket.U):
	This variable conditionally defines the HAS_MSG_CTRUNC symbol,
	which indicates that the MSG_CTRUNC is available.  #ifdef is
	not enough because it may be an enum, glibc has been known to do this.

d_msg_dontroute (d_socket.U):
	This variable conditionally defines the HAS_MSG_DONTROUTE symbol,
	which indicates that the MSG_DONTROUTE is available.  #ifdef is
	not enough because it may be an enum, glibc has been known to do this.

d_msg_oob (d_socket.U):
	This variable conditionally defines the HAS_MSG_OOB symbol,
	which indicates that the MSG_OOB is available.  #ifdef is
	not enough because it may be an enum, glibc has been known to do this.

d_msg_peek (d_socket.U):
	This variable conditionally defines the HAS_MSG_PEEK symbol,
	which indicates that the MSG_PEEK is available.  #ifdef is
	not enough because it may be an enum, glibc has been known to do this.

d_msg_proxy (d_socket.U):
	This variable conditionally defines the HAS_MSG_PROXY symbol,
	which indicates that the MSG_PROXY is available.  #ifdef is
	not enough because it may be an enum, glibc has been known to do this.

d_msgctl (d_msgctl.U):
	This variable conditionally defines the HAS_MSGCTL symbol, which
	indicates to the C program that the msgctl() routine is available.

d_msgget (d_msgget.U):
	This variable conditionally defines the HAS_MSGGET symbol, which
	indicates to the C program that the msgget() routine is available.

d_msghdr_s (d_socket.U):
	This variable conditionally defines the HAS_STRUCT_MSGHDR symbol,
	which indicates that the struct msghdr is supported.

d_msgrcv (d_msgrcv.U):
	This variable conditionally defines the HAS_MSGRCV symbol, which
	indicates to the C program that the msgrcv() routine is available.

d_msgsnd (d_msgsnd.U):
	This variable conditionally defines the HAS_MSGSND symbol, which
	indicates to the C program that the msgsnd() routine is available.

d_msync (d_msync.U):
	This variable conditionally defines HAS_MSYNC if msync() is
	available to synchronize a mapped file.

d_munmap (d_munmap.U):
	This variable conditionally defines HAS_MUNMAP if munmap() is
	available to unmap a region mapped by mmap().

d_mymalloc (mallocsrc.U):
	This variable conditionally defines MYMALLOC in case other parts
	of the source want to take special action if MYMALLOC is used.
	This may include different sorts of profiling or error detection.

d_nextkey64 (dbm64.U):
	This variable conditionally defines the HAS_NEXTKEY64 symbol, which
	indicates to the C program that the nextkey64() routine is available.

d_nice (d_nice.U):
	This variable conditionally defines the HAS_NICE symbol, which
	indicates to the C program that the nice() routine is available.

d_off64_t (io64.U):
	This symbol will be defined if the C compiler supports off64_t.

d_offset_t (io64.U):
	This symbol will be defined if the C compiler supports offset_t.

d_old_pthread_create_joinable (d_pthrattrj.U):
	This variable conditionally defines pthread_create_joinable.
	undef if pthread.h defines PTHREAD_CREATE_JOINABLE.

d_oldpthreads (usethreads.U):
	This variable conditionally defines the OLD_PTHREADS_API symbol,
	and indicates that Perl should be built to use the old
	draft POSIX threads API.  This is only potneially meaningful if
	usethreads is set.

d_oldsock (d_socket.U):
	This variable conditionally defines the OLDSOCKET symbol, which
	indicates that the BSD socket interface is based on 4.1c and not 4.2.

d_open3 (d_open3.U):
	This variable conditionally defines the HAS_OPEN3 manifest constant,
	which indicates to the C program that the 3 argument version of
	the open(2) function is available.

d_open64 (io64.U):
	This variable conditionally defines the HAS_OPEN64 symbol, which
	indicates to the C program that the open64() routine is available.

d_opendir64 (io64.U):
	This variable conditionally defines the HAS_OPENDIR64 symbol, which
	indicates to the C program that the opendir64() routine is available.

d_pathconf (d_pathconf.U):
	This variable conditionally defines the HAS_PATHCONF symbol, which
	indicates to the C program that the pathconf() routine is available
	to determine file-system related limits and options associated
	with a given filename.

d_pause (d_pause.U):
	This variable conditionally defines the HAS_PAUSE symbol, which
	indicates to the C program that the pause() routine is available
	to suspend a process until a signal is received.

d_phostname (d_gethname.U):
	This variable conditionally defines the HAS_PHOSTNAME symbol, which
	contains the shell command which, when fed to popen(), may be
	used to derive the host name.

d_pipe (d_pipe.U):
	This variable conditionally defines the HAS_PIPE symbol, which
	indicates to the C program that the pipe() routine is available
	to create an inter-process channel.

d_poll (d_poll.U):
	This variable conditionally defines the HAS_POLL symbol, which
	indicates to the C program that the poll() routine is available
	to poll active file descriptors.

d_portable (d_portable.U):
	This variable conditionally defines the PORTABLE symbol, which
	indicates to the C program that it should not assume that it is
	running on the machine it was compiled on.

d_pthread_yield (d_pthread_y.U):
	This variable conditionally defines the HAS_PTHREAD_YIELD
	symbol if the pthread_yield routine is available to yield
	the execution of the current thread.

d_pwage (i_pwd.U):
	This variable conditionally defines PWAGE, which indicates
	that struct passwd contains pw_age.

d_pwchange (i_pwd.U):
	This variable conditionally defines PWCHANGE, which indicates
	that struct passwd contains pw_change.

d_pwclass (i_pwd.U):
	This variable conditionally defines PWCLASS, which indicates
	that struct passwd contains pw_class.

d_pwcomment (i_pwd.U):
	This variable conditionally defines PWCOMMENT, which indicates
	that struct passwd contains pw_comment.

d_pwexpire (i_pwd.U):
	This variable conditionally defines PWEXPIRE, which indicates
	that struct passwd contains pw_expire.

d_pwgecos (i_pwd.U):
	This variable conditionally defines PWGECOS, which indicates
	that struct passwd contains pw_gecos.

d_pwpasswd (i_pwd.U):
	This variable conditionally defines PWPASSWD, which indicates
	that struct passwd contains pw_passwd.

d_pwquota (i_pwd.U):
	This variable conditionally defines PWQUOTA, which indicates
	that struct passwd contains pw_quota.

d_readdir64 (io64.U):
	This variable conditionally defines the HAS_READDIR64 symbol, which
	indicates to the C program that the readdir64() routine is available.

d_readdir (d_readdir.U):
	This variable conditionally defines HAS_READDIR if readdir() is
	available to read directory entries.

d_readlink (d_readlink.U):
	This variable conditionally defines the HAS_READLINK symbol, which
	indicates to the C program that the readlink() routine is available
	to read the value of a symbolic link.

d_readv (d_readv.U):
	This variable conditionally defines the HAS_READV symbol, which
	indicates to the C program that the readv() routine is available.

d_recvmsg (d_socket.U):
	This variable conditionally defines the HAS_RECVMSG symbol,
	which indicates that the recvmsg is supported.

d_rename (d_rename.U):
	This variable conditionally defines the HAS_RENAME symbol, which
	indicates to the C program that the rename() routine is available
	to rename files.

d_rewinddir (d_readdir.U):
	This variable conditionally defines HAS_REWINDDIR if rewinddir() is
	available.

d_rmdir (d_rmdir.U):
	This variable conditionally defines HAS_RMDIR if rmdir() is
	available to remove directories.

d_safebcpy (d_safebcpy.U):
	This variable conditionally defines the HAS_SAFE_BCOPY symbol if
	the bcopy() routine can do overlapping copies.

d_safemcpy (d_safemcpy.U):
	This variable conditionally defines the HAS_SAFE_MEMCPY symbol if
	the memcpy() routine can do overlapping copies.

d_sanemcmp (d_sanemcmp.U):
	This variable conditionally defines the HAS_SANE_MEMCMP symbol if
	the memcpy() routine is available and can be used to compare relative
	magnitudes of chars with their high bits set.

d_sched_yield (d_pthread_y.U):
	This variable conditionally defines the HAS_SCHED_YIELD
	symbol if the sched_yield routine is available to yield
	the execution of the current thread.

d_scm_rights (d_socket.U):
	This variable conditionally defines the HAS_SCM_RIGHTS symbol,
	which indicates that the SCM_RIGHTS is available.  #ifdef is
	not enough because it may be an enum, glibc has been known to do this.

d_seekdir64 (io64.U):
	This variable conditionally defines the HAS_SEEKDIR64 symbol, which
	indicates to the C program that the seekdir64() routine is available.

d_seekdir (d_readdir.U):
	This variable conditionally defines HAS_SEEKDIR if seekdir() is
	available.

d_select (d_select.U):
	This variable conditionally defines HAS_SELECT if select() is
	available to select active file descriptors. A <sys/time.h>
	inclusion may be necessary for the timeout field.

d_sem (d_sem.U):
	This variable conditionally defines the HAS_SEM symbol, which
	indicates that the entire sem*(2) library is present.

d_semctl (d_semctl.U):
	This variable conditionally defines the HAS_SEMCTL symbol, which
	indicates to the C program that the semctl() routine is available.

d_semctl_semid_ds (d_union_semun.U):
	This variable conditionally defines USE_SEMCTL_SEMID_DS, which
	indicates that struct semid_ds * is to be used for semctl IPC_STAT.

d_semctl_semun (d_union_semun.U):
	This variable conditionally defines USE_SEMCTL_SEMUN, which
	indicates that union semun is to be used for semctl IPC_STAT.

d_semget (d_semget.U):
	This variable conditionally defines the HAS_SEMGET symbol, which
	indicates to the C program that the semget() routine is available.

d_semop (d_semop.U):
	This variable conditionally defines the HAS_SEMOP symbol, which
	indicates to the C program that the semop() routine is available.

d_sendmsg (d_socket.U):
	This variable conditionally defines the HAS_SENDMSG symbol,
	which indicates that the sendmsg is supported.

d_setegid (d_setegid.U):
	This variable conditionally defines the HAS_SETEGID symbol, which
	indicates to the C program that the setegid() routine is available
	to change the effective gid of the current program.

d_seteuid (d_seteuid.U):
	This variable conditionally defines the HAS_SETEUID symbol, which
	indicates to the C program that the seteuid() routine is available
	to change the effective uid of the current program.

d_setgrent (d_setgrent.U):
	This variable conditionally defines the HAS_SETGRENT symbol, which
	indicates to the C program that the setgrent() routine is available
	for initializing sequential access to the group database.

d_setgrps (d_setgrps.U):
	This variable conditionally defines the HAS_SETGROUPS symbol, which
	indicates to the C program that the setgroups() routine is available
	to set the list of process groups.

d_sethent (d_sethent.U):
	This variable conditionally defines HAS_SETHOSTENT if sethostent() is
	available.

d_setlinebuf (d_setlnbuf.U):
	This variable conditionally defines the HAS_SETLINEBUF symbol, which
	indicates to the C program that the setlinebuf() routine is available
	to change stderr or stdout from block-buffered or unbuffered to a
	line-buffered mode.

d_setlocale (d_setlocale.U):
	This variable conditionally defines HAS_SETLOCALE if setlocale() is
	available to handle locale-specific ctype implementations.

d_setnent (d_setnent.U):
	This variable conditionally defines HAS_SETNETENT if setnetent() is
	available.

d_setpent (d_setpent.U):
	This variable conditionally defines HAS_SETPROTOENT if setprotoent() is
	available.

d_setpgid (d_setpgid.U):
	This variable conditionally defines the HAS_SETPGID symbol if the
	setpgid(pid, gpid) function is available to set process group ID.

d_setpgrp2 (d_setpgrp2.U):
	This variable conditionally defines the HAS_SETPGRP2 symbol, which
	indicates to the C program that the setpgrp2() (as in DG/UX) routine
	is available to set the current process group.

d_setpgrp (d_setpgrp.U):
	This variable conditionally defines HAS_SETPGRP if setpgrp() is
	available to set the current process group.

d_setprior (d_setprior.U):
	This variable conditionally defines HAS_SETPRIORITY if setpriority()
	is available to set a process's priority.

d_setpwent (d_setpwent.U):
	This variable conditionally defines the HAS_SETPWENT symbol, which
	indicates to the C program that the setpwent() routine is available
	for initializing sequential access to the passwd database.

d_setregid (d_setregid.U):
	This variable conditionally defines HAS_SETREGID if setregid() is
	available to change the real and effective gid of the current
	process.

d_setresgid (d_setregid.U):
	This variable conditionally defines HAS_SETRESGID if setresgid() is
	available to change the real, effective and saved gid of the current
	process.

d_setresuid (d_setreuid.U):
	This variable conditionally defines HAS_SETREUID if setresuid() is
	available to change the real, effective and saved uid of the current
	process.

d_setreuid (d_setreuid.U):
	This variable conditionally defines HAS_SETREUID if setreuid() is
	available to change the real and effective uid of the current
	process.

d_setrgid (d_setrgid.U):
	This variable conditionally defines the HAS_SETRGID symbol, which
	indicates to the C program that the setrgid() routine is available
	to change the real gid of the current program.

d_setruid (d_setruid.U):
	This variable conditionally defines the HAS_SETRUID symbol, which
	indicates to the C program that the setruid() routine is available
	to change the real uid of the current program.

d_setsent (d_setsent.U):
	This variable conditionally defines HAS_SETSERVENT if setservent() is
	available.

d_setsid (d_setsid.U):
	This variable conditionally defines HAS_SETSID if setsid() is
	available to set the process group ID.

d_setspent (d_setspent.U):
	This variable conditionally defines HAS_SETSPENT if setspent() is
	available to initialize the scan of SysV shadow password entries.

d_setvbuf (d_setvbuf.U):
	This variable conditionally defines the HAS_SETVBUF symbol, which
	indicates to the C program that the setvbuf() routine is available
	to change buffering on an open stdio stream.

d_sfio (d_sfio.U):
	This variable conditionally defines the USE_SFIO symbol,
	and indicates whether sfio is available (and should be used).

d_shm (d_shm.U):
	This variable conditionally defines the HAS_SHM symbol, which
	indicates that the entire shm*(2) library is present.

d_shmat (d_shmat.U):
	This variable conditionally defines the HAS_SHMAT symbol, which
	indicates to the C program that the shmat() routine is available.

d_shmatprototype (d_shmat.U):
	This variable conditionally defines the HAS_SHMAT_PROTOTYPE 
	symbol, which indicates that sys/shm.h has a prototype for
	shmat.

d_shmctl (d_shmctl.U):
	This variable conditionally defines the HAS_SHMCTL symbol, which
	indicates to the C program that the shmctl() routine is available.

d_shmdt (d_shmdt.U):
	This variable conditionally defines the HAS_SHMDT symbol, which
	indicates to the C program that the shmdt() routine is available.

d_shmget (d_shmget.U):
	This variable conditionally defines the HAS_SHMGET symbol, which
	indicates to the C program that the shmget() routine is available.

d_sigaction (d_sigaction.U):
	This variable conditionally defines the HAS_SIGACTION symbol, which
	indicates that the Vr4 sigaction() routine is available.

d_sigsetjmp (d_sigsetjmp.U):
	This variable conditionally defines the HAS_SIGSETJMP symbol,
	which indicates that the sigsetjmp() routine is available to
	call setjmp() and optionally save the process's signal mask.

d_socket (d_socket.U):
	This variable conditionally defines HAS_SOCKET, which indicates
	that the BSD socket interface is supported.

d_sockpair (d_socket.U):
	This variable conditionally defines the HAS_SOCKETPAIR symbol, which
	indicates that the BSD socketpair() is supported.

d_stat64 (io64.U):
	This variable conditionally defines the HAS_STAT64 symbol, which
	indicates to the C program that the stat64() routine is available.

d_statblks (d_statblks.U):
	This variable conditionally defines USE_STAT_BLOCKS
	if this system has a stat structure declaring
	st_blksize and st_blocks.

d_statfs (d_statfs.U):
	This variable conditionally defines the HAS_STATFS symbol, which
	indicates to the C program that the statfs() routine is available.

d_statfsflags (d_statfs.U):
	This variable conditionally defines the HAS_STRUCT_STATFS_FLAGS
	symbol, which indicates to struct statfs from has f_flags member.
	This kind of struct statfs is coming from sys/mount.h (BSD),
	not from sys/statfs.h (SYSV).

d_statvfs (d_statvfs.U):
	This variable conditionally defines the HAS_STATVFS symbol, which
	indicates to the C program that the statvfs() routine is available.

d_stdio_cnt_lval (d_stdstdio.U):
	This variable conditionally defines STDIO_CNT_LVALUE if the
	FILE_cnt macro can be used as an lvalue.

d_stdio_ptr_lval (d_stdstdio.U):
	This variable conditionally defines STDIO_PTR_LVALUE if the
	FILE_ptr macro can be used as an lvalue.

d_stdio_stream_array (stdio_streams.U):
	This variable tells whether there is an array holding
	the stdio streams.

d_stdiobase (d_stdstdio.U):
	This variable conditionally defines USE_STDIO_BASE if this system
	has a FILE structure declaring a usable _base field (or equivalent)
	in stdio.h.

d_stdstdio (d_stdstdio.U):
	This variable conditionally defines USE_STDIO_PTR if this system
	has a FILE structure declaring usable _ptr and _cnt fields (or
	equivalent) in stdio.h.

d_store64 (dbm64.U):
	This variable conditionally defines the HAS_STORE64 symbol, which
	indicates to the C program that the store64() routine is available.

d_strchr (d_strchr.U):
	This variable conditionally defines HAS_STRCHR if strchr() and
	strrchr() are available for string searching.

d_strcoll (d_strcoll.U):
	This variable conditionally defines HAS_STRCOLL if strcoll() is
	available to compare strings using collating information.

d_strctcpy (d_strctcpy.U):
	This variable conditionally defines the USE_STRUCT_COPY symbol, which
	indicates to the C program that this C compiler knows how to copy
	structures.

d_strerrm (d_strerror.U):
	This variable holds what Strerrr is defined as to translate an error
	code condition into an error message string. It could be 'strerror'
	or a more complex macro emulating strrror with sys_errlist[], or the
	"unknown" string when both strerror and sys_errlist are missing.

d_strerror (d_strerror.U):
	This variable conditionally defines HAS_STRERROR if strerror() is
	available to translate error numbers to strings.

d_strtod (d_strtod.U):
	This variable conditionally defines the HAS_STRTOD symbol, which
	indicates to the C program that the strtod() routine is available
	to provide better numeric string conversion than atof().

d_strtol (d_strtol.U):
	This variable conditionally defines the HAS_STRTOL symbol, which
	indicates to the C program that the strtol() routine is available
	to provide better numeric string conversion than atoi() and friends.

d_strtoul (d_strtoul.U):
	This variable conditionally defines the HAS_STRTOUL symbol, which
	indicates to the C program that the strtoul() routine is available
	to provide conversion of strings to unsigned long.

d_strxfrm (d_strxfrm.U):
	This variable conditionally defines HAS_STRXFRM if strxfrm() is
	available to transform strings.

d_suidsafe (d_dosuid.U):
	This variable conditionally defines SETUID_SCRIPTS_ARE_SECURE_NOW
	if setuid scripts can be secure.  This test looks in /dev/fd/.

d_symlink (d_symlink.U):
	This variable conditionally defines the HAS_SYMLINK symbol, which
	indicates to the C program that the symlink() routine is available
	to create symbolic links.

d_syscall (d_syscall.U):
	This variable conditionally defines HAS_SYSCALL if syscall() is
	available call arbitrary system calls.

d_sysconf (d_sysconf.U):
	This variable conditionally defines the HAS_SYSCONF symbol, which
	indicates to the C program that the sysconf() routine is available
	to determine system related limits and options.

d_sysernlst (d_strerror.U):
	This variable conditionally defines HAS_SYS_ERRNOLIST if sys_errnolist[]
	is available to translate error numbers to the symbolic name.

d_syserrlst (d_strerror.U):
	This variable conditionally defines HAS_SYS_ERRLIST if sys_errlist[] is
	available to translate error numbers to strings.

d_system (d_system.U):
	This variable conditionally defines HAS_SYSTEM if system() is
	available to issue a shell command.

d_tcgetpgrp (d_tcgtpgrp.U):
	This variable conditionally defines the HAS_TCGETPGRP symbol, which
	indicates to the C program that the tcgetpgrp() routine is available.
	to get foreground process group ID.

d_tcsetpgrp (d_tcstpgrp.U):
	This variable conditionally defines the HAS_TCSETPGRP symbol, which
	indicates to the C program that the tcsetpgrp() routine is available
	to set foreground process group ID.

d_telldir64 (io64.U):
	This variable conditionally defines the HAS_TELLDIR64 symbol, which
	indicates to the C program that the telldir64() routine is available.

d_telldir (d_readdir.U):
	This variable conditionally defines HAS_TELLDIR if telldir() is
	available.

d_telldirproto (d_telldirproto.U):
	This variable conditionally defines the HAS_TELLDIR_PROTO symbol,
	which indicates to the C program that the system provides
	a prototype for the telldir() function.  Otherwise, it is
	up to the program to supply one.

d_time (d_time.U):
	This variable conditionally defines the HAS_TIME symbol, which indicates
	that the time() routine exists.  The time() routine is normaly
	provided on UNIX systems.

d_times (d_times.U):
	This variable conditionally defines the HAS_TIMES symbol, which indicates
	that the times() routine exists.  The times() routine is normaly
	provided on UNIX systems. You may have to include <sys/times.h>.

d_tmpfile64 (stdio64.U):
	This variable conditionally defines the HAS_TMPFILE64 symbol, which
	indicates to the C program that the tmpfile64() routine is available.

d_truncate64 (io64.U):
	This variable conditionally defines the HAS_TRUNCATE64 symbol, which
	indicates to the C program that the truncate64() routine is available.

d_truncate (d_truncate.U):
	This variable conditionally defines HAS_TRUNCATE if truncate() is
	available to truncate files.

d_tzname (d_tzname.U):
	This variable conditionally defines HAS_TZNAME if tzname[] is
	available to access timezone names.

d_umask (d_umask.U):
	This variable conditionally defines the HAS_UMASK symbol, which
	indicates to the C program that the umask() routine is available.
	to set and get the value of the file creation mask.

d_uname (d_gethname.U):
	This variable conditionally defines the HAS_UNAME symbol, which
	indicates to the C program that the uname() routine may be
	used to derive the host name.

d_union_semun (d_union_semun.U):
	This variable conditionally defines HAS_UNION_SEMUN if the
	union semun is defined by including <sys/sem.h>.

d_vfork (d_vfork.U):
	This variable conditionally defines the HAS_VFORK symbol, which
	indicates the vfork() routine is available.

d_void_closedir (d_closedir.U):
	This variable conditionally defines VOID_CLOSEDIR if closedir()
	does not return a value.

d_voidsig (d_voidsig.U):
	This variable conditionally defines VOIDSIG if this system
	declares "void (*signal(...))()" in signal.h.  The old way was to
	declare it as "int (*signal(...))()".

d_voidtty (i_sysioctl.U):
	This variable conditionally defines USE_IOCNOTTY to indicate that the
	ioctl() call with TIOCNOTTY should be used to void tty association.
	Otherwise (on USG probably), it is enough to close the standard file
	decriptors and do a setpgrp().

d_volatile (d_volatile.U):
	This variable conditionally defines the HASVOLATILE symbol, which
	indicates to the C program that this C compiler knows about the
	volatile declaration.

d_vprintf (d_vprintf.U):
	This variable conditionally defines the HAS_VPRINTF symbol, which
	indicates to the C program that the vprintf() routine is available
	to printf with a pointer to an argument list.

d_wait4 (d_wait4.U):
	This variable conditionally defines the HAS_WAIT4 symbol, which
	indicates the wait4() routine is available.

d_waitpid (d_waitpid.U):
	This variable conditionally defines HAS_WAITPID if waitpid() is
	available to wait for child process.

d_wcstombs (d_wcstombs.U):
	This variable conditionally defines the HAS_WCSTOMBS symbol, which
	indicates to the C program that the wcstombs() routine is available
	to convert wide character strings to multibyte strings.

d_wctomb (d_wctomb.U):
	This variable conditionally defines the HAS_WCTOMB symbol, which
	indicates to the C program that the wctomb() routine is available
	to convert a wide character to a multibyte.

d_writev (d_writev.U):
	This variable conditionally defines the HAS_WRITEV symbol, which
	indicates to the C program that the writev() routine is available.

d_xenix (Guess.U):
	This variable conditionally defines the symbol XENIX, which alerts
	the C program that it runs under Xenix.

date (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the date program.  After Configure runs,
	the value is reset to a plain "date" and is not useful.

db_hashtype (i_db.U):
	This variable contains the type of the hash structure element
	in the <db.h> header file.  In older versions of DB, it was
	int, while in newer ones it is u_int32_t.

db_prefixtype (i_db.U):
	This variable contains the type of the prefix structure element
	in the <db.h> header file.  In older versions of DB, it was
	int, while in newer ones it is size_t.

defvoidused (voidflags.U):
	This variable contains the default value of the VOIDUSED symbol (15).

direntrytype (i_dirent.U):
	This symbol is set to 'struct direct' or 'struct dirent' depending on
	whether dirent is available or not. You should use this pseudo type to
	portably declare your directory entries.

dlext (dlext.U):
	This variable contains the extension that is to be used for the
	dynamically loaded modules that perl generaties.

dlsrc (dlsrc.U):
	This variable contains the name of the dynamic loading file that
	will be used with the package.

doublesize (doublesize.U):
	This variable contains the value of the DOUBLESIZE symbol, which
	indicates to the C program how many bytes there are in a double.

drand01 (randfunc.U):
	Indicates the macro to be used to generate normalized
	random numbers.  Uses randfunc, often divided by
	(double) (((unsigned long) 1 << randbits)) in order to
	normalize the result.
	In C programs, the macro 'Drand01' is mapped to drand01.

dynamic_ext (Extensions.U):
	This variable holds a list of XS extension files we want to
	link dynamically into the package.  It is used by Makefile.

eagain (nblock_io.U):
	This variable bears the symbolic errno code set by read() when no
	data is present on the file and non-blocking I/O was enabled (otherwise,
	read() blocks naturally).

ebcdic (ebcdic.U):
	This variable conditionally defines EBCDIC if this
	system uses EBCDIC encoding.  Among other things, this
	means that the character ranges are not contiguous.
	See trnl.U

echo (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the echo program.  After Configure runs,
	the value is reset to a plain "echo" and is not useful.

egrep (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the egrep program.  After Configure runs,
	the value is reset to a plain "egrep" and is not useful.

emacs (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

eunicefix (Init.U):
	When running under Eunice this variable contains a command which will
	convert a shell script to the proper form of text file for it to be
	executable by the shell.  On other systems it is a no-op.

exe_ext (Unix.U):
	This is an old synonym for _exe.

expr (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the expr program.  After Configure runs,
	the value is reset to a plain "expr" and is not useful.

extensions (Extensions.U):
	This variable holds a list of all extension files (both XS and
	non-xs linked into the package.  It is propagated to Config.pm
	and is typically used to test whether a particular extesion 
	is available.

fflushall (fflushall.U):
	This symbol, if defined, tells that to flush
	all pending stdio output one must loop through all
	the stdio file handles stored in an array and fflush them.
	Note that if fflushNULL is defined, fflushall will not
	even be probed for and will be left undefined.

fflushNULL (fflushall.U):
	This symbol, if defined, tells that fflush(NULL) does flush
	all pending stdio output.

find (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

firstmakefile (Unix.U):
	This variable defines the first file searched by make.  On unix,
	it is makefile (then Makefile).  On case-insensitive systems,
	it might be something else.  This is only used to deal with
	convoluted make depend tricks.

flex (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

fpostype (fpostype.U):
	This variable defines Fpos_t to be something like fpost_t, long, 
	uint, or whatever type is used to declare file positions in libc.

freetype (mallocsrc.U):
	This variable contains the return type of free().  It is usually
	void, but occasionally int.

full_ar (Loc_ar.U):
	This variable contains the full pathname to 'ar', whether or
	not the user has specified 'portability'.  This is only used
	in the Makefile.SH.

full_csh (d_csh.U):
	This variable contains the full pathname to 'csh', whether or
	not the user has specified 'portability'.  This is only used
	in the compiled C program, and we assume that all systems which
	can share this executable will have the same full pathname to
	'csh.'

full_sed (Loc_sed.U):
	This variable contains the full pathname to 'sed', whether or
	not the user has specified 'portability'.  This is only used
	in the compiled C program, and we assume that all systems which
	can share this executable will have the same full pathname to
	'sed.'

gccversion (cc.U):
	If GNU cc (gcc) is used, this variable holds '1' or '2' to 
	indicate whether the compiler is version 1 or 2.  This is used in
	setting some of the default cflags.  It is set to '' if not gcc.

gidtype (gidtype.U):
	This variable defines Gid_t to be something like gid_t, int,
	ushort, or whatever type is used to declare the return type
	of getgid().  Typically, it is the type of group ids in the kernel.

glibpth (libpth.U):
	This variable holds the general path (space-separated) used to
	find libraries.  It may contain directories that do not exist on
	this platform, libpth is the cleaned-up version.

grep (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the grep program.  After Configure runs,
	the value is reset to a plain "grep" and is not useful.

groupcat (nis.U):
	This variable contains a command that produces the text of the
	/etc/group file.  This is normally "cat /etc/group", but can be
	"ypcat group" when NIS is used.

groupstype (groupstype.U):
	This variable defines Groups_t to be something like gid_t, int, 
	ushort, or whatever type is used for the second argument to
	getgroups() and setgroups().  Usually, this is the same as
	gidtype (gid_t), but sometimes it isn't.

gzip (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the gzip program.  After Configure runs,
	the value is reset to a plain "gzip" and is not useful.

h_fcntl (h_fcntl.U):
	This is variable gets set in various places to tell i_fcntl that
	<fcntl.h> should be included.

h_sysfile (h_sysfile.U):
	This is variable gets set in various places to tell i_sys_file that
	<sys/file.h> should be included.

hint (Oldconfig.U):
	Gives the type of hints used for previous answers. May be one of
	"default", "recommended" or "previous".

hostcat (nis.U):
	This variable contains a command that produces the text of the
	/etc/hosts file.  This is normally "cat /etc/hosts", but can be
	"ypcat hosts" when NIS is used.

huge (models.U):
	This variable contains a flag which will tell the C compiler and loader
	to produce a program running with a huge memory model.  If the
	huge model is not supported, contains the flag to produce large
	model programs.  It is up to the Makefile to use this.

i_arpainet (i_arpainet.U):
	This variable conditionally defines the I_ARPA_INET symbol,
	and indicates whether a C program should include <arpa/inet.h>.

i_bsdioctl (i_sysioctl.U):
	This variable conditionally defines the I_SYS_BSDIOCTL symbol, which
	indicates to the C program that <sys/bsdioctl.h> exists and should
	be included.

i_db (i_db.U):
	This variable conditionally defines the I_DB symbol, and indicates
	whether a C program may include Berkeley's DB include file <db.h>.

i_dbm (i_dbm.U):
	This variable conditionally defines the I_DBM symbol, which
	indicates to the C program that <dbm.h> exists and should
	be included.

i_dirent (i_dirent.U):
	This variable conditionally defines I_DIRENT, which indicates
	to the C program that it should include <dirent.h>.

i_dld (i_dld.U):
	This variable conditionally defines the I_DLD symbol, which
	indicates to the C program that <dld.h> (GNU dynamic loading)
	exists and should be included.

i_dlfcn (i_dlfcn.U):
	This variable conditionally defines the I_DLFCN symbol, which
	indicates to the C program that <dlfcn.h> exists and should
	be included.

i_fcntl (i_fcntl.U):
	This variable controls the value of I_FCNTL (which tells
	the C program to include <fcntl.h>).

i_float (i_float.U):
	This variable conditionally defines the I_FLOAT symbol, and indicates
	whether a C program may include <float.h> to get symbols like DBL_MAX
	or DBL_MIN, i.e. machine dependent floating point values.

i_gdbm (i_gdbm.U):
	This variable conditionally defines the I_GDBM symbol, which
	indicates to the C program that <gdbm.h> exists and should
	be included.

i_grp (i_grp.U):
	This variable conditionally defines the I_GRP symbol, and indicates
	whether a C program should include <grp.h>.

i_inttypes (i_inttypes.U):
	This variable conditionally defines the I_INTTYPES symbol,
	and indicates whether a C program should include <inttypes.h>.

i_limits (i_limits.U):
	This variable conditionally defines the I_LIMITS symbol, and indicates
	whether a C program may include <limits.h> to get symbols like WORD_BIT
	and friends.

i_locale (i_locale.U):
	This variable conditionally defines the I_LOCALE symbol,
	and indicates whether a C program should include <locale.h>.

i_machcthr (i_machcthr.U):
	This variable conditionally defines the I_MACH_CTHREADS symbol,
	and indicates whether a C program should include <mach/cthreads.h>.

i_malloc (i_malloc.U):
	This variable conditionally defines the I_MALLOC symbol, and indicates
	whether a C program should include <malloc.h>.

i_math (i_math.U):
	This variable conditionally defines the I_MATH symbol, and indicates
	whether a C program may include <math.h>.

i_memory (i_memory.U):
	This variable conditionally defines the I_MEMORY symbol, and indicates
	whether a C program should include <memory.h>.

i_mntent (i_mntent.U):
	This variable conditionally defines the I_MNTENT symbol, and indicates
	whether a C program should include <mntent.h>.

i_ndbm (i_ndbm.U):
	This variable conditionally defines the I_NDBM symbol, which
	indicates to the C program that <ndbm.h> exists and should
	be included.

i_netdb (i_netdb.U):
	This variable conditionally defines the I_NETDB symbol, and indicates
	whether a C program should include <netdb.h>.

i_neterrno (i_neterrno.U):
	This variable conditionally defines the I_NET_ERRNO symbol, which
	indicates to the C program that <net/errno.h> exists and should
	be included.

i_netinettcp (i_netinettcp.U):
	This variable conditionally defines the I_NETINET_TCP symbol,
	and indicates whether a C program should include <netinet/tcp.h>.

i_niin (i_niin.U):
	This variable conditionally defines I_NETINET_IN, which indicates
	to the C program that it should include <netinet/in.h>. Otherwise,
	you may try <sys/in.h>.

i_poll (i_poll.U):
	This variable conditionally defines the I_POLL symbol, and indicates
	whether a C program should include <poll.h>.

i_pthread (i_pthread.U):
	This variable conditionally defines the I_PTHREADEAD symbol,
	and indicates whether a C program should include <pthread.h>.

i_pwd (i_pwd.U):
	This variable conditionally defines I_PWD, which indicates
	to the C program that it should include <pwd.h>.

i_rpcsvcdbm (i_dbm.U):
	This variable conditionally defines the I_RPCSVC_DBM symbol, which
	indicates to the C program that <rpcsvc/dbm.h> exists and should
	be included.  Some System V systems might need this instead of <dbm.h>.

i_sfio (i_sfio.U):
	This variable conditionally defines the I_SFIO symbol,
	and indicates whether a C program should include <sfio.h>.

i_sgtty (i_termio.U):
	This variable conditionally defines the I_SGTTY symbol, which
	indicates to the C program that it should include <sgtty.h> rather
	than <termio.h>.

i_shadow (i_shadow.U):
	This variable conditionally defines the I_SHADOW symbol, and indicates
	whether a C program should include <shadow.h>.

i_socks (i_socks.U):
	This variable conditionally defines the I_SOCKS symbol, and indicates
	whether a C program should include <socks.h>.

i_stdarg (i_varhdr.U):
	This variable conditionally defines the I_STDARG symbol, which
	indicates to the C program that <stdarg.h> exists and should
	be included.

i_stddef (i_stddef.U):
	This variable conditionally defines the I_STDDEF symbol, which
	indicates to the C program that <stddef.h> exists and should
	be included.

i_stdlib (i_stdlib.U):
	This variable conditionally defines the I_STDLIB symbol, which
	indicates to the C program that <stdlib.h> exists and should
	be included.

i_string (i_string.U):
	This variable conditionally defines the I_STRING symbol, which
	indicates that <string.h> should be included rather than <strings.h>.

i_sysaccess (i_sysaccess.U):
	This variable conditionally defines the I_SYS_ACCESS symbol,
	and indicates whether a C program should include <sys/access.h>.

i_sysdir (i_sysdir.U):
	This variable conditionally defines the I_SYS_DIR symbol, and indicates
	whether a C program should include <sys/dir.h>.

i_sysfile (i_sysfile.U):
	This variable conditionally defines the I_SYS_FILE symbol, and indicates
	whether a C program should include <sys/file.h> to get R_OK and friends.

i_sysfilio (i_sysioctl.U):
	This variable conditionally defines the I_SYS_FILIO symbol, which
	indicates to the C program that <sys/filio.h> exists and should
	be included in preference to <sys/ioctl.h>.

i_sysin (i_niin.U):
	This variable conditionally defines I_SYS_IN, which indicates
	to the C program that it should include <sys/in.h> instead of
	<netinet/in.h>.

i_sysioctl (i_sysioctl.U):
	This variable conditionally defines the I_SYS_IOCTL symbol, which
	indicates to the C program that <sys/ioctl.h> exists and should
	be included.

i_sysmman (i_sysmman.U):
	This variable conditionally defines the I_SYS_MMAN symbol, and
	indicates whether a C program should include <sys/mman.h>.

i_sysmount (i_sysmount.U):
	This variable conditionally defines the I_SYSMOUNT symbol,
	and indicates whether a C program should include <sys/mount.h>.

i_sysndir (i_sysndir.U):
	This variable conditionally defines the I_SYS_NDIR symbol, and indicates
	whether a C program should include <sys/ndir.h>.

i_sysparam (i_sysparam.U):
	This variable conditionally defines the I_SYS_PARAM symbol, and indicates
	whether a C program should include <sys/param.h>.

i_sysresrc (i_sysresrc.U):
	This variable conditionally defines the I_SYS_RESOURCE symbol,
	and indicates whether a C program should include <sys/resource.h>.

i_syssecrt (i_syssecrt.U):
	This variable conditionally defines the I_SYS_SECURITY symbol,
	and indicates whether a C program should include <sys/security.h>.

i_sysselct (i_sysselct.U):
	This variable conditionally defines I_SYS_SELECT, which indicates
	to the C program that it should include <sys/select.h> in order to
	get the definition of struct timeval.

i_syssockio (i_sysioctl.U):
	This variable conditionally defines I_SYS_SOCKIO to indicate to the
	C program that socket ioctl codes may be found in <sys/sockio.h>
	instead of <sys/ioctl.h>.

i_sysstat (i_sysstat.U):
	This variable conditionally defines the I_SYS_STAT symbol,
	and indicates whether a C program should include <sys/stat.h>.

i_sysstatvfs (i_sysstatvfs.U):
	This variable conditionally defines the I_SYSSTATVFS symbol,
	and indicates whether a C program should include <sys/statvfs.h>.

i_systime (i_time.U):
	This variable conditionally defines I_SYS_TIME, which indicates
	to the C program that it should include <sys/time.h>.

i_systimek (i_time.U):
	This variable conditionally defines I_SYS_TIME_KERNEL, which
	indicates to the C program that it should include <sys/time.h>
	with KERNEL defined.

i_systimes (i_systimes.U):
	This variable conditionally defines the I_SYS_TIMES symbol, and indicates
	whether a C program should include <sys/times.h>.

i_systypes (i_systypes.U):
	This variable conditionally defines the I_SYS_TYPES symbol,
	and indicates whether a C program should include <sys/types.h>.

i_sysuio (i_sysuio.U):
	This variable conditionally defines the I_SYSUIO symbol, and indicates
	whether a C program should include <sys/uio.h>.

i_sysun (i_sysun.U):
	This variable conditionally defines I_SYS_UN, which indicates
	to the C program that it should include <sys/un.h> to get UNIX
	domain socket definitions.

i_syswait (i_syswait.U):
	This variable conditionally defines I_SYS_WAIT, which indicates
	to the C program that it should include <sys/wait.h>.

i_termio (i_termio.U):
	This variable conditionally defines the I_TERMIO symbol, which
	indicates to the C program that it should include <termio.h> rather
	than <sgtty.h>.

i_termios (i_termio.U):
	This variable conditionally defines the I_TERMIOS symbol, which
	indicates to the C program that the POSIX <termios.h> file is
	to be included.

i_time (i_time.U):
	This variable conditionally defines I_TIME, which indicates
	to the C program that it should include <time.h>.

i_unistd (i_unistd.U):
	This variable conditionally defines the I_UNISTD symbol, and indicates
	whether a C program should include <unistd.h>.

i_utime (i_utime.U):
	This variable conditionally defines the I_UTIME symbol, and indicates
	whether a C program should include <utime.h>.

i_values (i_values.U):
	This variable conditionally defines the I_VALUES symbol, and indicates
	whether a C program may include <values.h> to get symbols like MAXLONG
	and friends.

i_varargs (i_varhdr.U):
	This variable conditionally defines I_VARARGS, which indicates
	to the C program that it should include <varargs.h>.

i_varhdr (i_varhdr.U):
	Contains the name of the header to be included to get va_dcl definition.
	Typically one of varargs.h or stdarg.h.

i_vfork (i_vfork.U):
	This variable conditionally defines the I_VFORK symbol, and indicates
	whether a C program should include vfork.h.

ignore_versioned_solibs (libs.U):
	This variable should be non-empty if non-versioned shared
	libraries (libfoo.so.x.y) are to be ignored (because they
	cannot be linked against).

incpath (usrinc.U):
	This variable must preceed the normal include path to get hte
	right one, as in "$incpath/usr/include" or "$incpath/usr/lib".
	Value can be "" or "/bsd43" on mips.

inews (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

installarchlib (archlib.U):
	This variable is really the same as archlibexp but may differ on
	those systems using AFS. For extra portability, only this variable
	should be used in makefiles.

installbin (bin.U):
	This variable is the same as binexp unless AFS is running in which case
	the user is explicitely prompted for it. This variable should always
	be used in your makefiles for maximum portability.

installman1dir (man1dir.U):
	This variable is really the same as man1direxp, unless you are using
	AFS in which case it points to the read/write location whereas
	man1direxp only points to the read-only access location. For extra
	portability, you should only use this variable within your makefiles.

installman3dir (man3dir.U):
	This variable is really the same as man3direxp, unless you are using
	AFS in which case it points to the read/write location whereas
	man3direxp only points to the read-only access location. For extra
	portability, you should only use this variable within your makefiles.

installprefix (installprefix.U):
	This variable holds the name of the directory below which 
	"make install" will install the package.  For most users, this
	is the same as prefix.  However, it is useful for
	installing the software into a different (usually temporary)
	location after which it can be bundled up and moved somehow
	to the final location specified by prefix.

installprefixexp (installprefix.U):
	This variable holds the full absolute path of installprefix
	with all ~-expansion done.

installprivlib (privlib.U):
	This variable is really the same as privlibexp but may differ on
	those systems using AFS. For extra portability, only this variable
	should be used in makefiles.

installscript (scriptdir.U):
	This variable is usually the same as scriptdirexp, unless you are on
	a system running AFS, in which case they may differ slightly. You
	should always use this variable within your makefiles for portability.

installsitearch (sitearch.U):
	This variable is really the same as sitearchexp but may differ on
	those systems using AFS. For extra portability, only this variable
	should be used in makefiles.

installsitelib (sitelib.U):
	This variable is really the same as sitelibexp but may differ on
	those systems using AFS. For extra portability, only this variable
	should be used in makefiles.

installstyle (installstyle.U):
	This variable describes the "style" of the perl installation.
	This is intended to be useful for tools that need to
	manipulate entire perl distributions.  Perl itself doesn't use
	this to find its libraries -- the library directories are
	stored directly in Config.pm.  Currently, there are only two
	styles:  "lib" and "lib/perl5".  The default library locations
	(e.g. privlib, sitelib) are either $prefix/lib or
	$prefix/lib/perl5.  The former is useful if $prefix is a
	directory dedicated to perl (e.g. /opt/perl), while the latter
	is useful if $prefix is shared by many packages, e.g. if
	$prefix=/usr/local.
		This may later be extended to include other information, so
	be careful with pattern-matching on the results.
		For compatibility with perl5.005 and earlier, the default
	setting is based on whether or not $prefix contains the string
	"perl".

installusrbinperl (instubperl.U):
	This variable tells whether Perl should be installed also as
	/usr/bin/perl in addition to
	$installbin/perl

intsize (intsize.U):
	This variable contains the value of the INTSIZE symbol, which
	indicates to the C program how many bytes there are in an int.

known_extensions (Extensions.U):
	This variable holds a list of all XS extensions included in 
	the package.

ksh (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

large (models.U):
	This variable contains a flag which will tell the C compiler and loader
	to produce a program running with a large memory model.  It is up to
	the Makefile to use this.

ld (dlsrc.U):
	This variable indicates the program to be used to link
	libraries for dynamic loading.  On some systems, it is 'ld'.
	On ELF systems, it should be $cc.  Mostly, we'll try to respect
	the hint file setting.

lddlflags (dlsrc.U):
	This variable contains any special flags that might need to be
	passed to $ld to create a shared library suitable for dynamic
	loading.  It is up to the makefile to use it.  For hpux, it
	should be '-b'.  For sunos 4.1, it is empty.

ldflags (ccflags.U):
	This variable contains any additional C loader flags desired by
	the user.  It is up to the Makefile to use this.

ldlibpthname (libperl.U):
	This variable holds the name of the shared library
	search path, often LD_LIBRARY_PATH.  To get an empty
	string, the hints file must set this to 'none'.

less (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the less program.  After Configure runs,
	the value is reset to a plain "less" and is not useful.

lib_ext (Unix.U):
	This is an old synonym for _a.

libc (libc.U):
	This variable contains the location of the C library.

libperl (libperl.U):
	The perl executable is obtained by linking perlmain.c with
	libperl, any static extensions (usually just DynaLoader),
	and any other libraries needed on this system.  libperl
	is usually libperl.a, but can also be libperl.so.xxx if
	the user wishes to build a perl executable with a shared
	library.

libpth (libpth.U):
	This variable holds the general path (space-separated) used to find
	libraries. It is intended to be used by other units.

libs (libs.U):
	This variable holds the additional libraries we want to use.
	It is up to the Makefile to deal with it.

libswanted (Myinit.U):
	This variable holds a list of all the libraries we want to
	search.  The order is chosen to pick up the c library
	ahead of ucb or bsd libraries for SVR4.

line (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

lint (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

lkflags (ccflags.U):
	This variable contains any additional C partial linker flags desired by
	the user.  It is up to the Makefile to use this.

ln (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the ln program.  After Configure runs,
	the value is reset to a plain "ln" and is not useful.

lns (lns.U):
	This variable holds the name of the command to make 
	symbolic links (if they are supported).  It can be used
	in the Makefile. It is either 'ln -s' or 'ln'

locincpth (ccflags.U):
	This variable contains a list of additional directories to be
	searched by the compiler.  The appropriate '-I' directives will
	be added to ccflags.  This is intended to simplify setting
	local directories from the Configure command line.
	It's not much, but it parallels the loclibpth stuff in libpth.U.

loclibpth (libpth.U):
	This variable holds the paths (space-separated) used to find local
	libraries.  It is prepended to libpth, and is intended to be easily
	set from the command line.

longdblsize (d_longdbl.U):
	This variable contains the value of the LONG_DOUBLESIZE symbol, which
	indicates to the C program how many bytes there are in a long double,
	if this system supports long doubles.

longlongsize (d_longlong.U):
	This variable contains the value of the LONGLONGSIZE symbol, which
	indicates to the C program how many bytes there are in a long long,
	if this system supports long long.

longsize (intsize.U):
	This variable contains the value of the LONGSIZE symbol, which
	indicates to the C program how many bytes there are in a long.

lp (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

lpr (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

ls (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the ls program.  After Configure runs,
	the value is reset to a plain "ls" and is not useful.

lseeksize (lseektype.U):
	This variable defines lseektype to be something like off_t, long, 
	or whatever type is used to declare lseek offset's type in the
	kernel (which also appears to be lseek's return type).

lseektype (lseektype.U):
	This variable defines lseektype to be something like off_t, long, 
	or whatever type is used to declare lseek offset's type in the
	kernel (which also appears to be lseek's return type).

mail (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

mailx (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

make (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the make program.  After Configure runs,
	the value is reset to a plain "make" and is not useful.

make_set_make (make.U):
	Some versions of 'make' set the variable MAKE.  Others do not.
	This variable contains the string to be included in Makefile.SH
	so that MAKE is set if needed, and not if not needed.
	Possible values are:
	make_set_make='#'		# If your make program handles this for you,
	make_set_make="MAKE=$make"	# if it doesn't.
	I used a comment character so that we can distinguish a
	'set' value (from a previous config.sh or Configure '-D' option)
	from an uncomputed value.

mallocobj (mallocsrc.U):
	This variable contains the name of the malloc.o that this package
	generates, if that malloc.o is preferred over the system malloc.
	Otherwise the value is null.  This variable is intended for generating
	Makefiles.  See mallocsrc.

mallocsrc (mallocsrc.U):
	This variable contains the name of the malloc.c that comes with
	the package, if that malloc.c is preferred over the system malloc.
	Otherwise the value is null.  This variable is intended for generating
	Makefiles.

malloctype (mallocsrc.U):
	This variable contains the kind of ptr returned by malloc and realloc.

man1dir (man1dir.U):
	This variable contains the name of the directory in which manual
	source pages are to be put.  It is the responsibility of the
	Makefile.SH to get the value of this into the proper command.
	You must be prepared to do the ~name expansion yourself.

man1direxp (man1dir.U):
	This variable is the same as the man1dir variable, but is filename
	expanded at configuration time, for convenient use in makefiles.

man1ext (man1dir.U):
	This variable contains the extension that the manual page should
	have: one of 'n', 'l', or '1'.  The Makefile must supply the '.'.
	See man1dir.

man3dir (man3dir.U):
	This variable contains the name of the directory in which manual
	source pages are to be put.  It is the responsibility of the
	Makefile.SH to get the value of this into the proper command.
	You must be prepared to do the ~name expansion yourself.

man3direxp (man3dir.U):
	This variable is the same as the man3dir variable, but is filename
	expanded at configuration time, for convenient use in makefiles.

man3ext (man3dir.U):
	This variable contains the extension that the manual page should
	have: one of 'n', 'l', or '3'.  The Makefile must supply the '.'.
	See man3dir.

Mcc (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the Mcc program.  After Configure runs,
	the value is reset to a plain "Mcc" and is not useful.

medium (models.U):
	This variable contains a flag which will tell the C compiler and loader
	to produce a program running with a medium memory model.  If the
	medium model is not supported, contains the flag to produce large
	model programs.  It is up to the Makefile to use this.

mips_type (usrinc.U):
	This variable holds the environment type for the mips system.
	Possible values are "BSD 4.3" and "System V".

mkdir (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the mkdir program.  After Configure runs,
	the value is reset to a plain "mkdir" and is not useful.

mmaptype (d_mmap.U):
	This symbol contains the type of pointer returned by mmap()
	(and simultaneously the type of the first argument).
	It can be 'void *' or 'caddr_t'.

models (models.U):
	This variable contains the list of memory models supported by this
	system.  Possible component values are none, split, unsplit, small,
	medium, large, and huge.  The component values are space separated.

modetype (modetype.U):
	This variable defines modetype to be something like mode_t, 
	int, unsigned short, or whatever type is used to declare file 
	modes for system calls.

more (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the more program.  After Configure runs,
	the value is reset to a plain "more" and is not useful.

multiarch (multiarch.U):
	This variable conditionally defines the MULTIARCH symbol
	which signifies the presence of multiplatform files.
	This is normally set by hints files.

mv (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

myarchname (archname.U):
	This variable holds the architecture name computed by Configure in
	a previous run. It is not intended to be perused by any user and
	should never be set in a hint file.

mydomain (myhostname.U):
	This variable contains the eventual value of the MYDOMAIN symbol,
	which is the domain of the host the program is going to run on.
	The domain must be appended to myhostname to form a complete host name.
	The dot comes with mydomain, and need not be supplied by the program.

myhostname (myhostname.U):
	This variable contains the eventual value of the MYHOSTNAME symbol,
	which is the name of the host the program is going to run on.
	The domain is not kept with hostname, but must be gotten from mydomain.
	The dot comes with mydomain, and need not be supplied by the program.

myuname (Oldconfig.U):
	The output of 'uname -a' if available, otherwise the hostname. On Xenix,
	pseudo variables assignments in the output are stripped, thank you. The
	whole thing is then lower-cased.

n (n.U):
	This variable contains the '-n' flag if that is what causes the echo
	command to suppress newline.  Otherwise it is null.  Correct usage is
	$echo $n "prompt for a question: $c".

netdb_hlen_type (netdbtype.U):
	This variable holds the type used for the 2nd argument to
	gethostbyaddr().  Usually, this is int or size_t or unsigned.
	This is only useful if you have gethostbyaddr(), naturally.

netdb_host_type (netdbtype.U):
	This variable holds the type used for the 1st argument to
	gethostbyaddr().  Usually, this is char * or void *,  possibly
	with or without a const prefix.
	This is only useful if you have gethostbyaddr(), naturally.

netdb_name_type (netdbtype.U):
	This variable holds the type used for the argument to
	gethostbyname().  Usually, this is char * or const char *.
	This is only useful if you have gethostbyname(), naturally.

netdb_net_type (netdbtype.U):
	This variable holds the type used for the 1st argument to
	getnetbyaddr().  Usually, this is int or long.
	This is only useful if you have getnetbyaddr(), naturally.

nm (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the nm program.  After Configure runs,
	the value is reset to a plain "nm" and is not useful.

nm_opt (usenm.U):
	This variable holds the options that may be necessary for nm.

nm_so_opt (usenm.U):
	This variable holds the options that may be necessary for nm
	to work on a shared library but that can not be used on an
	archive library.  Currently, this is only used by Linux, where
	nm --dynamic is *required* to get symbols from an ELF library which
	has been stripped, but nm --dynamic is *fatal* on an archive library.
	Maybe Linux should just always set usenm=false.

nonxs_ext (Extensions.U):
	This variable holds a list of all non-xs extensions included
	in the package.  All of them will be built.

nroff (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the nroff program.  After Configure runs,
	the value is reset to a plain "nroff" and is not useful.

o_nonblock (nblock_io.U):
	This variable bears the symbol value to be used during open() or fcntl()
	to turn on non-blocking I/O for a file descriptor. If you wish to switch
	between blocking and non-blocking, you may try ioctl(FIOSNBIO) instead,
	but that is only supported by some devices.

obj_ext (Unix.U):
	This is an old synonym for _o.

old_pthread_create_joinable (d_pthrattrj.U):
	This variable defines the constant to use for creating joinable
	(aka undetached) pthreads.  Unused if pthread.h defines
	PTHREAD_CREATE_JOINABLE.  If used, possible values are
	PTHREAD_CREATE_UNDETACHED and __UNDETACHED.

optimize (ccflags.U):
	This variable contains any optimizer/debugger flag that should be used.
	It is up to the Makefile to use it.

orderlib (orderlib.U):
	This variable is "true" if the components of libraries must be ordered
	(with `lorder $* | tsort`) before placing them in an archive.  Set to
	"false" if ranlib or ar can generate random libraries.

osname (Oldconfig.U):
	This variable contains the operating system name (e.g. sunos,
	solaris, hpux, etc.).  It can be useful later on for setting
	defaults.  Any spaces are replaced with underscores.  It is set
	to a null string if we can't figure it out.

osvers (Oldconfig.U):
	This variable contains the operating system version (e.g.
	4.1.3, 5.2, etc.).  It is primarily used for helping select
	an appropriate hints file, but might be useful elsewhere for
	setting defaults.  It is set to '' if we can't figure it out.
	We try to be flexible about how much of the version number
	to keep, e.g. if 4.1.1, 4.1.2, and 4.1.3 are essentially the
	same for this package, hints files might just be os_4.0 or
	os_4.1, etc., not keeping separate files for each little release.

package (package.U):
	This variable contains the name of the package being constructed.
	It is primarily intended for the use of later Configure units.

pager (pager.U):
	This variable contains the name of the preferred pager on the system.
	Usual values are (the full pathnames of) more, less, pg, or cat.

passcat (nis.U):
	This variable contains a command that produces the text of the
	/etc/passwd file.  This is normally "cat /etc/passwd", but can be
	"ypcat passwd" when NIS is used.

patchlevel (patchlevel.U):
	The patchlevel level of this package.
	The value of patchlevel comes from the patchlevel.h file.

path_sep (Unix.U):
	This is an old synonym for p_ in Head.U, the character
	used to separate elements in the command shell search PATH.

perl (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

perladmin (perladmin.U):
	Electronic mail address of the perl5 administrator.

perlpath (perlpath.U):
	This variable contains the eventual value of the PERLPATH symbol,
	which contains the name of the perl interpreter to be used in
	shell scripts and in the "eval 'exec'" idiom.

pg (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the pg program.  After Configure runs,
	the value is reset to a plain "pg" and is not useful.

phostname (myhostname.U):
	This variable contains the eventual value of the PHOSTNAME symbol,
	which is a command that can be fed to popen() to get the host name.
	The program should probably not presume that the domain is or isn't
	there already.

pidtype (pidtype.U):
	This variable defines PIDTYPE to be something like pid_t, int, 
	ushort, or whatever type is used to declare process ids in the kernel.

plibpth (libpth.U):
	Holds the private path used by Configure to find out the libraries.
	Its value is prepend to libpth. This variable takes care of special
	machines, like the mips.  Usually, it should be empty.

pmake (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

pr (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

prefix (prefix.U):
	This variable holds the name of the directory below which the
	user will install the package.  Usually, this is /usr/local, and
	executables go in /usr/local/bin, library stuff in /usr/local/lib,
	man pages in /usr/local/man, etc.  It is only used to set defaults
	for things in bin.U, mansrc.U, privlib.U, or scriptdir.U.

prefixexp (prefix.U):
	This variable holds the full absolute path of the directory below
	which the user will install the package.  Derived from prefix.

privlib (privlib.U):
	This variable contains the eventual value of the PRIVLIB symbol,
	which is the name of the private library for this package.  It may
	have a ~ on the front. It is up to the makefile to eventually create
	this directory while performing installation (with ~ substitution).

privlibexp (privlib.U):
	This variable is the ~name expanded version of privlib, so that you
	may use it directly in Makefiles or shell scripts.

prototype (prototype.U):
	This variable holds the eventual value of CAN_PROTOTYPE, which
	indicates the C compiler can handle funciton prototypes.

ptrsize (ptrsize.U):
	This variable contains the value of the PTRSIZE symbol, which
	indicates to the C program how many bytes there are in a pointer.

randbits (randfunc.U):
	Indicates how many bits are produced by the function used to
	generate normalized random numbers.

randfunc (randfunc.U):
	Indicates the name of the random number function to use.
	Values include drand48, random, and rand. In C programs,
	the 'Drand01' macro is defined to generate uniformly distributed
	random numbers over the range [0., 1.[ (see drand01 and nrand).

randseedtype (randfunc.U):
	Indicates the type of the argument of the seedfunc.

ranlib (orderlib.U):
	This variable is set to the pathname of the ranlib program, if it is
	needed to generate random libraries.  Set to ":" if ar can generate
	random libraries or if random libraries are not supported

rd_nodata (nblock_io.U):
	This variable holds the return code from read() when no data is
	present. It should be -1, but some systems return 0 when O_NDELAY is
	used, which is a shame because you cannot make the difference between
	no data and an EOF.. Sigh!

rm (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the rm program.  After Configure runs,
	the value is reset to a plain "rm" and is not useful.

rmail (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

runnm (usenm.U):
	This variable contains 'true' or 'false' depending whether the
	nm extraction should be performed or not, according to the value
	of usenm and the flags on the Configure command line.

sched_yield (d_pthread_y.U):
	This variable defines the way to yield the execution
	of the current thread.

scriptdir (scriptdir.U):
	This variable holds the name of the directory in which the user wants
	to put publicly scripts for the package in question.  It is either
	the same directory as for binaries, or a special one that can be
	mounted across different architectures, like /usr/share. Programs
	must be prepared to deal with ~name expansion.

scriptdirexp (scriptdir.U):
	This variable is the same as scriptdir, but is filename expanded
	at configuration time, for programs not wanting to bother with it.

sed (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the sed program.  After Configure runs,
	the value is reset to a plain "sed" and is not useful.

seedfunc (randfunc.U):
	Indicates the random number generating seed function.
	Values include srand48, srandom, and srand.

selectminbits (selectminbits.U):
	This variable holds the minimum number of bits operated by select.
	That is, if you do select(n, ...), how many bits at least will be
	cleared in the masks if some activity is detected.  Usually this
	is either n or 32*ceil(n/32), especially many little-endians do
	the latter.  This is only useful if you have select(), naturally.

selecttype (selecttype.U):
	This variable holds the type used for the 2nd, 3rd, and 4th
	arguments to select.  Usually, this is 'fd_set *', if HAS_FD_SET
	is defined, and 'int *' otherwise.  This is only useful if you 
	have select(), naturally.

sendmail (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

sh (sh.U):
	This variable contains the full pathname of the shell used
	on this system to execute Bourne shell scripts.  Usually, this will be
	/bin/sh, though it's possible that some systems will have /bin/ksh,
	/bin/pdksh, /bin/ash, /bin/bash, or even something such as
	D:/bin/sh.exe.
	This unit comes before Options.U, so you can't set sh with a '-D'
	option, though you can override this (and startsh)
	with '-O -Dsh=/bin/whatever -Dstartsh=whatever'

shar (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

sharpbang (spitshell.U):
	This variable contains the string #! if this system supports that
	construct.

shmattype (d_shmat.U):
	This symbol contains the type of pointer returned by shmat().
	It can be 'void *' or 'char *'.

shortsize (intsize.U):
	This variable contains the value of the SHORTSIZE symbol which
	indicates to the C program how many bytes there are in a short.

shrpenv (libperl.U):
	If the user builds a shared libperl.so, then we need to tell the
	'perl' executable where it will be able to find the installed libperl.so. 
	One way to do this on some systems is to set the environment variable
	LD_RUN_PATH to the directory that will be the final location of the
	shared libperl.so.  The makefile can use this with something like
	$shrpenv $(CC) -o perl perlmain.o $libperl $libs
	Typical values are
	shrpenv="env LD_RUN_PATH=$archlibexp/CORE"
	or
	shrpenv=''
	See the main perl Makefile.SH for actual working usage.
	Alternatively, we might be able to use a command line option such
	as -R $archlibexp/CORE (Solaris, NetBSD) or -Wl,-rpath
	$archlibexp/CORE (Linux).

shsharp (spitshell.U):
	This variable tells further Configure units whether your sh can
	handle # comments.

sig_count (sig_name.U):
	This variable holds a number larger than the largest valid
	signal number.  This is usually the same as the NSIG macro.

sig_name (sig_name.U):
	This variable holds the signal names, space separated. The leading
	SIG in signal name is removed.  A ZERO is prepended to the
	list.  This is currently not used.

sig_name_init (sig_name.U):
	This variable holds the signal names, enclosed in double quotes and
	separated by commas, suitable for use in the SIG_NAME definition 
	below.  A "ZERO" is prepended to the list, and the list is 
	terminated with a plain 0.  The leading SIG in signal names
	is removed. See sig_num.

sig_num (sig_name.U):
	This variable holds the signal numbers, space separated. A ZERO is
	prepended to the list (corresponding to the fake SIGZERO), and 
	the list is terminated with a 0.  Those numbers correspond to 
	the value of the signal listed in the same place within the
	sig_name list.

sig_num_init (sig_name.U):
	This variable holds the signal numbers, enclosed in double quotes and
	separated by commas, suitable for use in the SIG_NUM definition 
	below.  A "ZERO" is prepended to the list, and the list is 
	terminated with a plain 0.

signal_t (d_voidsig.U):
	This variable holds the type of the signal handler (void or int).

sitearch (sitearch.U):
	This variable contains the eventual value of the SITEARCH symbol,
	which is the name of the private library for this package.  It may
	have a ~ on the front. It is up to the makefile to eventually create
	this directory while performing installation (with ~ substitution).

sitearchexp (sitearch.U):
	This variable is the ~name expanded version of sitearch, so that you
	may use it directly in Makefiles or shell scripts.

sitelib (sitelib.U):
	This variable contains the eventual value of the SITELIB symbol,
	which is the name of the private library for this package.  It may
	have a ~ on the front. It is up to the makefile to eventually create
	this directory while performing installation (with ~ substitution).

sitelibexp (sitelib.U):
	This variable is the ~name expanded version of sitelib, so that you
	may use it directly in Makefiles or shell scripts.

siteprefix (siteprefix.U):
	This variable holds the full absolute path of the directory below
	which the user will install add-on packages.

siteprefixexp (siteprefix.U):
	This variable holds the full absolute path of the directory below
	which the user will install add-on packages.  Derived from siteprefix.

sizetype (sizetype.U):
	This variable defines sizetype to be something like size_t, 
	unsigned long, or whatever type is used to declare length 
	parameters for string functions.

sleep (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

smail (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

small (models.U):
	This variable contains a flag which will tell the C compiler and loader
	to produce a program running with a small memory model.  It is up to
	the Makefile to use this.

so (so.U):
	This variable holds the extension used to identify shared libraries
	(also known as shared objects) on the system. Usually set to 'so'.

sockethdr (d_socket.U):
	This variable has any cpp '-I' flags needed for socket support.

socketlib (d_socket.U):
	This variable has the names of any libraries needed for socket support.

sort (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the sort program.  After Configure runs,
	the value is reset to a plain "sort" and is not useful.

spackage (package.U):
	This variable contains the name of the package being constructed,
	with the first letter uppercased, i.e. suitable for starting
	sentences.

spitshell (spitshell.U):
	This variable contains the command necessary to spit out a runnable
	shell on this system.  It is either cat or a grep '-v' for # comments.

split (models.U):
	This variable contains a flag which will tell the C compiler and loader
	to produce a program that will run in separate I and D space, for those
	machines that support separation of instruction and data space.  It is
	up to the Makefile to use this.

src (src.U):
	This variable holds the path to the package source. It is up to
	the Makefile to use this variable and set VPATH accordingly to
	find the sources remotely.

ssizetype (ssizetype.U):
	This variable defines ssizetype to be something like ssize_t, 
	long or int.  It is used by functions that return a count 
	of bytes or an error condition.  It must be a signed type.
	We will pick a type such that sizeof(SSize_t) == sizeof(Size_t).

startperl (startperl.U):
	This variable contains the string to put on the front of a perl
	script to make sure (hopefully) that it runs with perl and not some
	shell. Of course, that leading line must be followed by the classical
	perl idiom:
	eval 'exec perl -S $0 ${1+"$@"}'
	if $running_under_some_shell;
	to guarantee perl startup should the shell execute the script. Note
	that this magic incatation is not understood by csh.

startsh (startsh.U):
	This variable contains the string to put on the front of a shell
	script to make sure (hopefully) that it runs with sh and not some
	other shell.

static_ext (Extensions.U):
	This variable holds a list of XS extension files we want to
	link statically into the package.  It is used by Makefile.

stdchar (stdchar.U):
	This variable conditionally defines STDCHAR to be the type of char
	used in stdio.h.  It has the values "unsigned char" or "char".

stdio_base (d_stdstdio.U):
	This variable defines how, given a FILE pointer, fp, to access the
	_base field (or equivalent) of stdio.h's FILE structure.  This will
	be used to define the macro FILE_base(fp).

stdio_bufsiz (d_stdstdio.U):
	This variable defines how, given a FILE pointer, fp, to determine
	the number of bytes store in the I/O buffer pointer to by the
	_base field (or equivalent) of stdio.h's FILE structure.  This will
	be used to define the macro FILE_bufsiz(fp).

stdio_cnt (d_stdstdio.U):
	This variable defines how, given a FILE pointer, fp, to access the
	_cnt field (or equivalent) of stdio.h's FILE structure.  This will
	be used to define the macro FILE_cnt(fp).

stdio_filbuf (d_stdstdio.U):
	This variable defines how, given a FILE pointer, fp, to tell
	stdio to refill it's internal buffers (?).  This will
	be used to define the macro FILE_filbuf(fp).

stdio_ptr (d_stdstdio.U):
	This variable defines how, given a FILE pointer, fp, to access the
	_ptr field (or equivalent) of stdio.h's FILE structure.  This will
	be used to define the macro FILE_ptr(fp).

stdio_stream_array (stdio_streams.U):
	This variable tells the name of the array holding the stdio streams.
	Usual values include _iob, __iob, and __sF.

strings (i_string.U):
	This variable holds the full path of the string header that will be
	used. Typically /usr/include/string.h or /usr/include/strings.h.

submit (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

subversion (patchlevel.U):
	The subversion level of this package.
	The value of subversion comes from the patchlevel.h file.
	This is unique to perl.

sysman (sysman.U):
	This variable holds the place where the manual is located on this
	system. It is not the place where the user wants to put his manual
	pages. Rather it is the place where Configure may look to find manual
	for unix commands (section 1 of the manual usually). See mansrc.

tail (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

tar (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

tbl (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

tee (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

test (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the test program.  After Configure runs,
	the value is reset to a plain "test" and is not useful.

timeincl (i_time.U):
	This variable holds the full path of the included time header(s).

timetype (d_time.U):
	This variable holds the type returned by time(). It can be long,
	or time_t on BSD sites (in which case <sys/types.h> should be
	included). Anyway, the type Time_t should be used.

touch (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the touch program.  After Configure runs,
	the value is reset to a plain "touch" and is not useful.

tr (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the tr program.  After Configure runs,
	the value is reset to a plain "tr" and is not useful.

trnl (trnl.U):
	This variable contains the value to be passed to the tr(1)
	command to transliterate a newline.  Typical values are
	'\012' and '\n'.  This is needed for EBCDIC systems where
	newline is not necessarily '\012'.

troff (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

uidtype (uidtype.U):
	This variable defines Uid_t to be something like uid_t, int, 
	ushort, or whatever type is used to declare user ids in the kernel.

uname (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the uname program.  After Configure runs,
	the value is reset to a plain "uname" and is not useful.

uniq (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the uniq program.  After Configure runs,
	the value is reset to a plain "uniq" and is not useful.

use64bits (use64bits.U):
	This variable conditionally defines the USE_64_BITS symbol,
	and indicates that explicit 64-bit interfaces should be used
	when available.

usedl (dlsrc.U):
	This variable indicates if the the system supports dynamic
	loading of some sort.  See also dlsrc and dlobj.

usemultiplicity (usemultiplicity.U):
	This variable conditionally defines the MULTIPLICITY symbol,
	and indicates that Perl should be built to use multiplicity.

usemymalloc (mallocsrc.U):
	This variable contains y if the malloc that comes with this package
	is desired over the system's version of malloc.  People often include
	special versions of malloc for effiency, but such versions are often
	less portable.  See also mallocsrc and mallocobj.
	If this is 'y', then -lmalloc is removed from $libs.

usenm (usenm.U):
	This variable contains 'true' or 'false' depending whether the
	nm extraction is wanted or not.

useopcode (Extensions.U):
	This variable holds either 'true' or 'false' to indicate
	whether the Opcode extension should be used.  The sole
	use for this currently is to allow an easy mechanism
	for users to skip the Opcode extension from the Configure
	command line.

useperlio (useperlio.U):
	This variable conditionally defines the USE_PERLIO symbol,
	and indicates that the PerlIO abstraction should be
	used throughout.

useposix (Extensions.U):
	This variable holds either 'true' or 'false' to indicate
	whether the POSIX extension should be used.  The sole
	use for this currently is to allow an easy mechanism
	for hints files to indicate that POSIX will not compile
	on a particular system.

usesfio (d_sfio.U):
	This variable is set to true when the user agrees to use sfio.
	It is set to false when sfio is not available or when the user
	explicitely requests not to use sfio.  It is here primarily so
	that command-line settings can override the auto-detection of
	d_sfio without running into a "WHOA THERE".

useshrplib (libperl.U):
	This variable is set to 'yes' if the user wishes
	to build a shared libperl, and 'no' otherwise.

usesocks (usesocks.U):
	This variable conditionally defines the USE_SOCKS symbol,
	and indicates that Perl should be built to use SOCKS.

usethreads (usethreads.U):
	This variable conditionally defines the USE_THREADS symbol,
	and indicates that Perl should be built to use threads.

usevfork (d_vfork.U):
	This variable is set to true when the user accepts to use vfork.
	It is set to false when no vfork is available or when the user
	explicitely requests not to use vfork.

usrinc (usrinc.U):
	This variable holds the path of the include files, which is
	usually /usr/include. It is mainly used by other Configure units.

uuname (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

version (patchlevel.U):
	The full version number of this package.  This combines
	baserev, patchlevel, and subversion to get the full
	version number, including any possible subversions.  Care
	is taken to use the C locale in order to get something
	like 5.004 instead of 5,004.  This is unique to perl.

vi (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

voidflags (voidflags.U):
	This variable contains the eventual value of the VOIDFLAGS symbol,
	which indicates how much support of the void type is given by this
	compiler.  See VOIDFLAGS for more info.

xlibpth (libpth.U):
	This variable holds extra path (space-separated) used to find
	libraries on this platform, for example CPU-specific libraries
	(on multi-CPU platforms) may be listed here.

zcat (Loc.U):
	This variable is defined but not used by Configure.
	The value is a plain '' and is not useful.

zip (Loc.U):
	This variable is be used internally by Configure to determine the
	full pathname (if any) of the zip program.  After Configure runs,
	the value is reset to a plain "zip" and is not useful.

