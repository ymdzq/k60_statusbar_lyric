.class public final Lcom/android/systemui/qs/tiles/VoWifiTile$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/VoWifiTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/VoWifiTile;->isAvailable()Z

    .line 4
    move-result v0

    .line 7
    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/VoWifiTile;->mIsAvailable:Z

    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "onChange "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 33
    iget v2, v2, Lcom/android/systemui/qs/tiles/VoWifiTile;->mSlotId:I

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 43
    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/VoWifiTile;->mIsAvailable:Z

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/VoWifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 57
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
