.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# instance fields
.field public final mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 7
    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onDataSaverChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 2
    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onHotspotAvailabilityChanged(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 6
    const-string v0, "Tile removed. Hotspot no longer available"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 15
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->removeTile(Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onHotspotChanged(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 2
    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    .line 4
    iput p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method
