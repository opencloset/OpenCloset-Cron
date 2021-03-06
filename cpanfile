requires "AnyEvent" => "0";
requires "AnyEvent::HTTPD" => "0";
requires "AnyEvent::Log" => "0";
requires "AnyEvent::Timer::Cron" => "0.002000";
requires "Moo" => "0";
requires "Moo::Role" => "0";
requires "MooX::Types::MooseLike::Base" => "0";
requires "Object::Event" => "0";
requires "OpenCloset::Patch::AnyEvent::HTTPD" => "0.002";
requires "OpenCloset::Patch::Object::Event" => "0.002";
requires "Scalar::Util" => "0";
requires "Sys::Syslog" => "0";
requires "namespace::clean" => "0";
requires "perl" => "5.010";
requires "utf8" => "0";

on 'test' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "Test::More" => "0";
  requires "perl" => "5.010";
  requires "strict" => "0";
  requires "warnings" => "0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.17";
  requires "perl" => "5.010";
};

on 'develop' => sub {
  requires "Dist::Zilla" => "5";
  requires "Dist::Zilla::Plugin::Prereqs" => "0";
  requires "Dist::Zilla::PluginBundle::DAGOLDEN" => "0";
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::More" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Spelling" => "0.12";
  requires "Test::Version" => "1";
};
