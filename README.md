# homebrew-cask-drivers
Casks of drivers

# Usage

After you install Homebrew, run the following command:

```sh
$ brew tap homebrew/cask-drivers
```

You can now install the casks in this repo.

```sh
$ brew install xbox360-controller-driver-unofficial
```

## Naming Driver Casks

All Cask names and tokens should be of the form `<vendor>-<token>`.

### Driver Token Examples

Cask Token          | `<vendor>-<token>`    | Filename
--------------------|-----------------------|------------------------
`logic`             | `saleae-logic`        | `saleae-logic.rb`
`razer-synapse`     | `razer-synapse`       | `razer-synapse.rb`

## On macOS version compatibility

Drivers have strict requirements regarding which versions of an operating system they can run on. If you wish to expand the OS support for a driver cask, *you need to provide a link to the upstream page that verifies said support*. This is to say that “I’ve tried it on my machine and it worked” is not sufficient reasoning. For all we know, the software may break on the next point release, or it may just be your specific configuration that allows it to run even though your OS version is not officially supported.

If you believe the upstream requirements are incorrect, please contact *them* and get them to correct the information on their page, at which point the cask requirements can also be updated.

## License
[The Unlicense](https://unlicense.org/)
