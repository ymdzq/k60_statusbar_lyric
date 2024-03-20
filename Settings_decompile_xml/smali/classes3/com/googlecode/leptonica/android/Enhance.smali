.class public Lcom/googlecode/leptonica/android/Enhance;
.super Ljava/lang/Object;
.source "Enhance.java"


# static fields
.field public static final DEFAULT_UNSHARP_FRACTION:F = 0.3f

.field public static final DEFAULT_UNSHARP_HALFWIDTH:I = 0x1


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

.method private static native nativeUnsharpMasking(JIF)J
.end method

.method public static unsharpMasking(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    const/4 v0, 0x1

    const v1, 0x3e99999a    # 0.3f

    .line 45
    invoke-static {p0, v0, v1}, Lcom/googlecode/leptonica/android/Enhance;->unsharpMasking(Lcom/googlecode/leptonica/android/Pix;IF)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static unsharpMasking(Lcom/googlecode/leptonica/android/Pix;IF)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Enhance;->nativeUnsharpMasking(JIF)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_0

    .line 78
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
