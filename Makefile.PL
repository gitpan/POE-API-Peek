# $Id: Makefile.PL 596 2005-12-05 07:39:23Z sungo $

use inc::Module::Install;

name            ('POE-API-Peek');
author          ('Matt Cashner (sungo@pobox.com)');
version_from    ('VERSION');
license         ('bsd');

requires        ('perl' => 5.006001);
requires        ('POE' => 0.29);
requires        ('Devel::Size');
build_requires  ('Test::More');

sign            (1);

WriteAll();
