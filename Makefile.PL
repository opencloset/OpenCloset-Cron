use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.17;

my %WriteMakefileArgs = (
  "ABSTRACT" => "OpenCloset cron daemon module",
  "AUTHOR" => "\x{ae40}\x{b3c4}\x{d615} - Keedi Kim <keedi\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "OpenCloset-Cron",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.010",
  "NAME" => "OpenCloset::Cron",
  "PREREQ_PM" => {
    "AnyEvent" => 0,
    "AnyEvent::HTTPD" => 0,
    "AnyEvent::Log" => 0,
    "AnyEvent::Timer::Cron" => "0.002000",
    "Moo" => 0,
    "Moo::Role" => 0,
    "MooX::Types::MooseLike::Base" => 0,
    "Object::Event" => 0,
    "OpenCloset::Patch::AnyEvent::HTTPD" => "0.002",
    "OpenCloset::Patch::Object::Event" => "0.002",
    "Scalar::Util" => 0,
    "Sys::Syslog" => 0,
    "namespace::clean" => 0,
    "utf8" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "Test::More" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.004",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "AnyEvent" => 0,
  "AnyEvent::HTTPD" => 0,
  "AnyEvent::Log" => 0,
  "AnyEvent::Timer::Cron" => "0.002000",
  "ExtUtils::MakeMaker" => "6.17",
  "File::Spec" => 0,
  "Moo" => 0,
  "Moo::Role" => 0,
  "MooX::Types::MooseLike::Base" => 0,
  "Object::Event" => 0,
  "OpenCloset::Patch::AnyEvent::HTTPD" => "0.002",
  "OpenCloset::Patch::Object::Event" => "0.002",
  "Scalar::Util" => 0,
  "Sys::Syslog" => 0,
  "Test::More" => 0,
  "namespace::clean" => 0,
  "strict" => 0,
  "utf8" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
