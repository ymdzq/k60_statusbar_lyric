.class public final Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mButtons:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mIsConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    .line 6
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const-string p1, "noConnectivity"

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    move-result p1

    .line 20
    xor-int/lit8 p1, p1, 0x1

    .line 21
    iget-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    .line 23
    if-eq p2, p1, :cond_0

    .line 25
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    .line 27
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/mediarouter/app/MediaRouteButton;

    .line 47
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    return-void
    .line 53
.end method
