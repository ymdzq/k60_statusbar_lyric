.class public Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils;
.super Ljava/lang/Object;
.source "PassportEnvEncryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;,
        Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;
    }
.end annotation


# direct methods
.method private static aesEncrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/AESCoder;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/AESCoder;-><init>([B)V

    .line 58
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/AESCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/diagnosis/encrypt/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encrypt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;-><init>()V

    .line 29
    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    :try_start_0
    const-string v2, "-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n"

    .line 32
    invoke-static {v2}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/RSACoder;->getCertificatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 33
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 34
    invoke-static {v3, v2}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/RSACoder;->encrypt([BLjava/security/Key;)[B

    move-result-object v2

    .line 35
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/diagnosis/encrypt/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-static {p0, v1}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils;->aesEncrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;->content:Ljava/lang/String;

    .line 40
    iput-object v2, v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;->encryptedKey:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static generateSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES"

    .line 46
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 49
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
