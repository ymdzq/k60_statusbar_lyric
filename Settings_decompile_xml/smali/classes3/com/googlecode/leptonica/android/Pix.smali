.class public Lcom/googlecode/leptonica/android/Pix;
.super Ljava/lang/Object;
.source "Pix.java"


# static fields
.field public static final IFF_BMP:I = 0x1

.field public static final IFF_DEFAULT:I = 0x12

.field public static final IFF_GIF:I = 0xd

.field public static final IFF_JFIF_JPEG:I = 0x2

.field public static final IFF_JP2:I = 0xe

.field public static final IFF_LPDF:I = 0x10

.field public static final IFF_PNG:I = 0x3

.field public static final IFF_PNM:I = 0xb

.field public static final IFF_PS:I = 0xc

.field public static final IFF_SPIX:I = 0x13

.field public static final IFF_TIFF:I = 0x4

.field public static final IFF_TIFF_G3:I = 0x7

.field public static final IFF_TIFF_G4:I = 0x8

.field public static final IFF_TIFF_JPEG:I = 0x11

.field public static final IFF_TIFF_LZW:I = 0x9

.field public static final IFF_TIFF_PACKBITS:I = 0x5

.field public static final IFF_TIFF_RLE:I = 0x6

.field public static final IFF_TIFF_ZIP:I = 0xa

.field public static final IFF_UNKNOWN:I = 0x0

.field public static final IFF_WEBP:I = 0xf

.field public static final INDEX_D:I = 0x2

.field public static final INDEX_H:I = 0x1

.field public static final INDEX_W:I


# instance fields
.field private final mNativePix:J

.field private mRecycled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x18

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Depth must be one of 1, 2, 4, 8, 16, or 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreatePix(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pix width and height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    return-void
.end method

.method public static createFromPix([BIII)Lcom/googlecode/leptonica/android/Pix;
    .locals 0

    .line 208
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreateFromData([BIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 214
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method private static native nativeClone(J)J
.end method

.method private static native nativeCopy(J)J
.end method

.method private static native nativeCreateFromData([BIII)J
.end method

.method private static native nativeCreatePix(III)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetData(J)[B
.end method

.method private static native nativeGetDepth(J)I
.end method

.method private static native nativeGetDimensions(J[I)Z
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetInputFormat(J)I
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetRefCount(J)I
.end method

.method private static native nativeGetSpp(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeInvert(J)Z
.end method

.method private static native nativeSetPixel(JIII)V
.end method


# virtual methods
.method public clone()Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    .line 143
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    .line 146
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeClone(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 152
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 144
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->clone()Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    .line 162
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    .line 165
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeCopy(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 171
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 163
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getData()[B
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    .line 93
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetData(J)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "native getData failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getDepth()I
    .locals 2

    .line 259
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 262
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDepth(J)I

    move-result p0

    return p0

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getDimensions([I)Z
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 132
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result p0

    return p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getDimensions()[I
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 114
    invoke-virtual {p0, v0}, Lcom/googlecode/leptonica/android/Pix;->getDimensions([I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getHeight()I
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 250
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetHeight(J)I

    move-result p0

    return p0

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getImageFormat()I
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 286
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetInputFormat(J)I

    move-result p0

    return p0

    .line 284
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getNativePix()J
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 80
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    return-wide v0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getPixel(II)I
    .locals 2

    .line 303
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 312
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pix;->nativeGetPixel(JII)I

    move-result p0

    return p0

    .line 309
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result p0

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getRefCount()I
    .locals 2

    .line 290
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetRefCount(J)I

    move-result p0

    return p0
.end method

.method public getSpp()I
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 274
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetSpp(J)I

    move-result p0

    return p0

    .line 272
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getWidth()I
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 238
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetWidth(J)I

    move-result p0

    return p0

    .line 236
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public invert()Z
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 183
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeInvert(J)Z

    move-result p0

    return p0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public recycle()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 192
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeDestroy(J)V

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    :cond_0
    return-void
.end method

.method public setPixel(III)V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 334
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeSetPixel(JIII)V

    return-void

    .line 331
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
