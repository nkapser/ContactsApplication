# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ContactsApplication_session',
  :secret      => '15d7a91c64a2b6ebf339d1f178ecf02372cfd40e4542bcb70e362bc2c07c08176abf425bb608b4cf0269ec63568b37678b0bd9c8ac0ff059f91a0fc8686255be'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
