.class public Lcom/miui/maml/ResourceManager$BitmapInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mKey:Ljava/lang/String;

.field public mLastVisitTime:J

.field public mLoading:Z

.field public final mNinePatch:Landroid/graphics/NinePatch;

.field public final mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    .line 4
    iput-object v0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    iput-object p2, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    .line 11
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    return-void
.end method
