.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mCachedBitmapName:Ljava/lang/String;

.field mLoadingBitmapName:Ljava/lang/String;

.field mSrcNameLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 10
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;

    .line 12
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;-><init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    .line 17
    return-void
    .line 19
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 2
    return-object p1
    .line 4
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/BitmapProvider;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 15
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
    .line 22
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    invoke-virtual {p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    move-result p3

    .line 13
    if-nez p3, :cond_1

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 16
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result p3

    .line 21
    if-nez p3, :cond_7

    .line 22
    :cond_1
    const/4 p3, 0x0

    .line 24
    if-eqz p2, :cond_3

    .line 25
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 27
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 29
    move-result-object p2

    .line 32
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 33
    invoke-virtual {p2, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 35
    move-result-object p2

    .line 38
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 39
    if-nez p2, :cond_2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    iget-object p3, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    :goto_0
    invoke-virtual {p4, p3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 49
    goto :goto_4

    .line 51
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 52
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 54
    move-result-object p2

    .line 57
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 58
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    .line 60
    invoke-virtual {p2, p1, p4}, Lcom/miui/maml/ResourceManager;->getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 62
    move-result-object p2

    .line 65
    iget-object p4, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 66
    monitor-enter p4

    .line 68
    if-eqz p2, :cond_5

    .line 69
    :try_start_0
    iget-boolean v0, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    .line 71
    if-nez v0, :cond_4

    .line 73
    goto :goto_1

    .line 75
    :cond_4
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 76
    goto :goto_3

    .line 78
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 79
    if-nez p2, :cond_6

    .line 81
    move-object p2, p3

    .line 83
    goto :goto_2

    .line 84
    :cond_6
    iget-object p2, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    :goto_2
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 87
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 92
    :goto_3
    monitor-exit p4

    .line 94
    goto :goto_4

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 99
    return-object p0
    .line 101
.end method
