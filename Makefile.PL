# $Id: Makefile.PL 223 2004-04-24 20:05:45Z sungo $

use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'POE::API::Peek',
    AUTHOR => 'Matt Cashner (sungo@pobox.com)',
    VERSION_FROM => 'lib/POE/API/Peek.pm',
    PREREQ_PM => {
        'POE' => '0.2802',
        'Test::More' => 0,
    },
    dist => {
        PREOP => 'svn log > ${DISTVNAME}/Changes',
    },
);
