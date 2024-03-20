.class public Lcom/googlecode/leptonica/android/Rotate;
.super Ljava/lang/Object;
.source "Rotate.java"


# static fields
.field public static final ROTATE_QUALITY:Z = true


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

.method private static native nativeRotate(JFZZ)J
.end method

.method private static native nativeRotateOrth(JI)J
.end method

.method public static rotate(Lcom/googlecode/leptonica/android/Pix;F)Lcom/googlecode/leptonica/android/Pix;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0}, Lcom/googlecode/leptonica/android/Rotate;->rotate(Lcom/googlecode/leptonica/android/Pix;FZ)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Lcom/googlecode/leptonica/android/Pix;FZ)Lcom/googlecode/leptonica/android/Pix;
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-static {p0, p1, p2, v0}, Lcom/googlecode/leptonica/android/Rotate;->rotate(Lcom/googlecode/leptonica/android/Pix;FZZ)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Lcom/googlecode/leptonica/android/Pix;FZZ)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/Rotate;->nativeRotate(JFZZ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rotateOrth(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Rotate;->nativeRotateOrth(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "quads not in {0,1,2,3}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
