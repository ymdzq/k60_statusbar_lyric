.class public Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    return-void
    .line 7
.end method

.method public static synthetic access$002(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    return-object p1
    .line 4
.end method

.method public static equals(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    iget-object v2, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 10
    if-ne v1, v2, :cond_1

    .line 12
    iget p0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 14
    iget p1, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 16
    if-ne p0, p1, :cond_1

    .line 18
    const/4 v0, 0x1

    .line 20
    :cond_1
    :goto_0
    return v0
    .line 21
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    return-object p0
    .line 4
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 6
    return-void
    .line 8
.end method

.method public set(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 6
    iget p1, p1, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 8
    iput p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 13
    :goto_0
    return-void
    .line 16
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 9
    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 14
    if-eq p1, p0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    return v1
    .line 20
.end method

.method public updateVersion()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 2
    add-int/lit8 v1, v0, 0x1

    .line 4
    iput v1, p0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 6
    return v0
    .line 8
.end method
