.class public Lcom/googlecode/leptonica/android/AdaptiveMap;
.super Ljava/lang/Object;
.source "AdaptiveMap.java"


# static fields
.field public static final DEFAULT_MIN_COUNT:I = 0x28

.field public static final DEFAULT_TILE_HEIGHT:I = 0xf

.field public static final DEFAULT_TILE_WIDTH:I = 0xa

.field public static final DEFAULT_X_SMOOTH_SIZE:I = 0x2

.field public static final DEFAULT_Y_SMOOTH_SIZE:I = 0x1

.field private static final NORM_BG_VALUE:I = 0xc8

.field private static final NORM_REDUCTION:I = 0x10

.field private static final NORM_SIZE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundNormMorph(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    const/4 v0, 0x3

    const/16 v1, 0xc8

    const/16 v2, 0x10

    .line 60
    invoke-static {p0, v2, v0, v1}, Lcom/googlecode/leptonica/android/AdaptiveMap;->backgroundNormMorph(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static backgroundNormMorph(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    .line 104
    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativeBackgroundNormMorph(JIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 110
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to normalize image background"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeBackgroundNormMorph(JIII)J
.end method

.method private static native nativePixContrastNorm(JIIIII)J
.end method

.method public static pixContrastNorm(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 6

    const/16 v1, 0xa

    const/16 v2, 0xf

    const/16 v3, 0x28

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/googlecode/leptonica/android/AdaptiveMap;->pixContrastNorm(Lcom/googlecode/leptonica/android/Pix;IIIII)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static pixContrastNorm(Lcom/googlecode/leptonica/android/Pix;IIIII)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    if-eqz p0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 169
    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/AdaptiveMap;->nativePixContrastNorm(JIIIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 175
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to normalize image contrast"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
