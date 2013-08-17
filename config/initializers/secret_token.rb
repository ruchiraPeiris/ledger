# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Ledger::Application.config.secret_key_base = '98e3e2f526b3d60b5762fb03a0e92fa34fd30d8eed9beae006f1d8d21437caa0427c8a808fc596fb0ef7dd729ee95dc79e04757e2991b69d9deb1dd45d8f51a3'
