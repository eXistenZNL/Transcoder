# X265 to x264 transcoder

This is a small tool to aid in transcoding x265 media to x264 so it's playable on a Raspberry Pi.

## Prerequisites

All you need is Vagrant to run and provision the Virtualbox.

## How to use

1. Git clone this project
1. Create the box with `vagrant up`
1. Throw some x265 media in this project's directory
1. Log in to the box with `vagrant ssh`
1. Cd to `/vagrant`
1. Run `./transcode.sh <filename>`
1. Wait until the transcoding is done and pick up your created x264 media from the project directory

## Known bugs

* On Windows the first provision fails during `vagrant up`. Simply run `vagrant provision` afterwards.
