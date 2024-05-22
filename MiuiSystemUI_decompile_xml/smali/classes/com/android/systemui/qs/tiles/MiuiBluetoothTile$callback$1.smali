.class public final Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBluetoothDevicesChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onBluetoothRestrictStateChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onBluetoothStateChange()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method
