.class public abstract Lcom/android/settingslib/qrcode/QrCodeGenerator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static encodeQrCode(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    new-instance v5, Ljava/util/HashMap;

    .line 2
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 19
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 30
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    .line 32
    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 34
    move-object v1, p1

    .line 37
    move v3, p0

    .line 38
    move v4, p0

    .line 39
    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    .line 40
    move-result-object p1

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 44
    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 46
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    move v2, v1

    .line 51
    :goto_0
    if-ge v2, p0, :cond_3

    .line 52
    move v3, v1

    .line 54
    :goto_1
    if-ge v3, p0, :cond_2

    .line 55
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 57
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    const/high16 v4, -0x1000000

    .line 63
    goto :goto_2

    .line 65
    :cond_1
    const/4 v4, -0x1

    .line 66
    :goto_2
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_1

    .line 72
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    return-object v0
    .line 76
.end method
