.class public abstract Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ALPHANUMERIC_TABLE:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    .line 9
    return-void

    .line 11
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
    .line 12
.end method

.method public static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x28

    .line 4
    if-gt v1, v2, :cond_3

    .line 6
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    .line 8
    if-lt v1, v0, :cond_2

    .line 10
    if-gt v1, v2, :cond_2

    .line 12
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    .line 14
    add-int/lit8 v3, v1, -0x1

    .line 16
    aget-object v2, v2, v3

    .line 18
    iget v3, v2, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 20
    iget-object v4, v2, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result v5

    .line 27
    aget-object v4, v4, v5

    .line 28
    iget-object v5, v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 30
    array-length v6, v5

    .line 32
    const/4 v7, 0x0

    .line 33
    move v8, v7

    .line 34
    :goto_1
    if-ge v7, v6, :cond_0

    .line 35
    aget-object v9, v5, v7

    .line 37
    iget v9, v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 39
    add-int/2addr v8, v9

    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    goto :goto_1

    .line 44
    :cond_0
    iget v4, v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 45
    mul-int/2addr v8, v4

    .line 47
    sub-int/2addr v3, v8

    .line 48
    add-int/lit8 v4, p0, 0x7

    .line 49
    div-int/lit8 v4, v4, 0x8

    .line 51
    if-lt v3, v4, :cond_1

    .line 53
    return-object v2

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 61
    throw p0

    .line 64
    :cond_3
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 65
    const-string p1, "Data too big"

    .line 67
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
    .line 72
.end method
