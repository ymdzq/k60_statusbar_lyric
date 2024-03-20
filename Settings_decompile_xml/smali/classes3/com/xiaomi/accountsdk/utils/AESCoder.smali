.class public Lcom/xiaomi/accountsdk/utils/AESCoder;
.super Ljava/lang/Object;
.source "AESCoder.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/CryptCoder;


# static fields
.field public static final DEFAULT_IV:[B


# instance fields
.field private keySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0102030405060708"

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/AESCoder;->DEFAULT_IV:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 36
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/utils/AESCoder;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 29
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-string v0, "AESCoder"

    const-string v1, "aesKey is invalid"

    .line 30
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    .line 26
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
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "AESCoder"

    const-string p1, "decrypt failed for empty data"

    .line 50
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 54
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/AESCoder;->decrypt([B)[B

    move-result-object p0

    .line 56
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Lcom/xiaomi/accountsdk/request/CipherException;

    const-string v0, "fail to decrypt by aescoder"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public decrypt([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 73
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 74
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AESCoder;->getInitialVector()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 75
    iget-object p0, p0, Lcom/xiaomi/accountsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "no block data"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Lcom/xiaomi/accountsdk/request/CipherException;

    const-string v0, "fail to decrypt by aescoder"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AESCoder;->getInitialVector()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/accountsdk/utils/AESCoder;->encryptWithIv(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encryptWithIv(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/AESCoder;->encryptWithIv([B[B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 115
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 119
    new-instance p1, Lcom/xiaomi/accountsdk/request/CipherException;

    const-string p2, "fail to encrypt by aescoder"

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public encryptWithIv([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 132
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 133
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 134
    iget-object p0, p0, Lcom/xiaomi/accountsdk/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 135
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    new-instance p1, Lcom/xiaomi/accountsdk/request/CipherException;

    const-string p2, "fail to encrypt by aescoder"

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/accountsdk/request/CipherException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected getInitialVector()[B
    .locals 0

    .line 89
    sget-object p0, Lcom/xiaomi/accountsdk/utils/AESCoder;->DEFAULT_IV:[B

    return-object p0
.end method
