.class public Lmiui/cloud/common/EncryptLogSender;
.super Ljava/lang/Object;
.source "EncryptLogSender.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# static fields
.field private static final ASYM_ENCRYPT_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final ASYM_ENCRYPT_ALGORITHM_USAGE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final DEFAULT_ASYM_ENCRYPT_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCV2gFH5NQcd1hRT5vRTGweHQZhYEtQgF821nVymHNaeSVSTEecTPpAP71djJlR7Fv9Hfaiy3ubkbre0VwFm7gbWkl4RXrEnTcOClXWUSb+lHfpPK0TmVoooYzL9ySVls8Y9U9PfF1RhgaEU0zjyewdYfGolgS/s9VK/TuLCP+YQwIDAQAB"

.field private static final DEFAULT_ASYM_ENCRYPT_PUBLIC_KEY_LABEL:Ljava/lang/String; = ""

.field private static final DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

.field private static final SYM_ENCRYPT_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final SYM_ENCRYPT_ALGORITHM_IV_LEN:I = 0x10

.field private static final SYM_ENCRYPT_ALGORITHM_USAGE:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final SYM_ENCRYPT_KEY_LEN_IN_BITS:I = 0x100


# instance fields
.field private mEncryptedSecrectKey:Ljava/lang/String;

.field private mKeyLabel:Ljava/lang/String;

.field private mRandomIv:Z

.field private mRandomIvGenerator:Ljava/security/SecureRandom;

.field private mSecretKey:Ljavax/crypto/SecretKey;

.field private mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\u0000\u0000\u0000\u0000\u0000\u0000xiaomi.com"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/cloud/common/EncryptLogSender;->DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "Should never happen. "

    const-string v1, "The input publicKey is not valid. "

    const-string v2, "RSA"

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 56
    iput-object p3, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIv:Z

    .line 59
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIvGenerator:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    .line 62
    invoke-static {p2, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 65
    :try_start_0
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7

    .line 72
    :try_start_1
    new-instance p4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p4, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p3, p4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    .line 73
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    :try_start_2
    const-string p1, "AES"

    .line 83
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5

    const/16 p3, 0x100

    .line 87
    invoke-virtual {p1, p3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 88
    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    :try_start_3
    const-string p1, "RSA/ECB/PKCS1Padding"

    .line 92
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2

    .line 103
    :try_start_4
    iget-object p2, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 104
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;
    :try_end_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 109
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 74
    :cond_0
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "The input publicKey is not a %s public key. "

    new-array p3, p4, [Ljava/lang/Object;

    aput-object v2, p3, p1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_6
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p0

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private encryptString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    const-string v0, "Should never happen. "

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 138
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 146
    :try_start_1
    iget-object p0, p0, Lmiui/cloud/common/EncryptLogSender;->mSecretKey:Ljavax/crypto/SecretKey;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 155
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 160
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 158
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 149
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private generateRandomIv()[B
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 166
    iget-object p0, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIvGenerator:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static getWithDefaultPublicKey(Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/EncryptLogSender;
    .locals 4

    .line 43
    new-instance v0, Lmiui/cloud/common/EncryptLogSender;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCV2gFH5NQcd1hRT5vRTGweHQZhYEtQgF821nVymHNaeSVSTEecTPpAP71djJlR7Fv9Hfaiy3ubkbre0VwFm7gbWkl4RXrEnTcOClXWUSb+lHfpPK0TmVoooYzL9ySVls8Y9U9PfF1RhgaEU0zjyewdYfGolgS/s9VK/TuLCP+YQwIDAQAB"

    invoke-direct {v0, p0, v3, v1, v2}, Lmiui/cloud/common/EncryptLogSender;-><init>(Lmiui/cloud/common/XLogger$LogSender;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lmiui/cloud/common/EncryptLogSender;->mRandomIv:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lmiui/cloud/common/EncryptLogSender;->generateRandomIv()[B

    move-result-object v0

    .line 119
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#&^%s@%s!%s!%s^&#"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 120
    iget-object v8, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    aput-object v8, v7, v2

    aput-object v5, v7, v1

    iget-object v1, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    aput-object v1, v7, v4

    .line 121
    invoke-direct {p0, p3, v0}, Lmiui/cloud/common/EncryptLogSender;->encryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lmiui/cloud/common/EncryptLogSender;->DEFAULT_SYM_ENCRYPT_ALGORITHM_IV:[B

    const-string v5, "#&^%s!%s!%s^&#"

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    iget-object v6, p0, Lmiui/cloud/common/EncryptLogSender;->mEncryptedSecrectKey:Ljava/lang/String;

    aput-object v6, v3, v2

    iget-object v2, p0, Lmiui/cloud/common/EncryptLogSender;->mKeyLabel:Ljava/lang/String;

    aput-object v2, v3, v1

    .line 125
    invoke-direct {p0, p3, v0}, Lmiui/cloud/common/EncryptLogSender;->encryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to encrypt the message: %s. "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 129
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    .line 128
    invoke-interface {v1, v3, v2, v0}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-object p0, p0, Lmiui/cloud/common/EncryptLogSender;->mWrappedLogSender:Lmiui/cloud/common/XLogger$LogSender;

    invoke-interface {p0, p1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
