.class public Lcom/googlecode/leptonica/android/MorphApp;
.super Ljava/lang/Object;
.source "MorphApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/leptonica/android/MorphApp$TophatType;
    }
.end annotation


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x7

.field public static final DEFAULT_WIDTH:I = 0x7

.field public static final L_TOPHAT_BLACK:I = 0x1

.field public static final L_TOPHAT_WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePixFastTophat(JIII)J
.end method

.method private static native nativePixTophat(JIII)J
.end method

.method public static pixFastTophat(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/MorphApp;->nativePixFastTophat(JIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 152
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 150
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform pixFastTophat on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pixFastTophatBlack(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 93
    invoke-static {p0, v0, v0, v1}, Lcom/googlecode/leptonica/android/MorphApp;->pixFastTophat(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static pixFastTophatWhite(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v0, v1}, Lcom/googlecode/leptonica/android/MorphApp;->pixFastTophat(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static pixTophat(Lcom/googlecode/leptonica/android/Pix;III)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/MorphApp;->nativePixTophat(JIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 80
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Tophat on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hsize or vsize < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
