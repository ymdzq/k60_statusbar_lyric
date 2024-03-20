.class public Lcom/googlecode/leptonica/android/GrayQuant;
.super Ljava/lang/Object;
.source "GrayQuant.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePixThresholdToBinary(JI)J
.end method

.method public static pixThresholdToBinary(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-eqz p0, :cond_7

    .line 40
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 4 or 8 bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne v0, v2, :cond_3

    const/16 v2, 0x10

    if-gt p1, v2, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "4 bpp thresh not in {0-16}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ne v0, v1, :cond_5

    const/16 v0, 0x100

    if-gt p1, v0, :cond_4

    goto :goto_2

    .line 46
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "8 bpp thresh not in {0-256}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/GrayQuant;->nativePixThresholdToBinary(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_6

    .line 54
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 52
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform binarization"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
