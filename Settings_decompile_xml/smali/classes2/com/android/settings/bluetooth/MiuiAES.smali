.class public Lcom/android/settings/bluetooth/MiuiAES;
.super Ljava/lang/Object;
.source "MiuiAES.java"


# static fields
.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B[B)[B
    .locals 2

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAES;->setKey([B)V

    const-string p1, "AES/ECB/NoPadding"

    .line 48
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 49
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAES;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt([B[B)[B
    .locals 2

    .line 33
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAES;->setKey([B)V

    const-string p1, "AES/ECB/NoPadding"

    .line 34
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 35
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAES;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 37
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setKey([B)V
    .locals 2

    .line 24
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAES;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
