.class public Lcom/googlecode/leptonica/android/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


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

.method public static convertTo8(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Convert;->nativeConvertTo8(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 44
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to natively convert pix"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeConvertTo8(J)J
.end method
