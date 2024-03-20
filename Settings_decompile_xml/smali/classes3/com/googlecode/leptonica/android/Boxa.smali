.class public Lcom/googlecode/leptonica/android/Boxa;
.super Ljava/lang/Object;
.source "Boxa.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNativeBoxa:J

.field private mRecycled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/googlecode/leptonica/android/Boxa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Boxa;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    return-void
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetGeometry(JI[I)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/googlecode/leptonica/android/Boxa;->TAG:Ljava/lang/String;

    const-string v1, "Boxa was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Boxa;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    throw v0
.end method

.method public getCount()I
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetCount(J)I

    move-result p0

    return p0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getGeometry(I[I)Z
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 123
    array-length v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 127
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p0

    return p0

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Geometry array must be at least 4 elements long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getGeometry(I)[I
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/leptonica/android/Boxa;->getGeometry(I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getNativeBoxa()J
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 65
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    return-wide v0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 83
    invoke-virtual {p0, p1}, Lcom/googlecode/leptonica/android/Boxa;->getGeometry(I)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 84
    aget p1, p0, p1

    const/4 v0, 0x1

    .line 85
    aget v0, p0, v0

    const/4 v1, 0x2

    .line 86
    aget v1, p0, v1

    add-int/2addr v1, p1

    const/4 v2, 0x3

    .line 87
    aget p0, p0, v2

    add-int/2addr p0, v0

    .line 88
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeDestroy(J)V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
