.class public Lcom/googlecode/leptonica/android/Box;
.super Ljava/lang/Object;
.source "Box.java"


# static fields
.field public static final INDEX_H:I = 0x3

.field public static final INDEX_W:I = 0x2

.field public static final INDEX_X:I = 0x0

.field public static final INDEX_Y:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNativeBox:J

.field private mRecycled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/googlecode/leptonica/android/Box;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Box;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    .line 80
    invoke-static {p1, p2, p3, p4}, Lcom/googlecode/leptonica/android/Box;->nativeCreate(IIII)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 86
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    .line 87
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All box dimensions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(J)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    return-void
.end method

.method private static native nativeCreate(IIII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetGeometry(J[I)Z
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeGetX(J)I
.end method

.method private static native nativeGetY(J)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/googlecode/leptonica/android/Box;->TAG:Ljava/lang/String;

    const-string v1, "Box was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Box;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 219
    throw v0
.end method

.method public getGeometry([I)Z
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_1

    .line 192
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 196
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Box;->nativeGetGeometry(J[I)Z

    move-result p0

    return p0

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Geometry array must be at least 4 elements long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getGeometry()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 174
    invoke-virtual {p0, v0}, Lcom/googlecode/leptonica/android/Box;->getGeometry([I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeight()I
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 147
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetHeight(J)I

    move-result p0

    return p0

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getNativeBox()J
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 99
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    return-wide v0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Box;->getGeometry()[I

    move-result-object p0

    const/4 v0, 0x0

    .line 158
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 159
    aget v1, p0, v1

    const/4 v2, 0x2

    .line 160
    aget v2, p0, v2

    add-int/2addr v2, v0

    const/4 v3, 0x3

    .line 161
    aget p0, p0, v3

    add-int/2addr p0, v1

    .line 162
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public getWidth()I
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetWidth(J)I

    move-result p0

    return p0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getX()I
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 111
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetX(J)I

    move-result p0

    return p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getY()I
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 123
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetY(J)I

    move-result p0

    return p0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public recycle()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    .line 204
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeDestroy(J)V

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    :cond_0
    return-void
.end method
