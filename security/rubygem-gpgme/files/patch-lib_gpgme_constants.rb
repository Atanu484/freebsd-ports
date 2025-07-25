The gpgme_attr_t enums and their functions, which have been marked deprecated
since 2003, were removed in GpgME 2.0.0.

--- lib/gpgme/constants.rb.orig	2025-06-23 05:42:19 UTC
+++ lib/gpgme/constants.rb
@@ -1,36 +1,38 @@ module GPGME
 module GPGME
 
-  ATTR_ALGO = GPGME_ATTR_ALGO
-  ATTR_CAN_CERTIFY = GPGME_ATTR_CAN_CERTIFY
-  ATTR_CAN_ENCRYPT = GPGME_ATTR_CAN_ENCRYPT
-  ATTR_CAN_SIGN = GPGME_ATTR_CAN_SIGN
-  ATTR_CHAINID = GPGME_ATTR_CHAINID
-  ATTR_COMMENT = GPGME_ATTR_COMMENT
-  ATTR_CREATED = GPGME_ATTR_CREATED
-  ATTR_EMAIL = GPGME_ATTR_EMAIL
-  ATTR_ERRTOK = GPGME_ATTR_ERRTOK
-  ATTR_EXPIRE = GPGME_ATTR_EXPIRE
-  ATTR_FPR = GPGME_ATTR_FPR
-  ATTR_ISSUER = GPGME_ATTR_ISSUER
-  ATTR_IS_SECRET = GPGME_ATTR_IS_SECRET
-  ATTR_KEYID = GPGME_ATTR_KEYID
-  ATTR_KEY_CAPS = GPGME_ATTR_KEY_CAPS
-  ATTR_KEY_DISABLED = GPGME_ATTR_KEY_DISABLED
-  ATTR_KEY_EXPIRED = GPGME_ATTR_KEY_EXPIRED
-  ATTR_KEY_INVALID = GPGME_ATTR_KEY_INVALID
-  ATTR_KEY_REVOKED = GPGME_ATTR_KEY_REVOKED
-  ATTR_LEN = GPGME_ATTR_LEN
-  ATTR_LEVEL = GPGME_ATTR_LEVEL
-  ATTR_NAME = GPGME_ATTR_NAME
-  ATTR_OTRUST = GPGME_ATTR_OTRUST
-  ATTR_SERIAL = GPGME_ATTR_SERIAL
-  ATTR_SIG_STATUS = GPGME_ATTR_SIG_STATUS
-  ATTR_SIG_SUMMARY = GPGME_ATTR_SIG_SUMMARY
-  ATTR_TYPE = GPGME_ATTR_TYPE
-  ATTR_UID_INVALID = GPGME_ATTR_UID_INVALID
-  ATTR_UID_REVOKED = GPGME_ATTR_UID_REVOKED
-  ATTR_USERID = GPGME_ATTR_USERID
-  ATTR_VALIDITY = GPGME_ATTR_VALIDITY
+  if defined?(GPGME_ATTR_ALGO)
+    ATTR_ALGO = GPGME_ATTR_ALGO
+    ATTR_CAN_CERTIFY = GPGME_ATTR_CAN_CERTIFY
+    ATTR_CAN_ENCRYPT = GPGME_ATTR_CAN_ENCRYPT
+    ATTR_CAN_SIGN = GPGME_ATTR_CAN_SIGN
+    ATTR_CHAINID = GPGME_ATTR_CHAINID
+    ATTR_COMMENT = GPGME_ATTR_COMMENT
+    ATTR_CREATED = GPGME_ATTR_CREATED
+    ATTR_EMAIL = GPGME_ATTR_EMAIL
+    ATTR_ERRTOK = GPGME_ATTR_ERRTOK
+    ATTR_EXPIRE = GPGME_ATTR_EXPIRE
+    ATTR_FPR = GPGME_ATTR_FPR
+    ATTR_ISSUER = GPGME_ATTR_ISSUER
+    ATTR_IS_SECRET = GPGME_ATTR_IS_SECRET
+    ATTR_KEYID = GPGME_ATTR_KEYID
+    ATTR_KEY_CAPS = GPGME_ATTR_KEY_CAPS
+    ATTR_KEY_DISABLED = GPGME_ATTR_KEY_DISABLED
+    ATTR_KEY_EXPIRED = GPGME_ATTR_KEY_EXPIRED
+    ATTR_KEY_INVALID = GPGME_ATTR_KEY_INVALID
+    ATTR_KEY_REVOKED = GPGME_ATTR_KEY_REVOKED
+    ATTR_LEN = GPGME_ATTR_LEN
+    ATTR_LEVEL = GPGME_ATTR_LEVEL
+    ATTR_NAME = GPGME_ATTR_NAME
+    ATTR_OTRUST = GPGME_ATTR_OTRUST
+    ATTR_SERIAL = GPGME_ATTR_SERIAL
+    ATTR_SIG_STATUS = GPGME_ATTR_SIG_STATUS
+    ATTR_SIG_SUMMARY = GPGME_ATTR_SIG_SUMMARY
+    ATTR_TYPE = GPGME_ATTR_TYPE
+    ATTR_UID_INVALID = GPGME_ATTR_UID_INVALID
+    ATTR_UID_REVOKED = GPGME_ATTR_UID_REVOKED
+    ATTR_USERID = GPGME_ATTR_USERID
+    ATTR_VALIDITY = GPGME_ATTR_VALIDITY
+  end
   DATA_ENCODING_ARMOR = GPGME_DATA_ENCODING_ARMOR
   DATA_ENCODING_BASE64 = GPGME_DATA_ENCODING_BASE64
   DATA_ENCODING_BINARY = GPGME_DATA_ENCODING_BINARY
