.class public Lcom/xiaomi/micloudsdk/utils/AESCoder;
.super Ljava/lang/Object;
.source "AESCoder.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/CryptCoder;


# instance fields
.field private keySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 31
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 24
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-string v0, "AESCoder"

    const-string v1, "aesKey is invalid"

    .line 25
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "aes key is null"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "AESCoder"

    const-string p1, "decrypt failed for empty data"

    .line 41
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 45
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->decrypt([B)[B

    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v0, "fail to decrypt by aescoder"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public decrypt([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 59
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 60
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->getInitalVector()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 61
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "no block data"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v0, "fail to decrypt by aescoder"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->encrypt([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 86
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 90
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v0, "fail to encrypt by aescoder"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encrypt([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 99
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 100
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->getInitalVector()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 101
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 106
    new-instance p1, Lcom/xiaomi/micloudsdk/exception/CipherException;

    const-string v0, "fail to encrypt by aescoder"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected getInitalVector()[B
    .locals 0

    const-string p0, "0102030405060708"

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
