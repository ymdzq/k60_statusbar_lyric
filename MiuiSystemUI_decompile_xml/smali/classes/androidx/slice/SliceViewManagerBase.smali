.class public abstract Landroidx/slice/SliceViewManagerBase;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListenerLookup:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    .line 10
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public abstract pinSlice(Landroid/net/Uri;)V
.end method

.method public final registerSliceCallback(Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v1, Landroidx/slice/SliceViewManagerBase$1;

    .line 11
    invoke-direct {v1, v0}, Landroidx/slice/SliceViewManagerBase$1;-><init>(Landroid/os/Handler;)V

    .line 13
    new-instance v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 16
    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;-><init>(Landroidx/slice/SliceViewManagerBase;Landroid/net/Uri;Landroidx/slice/SliceViewManagerBase$1;Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;)V

    .line 18
    new-instance v1, Landroid/util/Pair;

    .line 21
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    .line 26
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p2, p0, Landroidx/slice/SliceViewManagerBase;->mListenerLookup:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 34
    check-cast p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 35
    if-eqz p2, :cond_0

    .line 37
    iget-object v1, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    .line 39
    iget-object v2, v1, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v2

    .line 46
    iget-object v3, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    .line 47
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    iget-boolean v2, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    .line 52
    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    .line 56
    invoke-virtual {v1, v2}, Landroidx/slice/SliceViewManagerBase;->unpinSlice(Landroid/net/Uri;)V

    .line 58
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    .line 62
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p1, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    move-result-object p1

    .line 73
    iget-object p2, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 76
    move-result-object p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 82
    iget-object p1, p0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    move-result-object p1

    .line 90
    iget-object v1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    .line 91
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p1, p2, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    iget-boolean p1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    .line 97
    if-nez p1, :cond_1

    .line 99
    :try_start_1
    iget-object p1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    .line 101
    invoke-virtual {p0, p1}, Landroidx/slice/SliceViewManagerBase;->pinSlice(Landroid/net/Uri;)V

    .line 103
    iput-boolean v2, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :catch_0
    :cond_1
    return-void

    .line 108
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    throw p0
    .line 110
.end method

.method public abstract unpinSlice(Landroid/net/Uri;)V
.end method
