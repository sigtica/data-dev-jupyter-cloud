def generate_sha1_hash(input_string):
    import hashlib
    import secrets
    # Generate a random salt
    salt = secrets.token_hex(8)
    # Hash the input string with the salt
    sha1 = hashlib.sha1((input_string + salt).encode()).hexdigest()
    # Construct the final hash in the desired format
    hashed_password = f"sha1:{salt}:{sha1}"
    return hashed_password

hashed_password = generate_sha1_hash("sigtica")
print(hashed_password)
