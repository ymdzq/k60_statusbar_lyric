.class public final Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 8
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 13
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 15
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->sltListener:Lcom/android/systemui/qs/tiles/MiuiWifiTile$sltListener$1;

    .line 19
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 28
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 30
    return-void
    .line 33
.end method
