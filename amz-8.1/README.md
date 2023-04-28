# An amazonlinux container for GradApp

Experimenting with the official amazonlinux docker image as a dev
environment for GradApp.

## Missing dependencies

Our Ubuntu-based lamp-web containers provide the following dependencies
that appear to be hard to install on amazonlinux:

- `mod_xsendfile`
- `php-pcov`
- `php-xdebug` (exists but fails to install)
- `php-yaml` (exists but fails to install)

## Other deficiencies

- ClamAV will not run in daemon mode, as amazonlinux does not support
  systemd w/in its container environment. This probaly isn't and issue
  when running amazonlinux natively in EC2. Not game-over, as clamscan
  can be run directly - OK for dev use, but won't work in production.

