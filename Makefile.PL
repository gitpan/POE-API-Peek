# $Id: Makefile.PL,v 1.7 2004/02/27 00:26:44 sungo Exp $
use inc::Module::Install;

name            ('POE-API-Peek');
author          ('Matt Cashner (cpan@eekeek.org)');
version_from    ('lib/POE/API/Peek.pm');
license         ('bsd');

requires        ('perl' => '5.006001');
requires        ('POE' => '0.2601');

build_requires  ('Test::More');

auto_include    ();
auto_install    ();

&WriteAll;
