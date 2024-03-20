.class public Lcom/googlecode/leptonica/android/Pixa;
.super Ljava/lang/Object;
.source "Pixa.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/leptonica/android/Pixa$PixIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/googlecode/leptonica/android/Pix;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mHeight:I

.field private final mNativePixa:J

.field private mRecycled:Z

.field final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-class v0, Lcom/googlecode/leptonica/android/Pixa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Pixa;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    .line 94
    iput p3, p0, Lcom/googlecode/leptonica/android/Pixa;->mWidth:I

    .line 95
    iput p4, p0, Lcom/googlecode/leptonica/android/Pixa;->mHeight:I

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    return-void
.end method

.method public static createPixa(I)Lcom/googlecode/leptonica/android/Pixa;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0, v0}, Lcom/googlecode/leptonica/android/Pixa;->createPixa(III)Lcom/googlecode/leptonica/android/Pixa;

    move-result-object p0

    return-object p0
.end method

.method public static createPixa(III)Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 76
    invoke-static {p0}, Lcom/googlecode/leptonica/android/Pixa;->nativeCreate(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 82
    new-instance p0, Lcom/googlecode/leptonica/android/Pixa;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method private static native nativeAdd(JJJI)V
.end method

.method private static native nativeAddBox(JJI)V
.end method

.method private static native nativeAddPix(JJI)V
.end method

.method private static native nativeCopy(J)J
.end method

.method private static native nativeCreate(I)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetBox(JI)J
.end method

.method private static native nativeGetBoxGeometry(JI[I)Z
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetPix(JI)J
.end method

.method private static native nativeJoin(JJ)Z
.end method

.method private static native nativeMergeAndReplacePix(JII)V
.end method

.method private static native nativeReplacePix(JIJJ)V
.end method

.method private static native nativeSort(JII)J
.end method

.method private static native nativeWriteToFileRandomCmap(JLjava/lang/String;II)Z
.end method


# virtual methods
.method public add(Lcom/googlecode/leptonica/android/Pix;Lcom/googlecode/leptonica/android/Box;I)V
    .locals 8

    .line 243
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 246
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/googlecode/leptonica/android/Box;->getNativeBox()J

    move-result-wide v5

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Pixa;->nativeAdd(JJJI)V

    return-void

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public addBox(Lcom/googlecode/leptonica/android/Box;I)V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 231
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Box;->getNativeBox()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/googlecode/leptonica/android/Pixa;->nativeAddBox(JJI)V

    return-void

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public addPix(Lcom/googlecode/leptonica/android/Pix;I)V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/googlecode/leptonica/android/Pixa;->nativeAddPix(JJI)V

    return-void

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public copy()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 118
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 121
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeCopy(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Lcom/googlecode/leptonica/android/Pixa;

    iget v3, p0, Lcom/googlecode/leptonica/android/Pixa;->mWidth:I

    iget p0, p0, Lcom/googlecode/leptonica/android/Pixa;->mHeight:I

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v2

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/googlecode/leptonica/android/Pixa;->TAG:Ljava/lang/String;

    const-string v1, "Pixa was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pixa;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    throw v0
.end method

.method public getBox(I)Lcom/googlecode/leptonica/android/Box;
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 259
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetBox(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Box;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Box;-><init>(J)V

    return-object v0

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getBoxGeometry(I[I)Z
    .locals 2

    .line 358
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 361
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetBoxGeometry(JI[I)Z

    move-result p0

    return p0

    .line 359
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getBoxGeometry(I)[I
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/leptonica/android/Pixa;->getBoxGeometry(I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getBoxRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 371
    invoke-virtual {p0, p1}, Lcom/googlecode/leptonica/android/Pixa;->getBoxGeometry(I)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 377
    aget p1, p0, p1

    const/4 v0, 0x1

    .line 378
    aget v0, p0, v0

    const/4 v1, 0x2

    .line 379
    aget v1, p0, v1

    const/4 v2, 0x3

    .line 380
    aget p0, p0, v2

    .line 382
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v1, p1

    add-int/2addr p0, v0

    invoke-direct {v2, p1, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public getBoxRects()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 391
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 394
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetCount(J)I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 399
    invoke-virtual {p0, v4, v1}, Lcom/googlecode/leptonica/android/Pixa;->getBoxGeometry(I[I)Z

    aget v5, v1, v3

    const/4 v6, 0x1

    aget v6, v1, v6

    .line 403
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v5

    const/4 v9, 0x3

    aget v9, v1, v9

    add-int/2addr v9, v6

    invoke-direct {v7, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 405
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 392
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getHeight()I
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 312
    iget p0, p0, Lcom/googlecode/leptonica/android/Pixa;->mHeight:I

    return p0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getNativePixa()J
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 108
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    return-wide v0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getPix(I)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 278
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 276
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa;->mWidth:I

    iget p0, p0, Lcom/googlecode/leptonica/android/Pixa;->mHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getWidth()I
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 298
    iget p0, p0, Lcom/googlecode/leptonica/android/Pixa;->mWidth:I

    return p0

    .line 296
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/googlecode/leptonica/android/Pix;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/googlecode/leptonica/android/Pixa$PixIterator;-><init>(Lcom/googlecode/leptonica/android/Pixa;Lcom/googlecode/leptonica/android/Pixa$1;)V

    return-object v0
.end method

.method public join(Lcom/googlecode/leptonica/android/Pixa;)Z
    .locals 2

    .line 200
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    iget-wide p0, p1, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1, p0, p1}, Lcom/googlecode/leptonica/android/Pixa;->nativeJoin(JJ)Z

    move-result p0

    return p0

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public mergeAndReplacePix(II)V
    .locals 2

    .line 436
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 439
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pixa;->nativeMergeAndReplacePix(JII)V

    return-void

    .line 437
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 175
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeDestroy(J)V

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public replacePix(ILcom/googlecode/leptonica/android/Pix;Lcom/googlecode/leptonica/android/Box;)V
    .locals 8

    .line 420
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 423
    iget-wide v1, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-virtual {p2}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v4

    .line 424
    invoke-virtual {p3}, Lcom/googlecode/leptonica/android/Box;->getNativeBox()J

    move-result-wide v6

    move v3, p1

    .line 423
    invoke-static/range {v1 .. v7}, Lcom/googlecode/leptonica/android/Pixa;->nativeReplacePix(JIJJ)V

    return-void

    .line 421
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 162
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetCount(J)I

    move-result p0

    return p0

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public sort(II)Lcom/googlecode/leptonica/android/Pixa;
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 144
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pixa;->nativeSort(JII)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa;->mWidth:I

    iget p0, p0, Lcom/googlecode/leptonica/android/Pixa;->mHeight:I

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public writeToFileRandomCmap(Ljava/io/File;)Z
    .locals 3

    .line 450
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mRecycled:Z

    if-nez v0, :cond_0

    .line 453
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pixa;->mNativePixa:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/googlecode/leptonica/android/Pixa;->mWidth:I

    iget p0, p0, Lcom/googlecode/leptonica/android/Pixa;->mHeight:I

    invoke-static {v0, v1, p1, v2, p0}, Lcom/googlecode/leptonica/android/Pixa;->nativeWriteToFileRandomCmap(JLjava/lang/String;II)Z

    move-result p0

    return p0

    .line 451
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
