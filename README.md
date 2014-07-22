# NSData+TDTImageMIMEDetection

Category on NSData that can determine if it is a representaion of a JPEG image
or a PNG image.

## Usage

To run the tests; clone the repo, and run `pod install` from the `Tests`
directory first.

## Installation

NSData+TDTImageMIMEDetection is available through [CocoaPods](http://cocoapods.org),
to install it simply add the following line to your Podfile:

    pod 'NSData+TDTImageMIMEDetection'

and then run :

    $ pod install

Alternatively, import all the source files inside the `NSData+TDTImageMIMEDetection/`
subdirectory into your project.

## Issues and Feedback

To report any issues with the library, create an issue on
[Github](https://github.com/talk-to/NSData-TDTImageMIMEDetection/issues).

For any other feedback or suggestion, contact the maintainers (listed below).

## Maintainers

* [Ayush Goel](mailto:ayush.g@directi.com)

## Contributing

[Pull Requests are welcome!](https://help.github.com/articles/using-pull-requests)

### Release Checklist for Maintainers

* Update the CHANGELOG.

* Modify the version in the Podspec.

* Update the version of the category used by the Tests

        cd Tests/ && pod update --no-repo-update

* Run the tests.

* Commit your changes.

* Publish, via `rake publish`. This does the following:
    - Create a tag with the current podspec version, and push it to remote.
    - Push the current podspec to CocoaPods trunk.

## License

NSData-TDTImageMIMEDetection is available under [BSD 3-clause License](LICENSE).

