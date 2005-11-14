# $Id: Makefile.PL 571 2005-11-14 02:40:13Z sungo $

use inc::Module::Install;

name            ('POE-API-Peek');
author          ('Matt Cashner (sungo@pobox.com)');
version_from    ('VERSION');
license         ('bsd');

requires        ('perl' => 5.006001);
requires        ('POE' => 0.29);
requires        ('Devel::Size');
requires        ('Test::More');

sign            (1);

WriteAll();
