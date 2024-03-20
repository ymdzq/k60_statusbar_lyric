.class public Lcom/googlecode/leptonica/android/Binarize;
.super Ljava/lang/Object;
.source "Binarize.java"


# static fields
.field public static final OTSU_SCORE_FRACTION:F = 0.1f

.field public static final OTSU_SIZE_X:I = 0x20

.field public static final OTSU_SIZE_Y:I = 0x20

.field public static final OTSU_SMOOTH_X:I = 0x2

.field public static final OTSU_SMOOTH_Y:I = 0x2

.field public static final SAUVOLA_DEFAULT_NUM_TILES_X:I = 0x1

.field public static final SAUVOLA_DEFAULT_NUM_TILES_Y:I = 0x1

.field public static final SAUVOLA_DEFAULT_REDUCTION_FACTOR:F = 0.35f

.field public static final SAUVOLA_DEFAULT_WINDOW_HALFWIDTH:I = 0x8


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

.method private static native nativeOtsuAdaptiveThreshold(JIIIIF)J
.end method

.method private static native nativeSauvolaBinarizeTiled(JIFII)J
.end method

.method public static otsuAdaptiveThreshold(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 6

    const/16 v1, 0x20

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x2

    const v5, 0x3dcccccd    # 0.1f

    move-object v0, p0

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/googlecode/leptonica/android/Binarize;->otsuAdaptiveThreshold(Lcom/googlecode/leptonica/android/Pix;IIIIF)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static otsuAdaptiveThreshold(Lcom/googlecode/leptonica/android/Pix;IIIIF)Lcom/googlecode/leptonica/android/Pix;
    .locals 9

    if-eqz p0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/googlecode/leptonica/android/Binarize;->nativeOtsuAdaptiveThreshold(JIIIIF)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 134
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Otsu adaptive threshold on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sauvolaBinarizeTiled(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    const v0, 0x3eb33333    # 0.35f

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 146
    invoke-static {p0, v2, v0, v1, v1}, Lcom/googlecode/leptonica/android/Binarize;->sauvolaBinarizeTiled(Lcom/googlecode/leptonica/android/Pix;IFII)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static sauvolaBinarizeTiled(Lcom/googlecode/leptonica/android/Pix;IFII)Lcom/googlecode/leptonica/android/Pix;
    .locals 8

    if-eqz p0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/googlecode/leptonica/android/Binarize;->nativeSauvolaBinarizeTiled(JIFII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 201
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 199
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Sauvola binarization on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
