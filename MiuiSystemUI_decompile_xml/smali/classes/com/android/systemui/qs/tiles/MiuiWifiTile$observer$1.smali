.class final Lcom/android/systemui/qs/tiles/MiuiWifiTile$observer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$observer$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$observer$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 4
    if-ne p2, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 8
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->start()V

    .line 12
    sget-boolean p2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 15
    if-nez p2, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 28
    :goto_1
    if-nez p2, :cond_2

    .line 29
    goto :goto_2

    .line 31
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 34
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 39
    if-nez p2, :cond_4

    .line 40
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_2

    .line 45
    :cond_3
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 46
    if-ne p2, p1, :cond_4

    .line 48
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 50
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 52
    iget-object p2, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 56
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->stop()V

    .line 61
    :cond_4
    :goto_2
    return-void
    .line 64
.end method
