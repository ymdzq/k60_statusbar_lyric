.class public Lcom/android/settings/device/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static sTemp:[C

.field private static final strDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 13
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/device/MD5Util;->strDigits:[C

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 15
    sput-object v0, Lcom/android/settings/device/MD5Util;->sTemp:[C

    return-void

    nop

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
.end method

.method private static byteToArrayString(B)Ljava/lang/String;
    .locals 4

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .line 28
    :cond_0
    sget-object v0, Lcom/android/settings/device/MD5Util;->sTemp:[C

    sget-object v1, Lcom/android/settings/device/MD5Util;->strDigits:[C

    div-int/lit8 v2, p0, 0x10

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    .line 29
    rem-int/lit8 p0, p0, 0x10

    aget-char p0, v1, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    .line 30
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static byteToString([B)Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 41
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 42
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/settings/device/MD5Util;->byteToArrayString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "MD5"

    .line 57
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/device/MD5Util;->byteToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
