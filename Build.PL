
use Module::Build;
my $build = Module::Build->new(
                module_name        => 'POE::API::Peek',
                license            => 'bsd',
                create_makefile_pl => 'passthrough',
                sign               => 0,
                dist_version_from  => 'VERSION',
                requires           => {
                            'perl' => '5.6.1',
                            'POE'  => '>= 0.2601, <= 0.27',
                },
            );
$build->create_build_script;
