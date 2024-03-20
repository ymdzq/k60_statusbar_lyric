.class public Lcom/googlecode/leptonica/android/WriteFile;
.super Ljava/lang/Object;
.source "WriteFile.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native nativeWriteBytes8(J[B)I
.end method

.method private static native nativeWriteImpliedFormat(JLjava/lang/String;)Z
.end method

.method public static writeBitmap(Lcom/googlecode/leptonica/android/Pix;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDimensions()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 117
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 118
    aget v0, v0, v2

    .line 120
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 121
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeBytes8(Lcom/googlecode/leptonica/android/Pix;[B)I
    .locals 2

    if-eqz p0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 71
    array-length v1, p1

    if-lt v1, v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBytes8(J[B)I

    move-result p0

    return p0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data array must be large enough to hold image bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeBytes8(Lcom/googlecode/leptonica/android/Pix;)[B
    .locals 3

    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 44
    new-array v0, v0, [B

    .line 46
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 47
    invoke-static {p0}, Lcom/googlecode/leptonica/android/Convert;->convertTo8(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    .line 48
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->writeBytes8(Lcom/googlecode/leptonica/android/Pix;[B)I

    .line 49
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->recycle()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->writeBytes8(Lcom/googlecode/leptonica/android/Pix;[B)I

    :goto_0
    return-object v0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeImpliedFormat(Lcom/googlecode/leptonica/android/Pix;Ljava/io/File;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {v0, v1, p0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteImpliedFormat(JLjava/lang/String;)Z

    move-result p0

    return p0

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
