.class public final Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->sltListener:Lcom/android/systemui/qs/tiles/MiuiWifiTile$sltListener$1;

    .line 19
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 21
    return-void
.end method
