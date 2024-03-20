.class public Lcom/googlecode/leptonica/android/Skew;
.super Ljava/lang/Object;
.source "Skew.java"


# static fields
.field public static final SEARCH_MIN_DELTA:F = 0.01f

.field public static final SEARCH_REDUCTION:I = 0x4

.field public static final SWEEP_DELTA:F = 5.0f

.field public static final SWEEP_RANGE:F = 30.0f

.field public static final SWEEP_REDUCTION:I = 0x8


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

.method public static findSkew(Lcom/googlecode/leptonica/android/Pix;)F
    .locals 6

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/16 v3, 0x8

    const/4 v4, 0x4

    const v5, 0x3c23d70a    # 0.01f

    move-object v0, p0

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/googlecode/leptonica/android/Skew;->findSkew(Lcom/googlecode/leptonica/android/Pix;FFIIF)F

    move-result p0

    return p0
.end method

.method public static findSkew(Lcom/googlecode/leptonica/android/Pix;FFIIF)F
    .locals 7

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/Skew;->nativeFindSkew(JFFIIF)F

    move-result p0

    return p0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeFindSkew(JFFIIF)F
.end method
