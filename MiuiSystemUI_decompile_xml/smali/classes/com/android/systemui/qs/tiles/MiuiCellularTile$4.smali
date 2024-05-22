.class Lcom/android/systemui/qs/tiles/MiuiCellularTile$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$4;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$4;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 4
    if-ne p2, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 8
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->start()V

    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 15
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 17
    sget-boolean p2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 19
    if-nez p2, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 23
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 p2, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 32
    :goto_1
    if-nez p2, :cond_2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    goto :goto_2

    .line 38
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

    .line 41
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result p2

    .line 46
    if-nez p2, :cond_4

    .line 47
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_2

    .line 52
    :cond_3
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 53
    if-ne p2, p1, :cond_4

    .line 55
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 57
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 59
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 61
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

    .line 63
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 68
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->stop()V

    .line 72
    :cond_4
    :goto_2
    return-void
    .line 75
.end method
