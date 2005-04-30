# $Id: Makefile.PL 463 2005-04-30 02:11:19Z sungo $

use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'POE::API::Peek',
    AUTHOR => 'Matt Cashner (sungo@pobox.com)',
    VERSION_FROM => 'VERSION',
    PREREQ_PM => {
        'POE' => '0.29',
        'Test::More' => 0,
    },
    dist => {
        PREOP => 'svn log > $(DISTVNAME)/Changes',
    },
);
