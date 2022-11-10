#! /bin/bash

# Utility script because i'm too lazy to type this each time I want to generate code.

flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
