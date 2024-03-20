.class public Lcom/googlecode/leptonica/android/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/leptonica/android/Edge$EdgeOrientationFlag;
    }
.end annotation


# static fields
.field public static final L_ALL_EDGES:I = 0x2

.field public static final L_HORIZONTAL_EDGES:I = 0x0

.field public static final L_VERTICAL_EDGES:I = 0x1


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

.method private static native nativePixSobelEdgeFilter(JI)J
.end method

.method public static pixSobelEdgeFilter(Lcom/googlecode/leptonica/android/Pix;I)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Edge;->nativePixSobelEdgeFilter(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to perform Sobel edge filter on image"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid orientation flag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix depth must be 8bpp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
