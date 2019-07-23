#!/bin/bash
bundle install --path ./vendor
htmlproofer .  --assume-extension  --allow-hash-href --empty-alt-ignore --only-4xx --disable-external