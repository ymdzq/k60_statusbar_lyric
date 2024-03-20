.class public Lcom/googlecode/leptonica/android/Clip;
.super Ljava/lang/Object;
.source "Clip.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipRectangle(Lcom/googlecode/leptonica/android/Pix;Lcom/googlecode/leptonica/android/Box;)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    .line 57
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Box;->getNativeBox()J

    move-result-wide p0

    .line 56
    invoke-static {v0, v1, p0, p1}, Lcom/googlecode/leptonica/android/Clip;->nativeClipRectangle(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeClipRectangle(JJ)J
.end method
