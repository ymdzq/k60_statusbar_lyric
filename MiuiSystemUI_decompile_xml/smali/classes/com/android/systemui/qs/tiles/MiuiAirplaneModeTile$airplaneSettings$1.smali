.class public final Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;
.super Lcom/android/systemui/util/MiuiSettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/GlobalSettings;I)V
    .locals 8

    .line 1
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;

    .line 2
    const-string v5, "airplane_mode_on"

    .line 4
    const/4 v7, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p4

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p5

    .line 10
    move-object v4, p2

    .line 11
    move v6, p6

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/MiuiSettingObserver;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    const/4 p2, 0x1

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile$airplaneSettings$1;->this$0:Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;

    .line 9
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mTargetAirplane:Z

    .line 11
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/MiuiAirplaneModeTile;->mAirplane:Z

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 16
    :cond_1
    return-void
    .line 19
.end method
