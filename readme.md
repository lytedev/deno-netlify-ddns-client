# Deno Netlify DDNS Client

This is a stupid-simple client for my Netlify DDNS "bouncer" here:

- https://github.com/lytedev/deno-netlify-ddns

The files here should be simple and self-explanatory enough with the context
from the [other repository][server].

# Usage

    sudo make install

The _first_ time you run this, `example.env` will be copied to `.env` and
opened in your editor so you may set your endpoint and credentials.

After that, `.env` is again copied to `/etc/netlify-ddns-client/rc` and the
systemd service and timer will be installed and started.

## Uninstall

    sudo make uninstall

[server]: https://github.com/lytedev/deno-netlify-ddns
