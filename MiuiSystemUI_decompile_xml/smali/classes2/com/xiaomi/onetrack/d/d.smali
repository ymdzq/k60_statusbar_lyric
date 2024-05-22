.class public abstract Lcom/xiaomi/onetrack/d/d;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final b:[C

.field public static final c:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [C

    .line 4
    fill-array-data v1, :array_0

    .line 6
    sput-object v1, Lcom/xiaomi/onetrack/d/d;->b:[C

    .line 9
    new-array v0, v0, [C

    .line 11
    fill-array-data v0, :array_1

    .line 13
    sput-object v0, Lcom/xiaomi/onetrack/d/d;->c:[C

    .line 16
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 20
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/xiaomi/onetrack/d/d;->b:[C

    .line 4
    array-length v2, p0

    .line 6
    shl-int/lit8 v3, v2, 0x1

    .line 7
    new-array v3, v3, [C

    .line 9
    const/4 v4, 0x0

    .line 11
    move v5, v4

    .line 12
    :goto_0
    if-ge v4, v2, :cond_0

    .line 13
    add-int/lit8 v6, v5, 0x1

    .line 15
    aget-byte v7, p0, v4

    .line 17
    and-int/lit16 v8, v7, 0xf0

    .line 19
    ushr-int/lit8 v8, v8, 0x4

    .line 21
    aget-char v8, v1, v8

    .line 23
    aput-char v8, v3, v5

    .line 25
    add-int/lit8 v5, v6, 0x1

    .line 27
    and-int/lit8 v7, v7, 0xf

    .line 29
    aget-char v7, v1, v7

    .line 31
    aput-char v7, v3, v6

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 38
    return-object v0
    .line 41
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_1

    .line 11
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 12
    :goto_1
    const-string v0, "MD5"

    .line 13
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 15
    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 19
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->a([B)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :catch_1
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
    .line 38
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 11
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    :try_start_0
    const-string v0, "MD5"

    .line 17
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    new-instance p0, Ljava/math/BigInteger;

    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 28
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 33
    const-string v0, "%1$032X"

    .line 36
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "getMD5 exception: "

    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 61
    const-string v0, "DigestUtil"

    .line 62
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    return-object p0
    .line 71
.end method
