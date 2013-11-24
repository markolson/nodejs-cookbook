def raise_if_checksum_mismatch(path, expected_checksum)
  calculated_sha256_hash = Digest::SHA256.file(path)
  if calculated_sha256_hash != expected_checksum
    raise "SHA256 Hash of #{path} did not match!  Expected #{expected_checksum} found #{calculated_sha256_hash}"
  end
end
