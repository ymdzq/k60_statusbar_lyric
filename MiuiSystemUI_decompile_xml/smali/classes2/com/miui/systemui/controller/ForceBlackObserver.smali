.class public final Lcom/miui/systemui/controller/ForceBlackObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public volatile mForceBlack:Z

.field public volatile mForceBlackV2:Z

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mMainHandler:Landroid/os/Handler;

    .line 14
    new-instance p2, Lcom/miui/systemui/controller/ForceBlackObserver$1;

    .line 16
    invoke-direct {p2, p0, p3}, Lcom/miui/systemui/controller/ForceBlackObserver$1;-><init>(Lcom/miui/systemui/controller/ForceBlackObserver;Landroid/os/Handler;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "force_black"

    .line 25
    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v0

    .line 36
    const-string v2, "force_black_v2"

    .line 37
    invoke-static {v0, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 42
    iput-boolean v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlackV2:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object p0

    .line 48
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, -0x1

    .line 54
    invoke-virtual {p0, v0, v2, p2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    move-result-object p0

    .line 61
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1, v2, p2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    new-instance p0, Lcom/miui/systemui/controller/ForceBlackObserver$2;

    .line 69
    invoke-direct {p0, p2}, Lcom/miui/systemui/controller/ForceBlackObserver$2;-><init>(Lcom/miui/systemui/controller/ForceBlackObserver$1;)V

    .line 71
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
    .line 77
.end method


# virtual methods
.method public final addCallback(Lcom/miui/systemui/controller/ForceBlackObserver$Callback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 5
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
