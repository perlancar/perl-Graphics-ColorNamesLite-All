package Graphics::ColorNamesLite::All;

# AUTHORITY
# DATE
# DIST
# VERSION

# note: SVG=CSS, WWW=CSS
# CODE: no strict 'refs'; use Data::Dump; my $t = {}; for my $m (qw/CSS Crayola EmergyC GrayScale HTML IE Mozilla Netscape VACCC Werner Windows X HTML_ID /) { my $mod = "Graphics::ColorNames::$m"; (my $modpm = "$mod.pm") =~ s!::!/!g; require $modpm; my $t2 = &{"$mod\::NamesRgbTable"}(); for (keys %$t2) { $t->{$_} = sprintf "%06x", $t2->{$_} unless defined $t->{$_} } print 'our $NAMES_RGB_TABLE = '; dd $t; print ";";

1;
# ABSTRACT: Lots of color names and equivalent RGB values (lite version)

=head1 DESCRIPTION

This is a merge of various Graphics::ColorNames::* modules.


=head1 SEE ALSO

C<Graphics::ColorNames::*>
