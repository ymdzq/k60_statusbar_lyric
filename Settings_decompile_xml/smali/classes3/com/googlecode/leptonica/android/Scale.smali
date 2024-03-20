.class public Lcom/googlecode/leptonica/android/Scale;
.super Ljava/lang/Object;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/leptonica/android/Scale$ScaleType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeScale(JFF)J
.end method

.method private static native nativeScaleGeneral(JFFFI)J
.end method

.method public static scale(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .locals 0

    .line 97
    invoke-static {p0, p1, p1}, Lcom/googlecode/leptonica/android/Scale;->scale(Lcom/googlecode/leptonica/android/Pix;FF)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static scale(Lcom/googlecode/leptonica/android/Pix;FF)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Scale;->nativeScale(JFF)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_0

    .line 139
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to natively scale pix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Y scaling factor must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "X scaling factor must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scaleToSize(Lcom/googlecode/leptonica/android/Pix;IILcom/googlecode/leptonica/android/Scale$ScaleType;)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v1

    div-float/2addr p2, v0

    .line 69
    sget-object v0, Lcom/googlecode/leptonica/android/Scale$1;->$SwitchMap$com$googlecode$leptonica$android$Scale$ScaleType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    move p2, p1

    .line 85
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/googlecode/leptonica/android/Scale;->scale(Lcom/googlecode/leptonica/android/Pix;FF)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scaleWithoutSharpening(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 113
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/leptonica/android/Scale;->nativeScaleGeneral(JFFFI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scaling factor must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
