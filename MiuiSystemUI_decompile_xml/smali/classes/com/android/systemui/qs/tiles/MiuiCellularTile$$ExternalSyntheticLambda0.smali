.class public final synthetic Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 11
    return-void

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 19
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 21
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 28
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 35
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSltListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 42
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mLifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 47
    invoke-virtual {v2, p0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 49
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 54
.end method
