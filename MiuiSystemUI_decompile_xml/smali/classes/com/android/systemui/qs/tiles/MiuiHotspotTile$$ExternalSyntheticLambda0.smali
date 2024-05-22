.class public final synthetic Lcom/android/systemui/qs/tiles/MiuiHotspotTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MiuiHotspotTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MiuiHotspotTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MiuiHotspotTile;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MiuiHotspotTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mHotspotCallback:Lcom/android/systemui/qs/tiles/MiuiHotspotTile$Callback;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 8
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 13
    invoke-interface {v0, v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mListener:Lcom/android/systemui/qs/tiles/MiuiHotspotTile$1;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 20
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mSltListener:Lcom/android/systemui/qs/tiles/MiuiHotspotTile$2;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiHotspotTile;->mSltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 27
    invoke-interface {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 29
    return-void
    .line 32
.end method
