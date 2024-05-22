.class public final Lcom/android/systemui/qs/tiles/CastTile$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 11
    if-eqz p1, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 17
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    .line 20
    if-eq p1, v0, :cond_2

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mWifiConnected:Z

    .line 24
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHotspotConnected:Z

    .line 26
    if-nez p1, :cond_2

    .line 28
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 31
    :cond_2
    return-void
    .line 34
.end method
