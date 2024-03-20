.class public final Lcom/android/systemui/qs/tiles/BatterySaverTile$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;Lcom/android/systemui/util/settings/SettingsProxy;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .line 2
    const-string p1, "low_power_warning_acknowledged"

    .line 4
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 5
    return-void
    .line 8
.end method
