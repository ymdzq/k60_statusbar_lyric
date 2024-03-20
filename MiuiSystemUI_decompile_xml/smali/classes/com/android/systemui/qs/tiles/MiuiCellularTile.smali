.class public final Lcom/android/systemui/qs/tiles/MiuiCellularTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final MULTI_SIM:Z


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mDataUsageCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

.field public mDataUsageInfo:Ljava/util/Map;

.field public final mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

.field public final mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

.field public mIsSltOn:Z

.field public final mListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

.field public mSimInfoRecordList:Ljava/util/List;

.field public final mSltController:Lcom/android/systemui/controlcenter/policy/SltController;

.field public final mSltListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

.field public mThermalAvailable:Z

.field public final mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;


# direct methods
.method public static synthetic $r8$lambda$mIqMB7MRO1oKVl-52i6wV6HlUXw(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->click(Landroid/view/View;)V

    .line 3
    return-void
    .line 6
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.miui.singlesim"

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    move v1, v2

    .line 13
    :cond_0
    sput-boolean v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->MULTI_SIM:Z

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/controlcenter/policy/ThermalController;Lcom/android/systemui/controlcenter/policy/SltController;Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 10
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 13
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 15
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;I)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 21
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

    .line 28
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSltListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

    .line 35
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 37
    check-cast p10, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 39
    iget-object p1, p10, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 43
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 45
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 52
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 54
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 56
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 58
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 60
    invoke-virtual {p11}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isCellularAvailable()Z

    .line 62
    move-result p1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalAvailable:Z

    .line 66
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 68
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 73
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 75
    const/4 p2, 0x1

    .line 77
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;I)V

    .line 78
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
    .line 84
.end method

.method public static longClickDataIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    const-string v0, "com.android.phone/.settings.MobileNetworkSettings"

    .line 10
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 12
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    return-object v1

    .line 18
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 19
    const-string v2, "android.intent.action.MAIN"

    .line 21
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 26
    const-string v0, ":miui:starting_window_label"

    .line 29
    const-string v2, ""

    .line 31
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/high16 v0, 0x14000000

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    return-object v1
    .line 41
.end method


# virtual methods
.method public final click(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrOps()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 8
    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 16
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 18
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 20
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v1

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 29
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->collapsePanels()V

    .line 31
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 34
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 36
    const v3, 0x7f140006    # @style/AlertDialog.Theme.DayNight

    .line 38
    invoke-direct {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    .line 44
    const v1, 0x7f13097c    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 50
    if-eqz p1, :cond_1

    .line 53
    const v1, 0x7f130974    # @string/quick_settings_cellular_detail_dialog_message_turnoff 'If you turn off mobile data, you won't be able to use the internet unless you connect to WLAN. You'l ...'

    .line 55
    goto :goto_1

    .line 58
    :cond_1
    const v1, 0x7f130976    # @string/quick_settings_cellular_detail_dialog_message_turnon 'Using mobile data may generate additional charges depending on your payment plan. Allow using mobile ...'

    .line 59
    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 62
    new-instance v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda2;

    .line 65
    invoke-direct {v1}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda2;-><init>()V

    .line 67
    const v2, 0x7f130977    # @string/quick_settings_cellular_detail_dialog_negative_button_cancel 'Cancel'

    .line 70
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 73
    if-eqz p1, :cond_2

    .line 76
    const p1, 0x7f130979    # @string/quick_settings_cellular_detail_dialog_positive_button_turnoff 'Turn off'

    .line 78
    goto :goto_2

    .line 81
    :cond_2
    const p1, 0x7f130978    # @string/quick_settings_cellular_detail_dialog_positive_button_ok 'OK'

    .line 82
    :goto_2
    new-instance v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda3;

    .line 85
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 87
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 90
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 97
    move-result-object p1

    .line 100
    const/16 v0, 0x7da

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 106
    move-result-object p1

    .line 109
    const/16 v0, 0x10

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 115
    goto :goto_3

    .line 118
    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->click(Landroid/view/View;)V

    .line 119
    :cond_4
    :goto_3
    return-void
    .line 122
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    new-instance p0, Landroid/content/Intent;

    .line 10
    const-string v0, "android.settings.SETTINGS"

    .line 12
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const/high16 v0, 0x14000000

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    return-object p0

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->longClickDataIntent()Landroid/content/Intent;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x73

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f13097c    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isCellularAvailable()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance p0, Lcom/android/systemui/controlcenter/policy/ThermalController$showThermalToast$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/android/systemui/controlcenter/policy/ThermalController$showThermalToast$1;-><init>(Lcom/android/systemui/controlcenter/policy/ThermalController;)V

    .line 12
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ThermalController;->uiHandler:Landroid/os/Handler;

    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 21
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 27
    if-nez p1, :cond_2

    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mIsSltOn:Z

    .line 31
    if-eqz p1, :cond_3

    .line 33
    :cond_2
    return-void

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 36
    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "handleClick: from: "

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 51
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 53
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", to: "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 65
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 67
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 69
    xor-int/lit8 v1, v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 85
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 87
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 89
    xor-int/lit8 v0, v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 98
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    const/16 v0, 0x32

    .line 103
    int-to-long v0, v0

    .line 105
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_4
    return-void
    .line 109
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 4
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 11
    sget v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->$r8$clinit:I

    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->updateItems()V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 21
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 23
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 25
    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 29
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 31
    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public final handleSetListening(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public final handleShowStateMessage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 4
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 6
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 9
    if-eq v0, v1, :cond_1

    .line 11
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x7f13097f    # @string/quick_settings_cellular_state_change_message_on 'Mobile data is on'

    .line 17
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const v0, 0x7f13097e    # @string/quick_settings_cellular_state_change_message_off 'Mobile data is off'

    .line 28
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 35
    :goto_0
    return-void
    .line 38
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 2
    check-cast p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 4
    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 8
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 10
    :cond_0
    const-string v0, "no_config_mobile_networks"

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 22
    const v2, 0x7f13097c    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 30
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 32
    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 34
    move-result v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 40
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 42
    if-eqz v3, :cond_a

    .line 44
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 46
    if-nez v3, :cond_a

    .line 48
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalAvailable:Z

    .line 50
    if-eqz v3, :cond_a

    .line 52
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mIsSltOn:Z

    .line 54
    if-eqz v3, :cond_1

    .line 56
    goto/16 :goto_5

    .line 58
    :cond_1
    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 64
    move-result v2

    .line 67
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 68
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 70
    if-eqz v2, :cond_2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    move-result v2

    .line 77
    if-lez v2, :cond_2

    .line 78
    move v2, v5

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v2, v4

    .line 82
    :goto_0
    sget-boolean v3, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->MULTI_SIM:Z

    .line 83
    if-eqz v2, :cond_5

    .line 85
    if-eqz v3, :cond_3

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    move-result v2

    .line 94
    if-gt v2, v5, :cond_4

    .line 95
    :cond_3
    iget-boolean v2, v7, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 97
    if-eqz v2, :cond_5

    .line 99
    :cond_4
    move v2, v5

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move v2, v4

    .line 103
    :goto_1
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 104
    const-string v2, "handleUpdateState: MULTI_SIM = "

    .line 106
    const-string v8, ", mSimInfoRecordList.size() = "

    .line 108
    invoke-static {v2, v3, v8}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 114
    if-nez v3, :cond_6

    .line 116
    move v3, v4

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 120
    move-result v3

    .line 123
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v3, ", mShowDataUsage = "

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-boolean v3, v7, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 132
    invoke-static {v2, v3, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 137
    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 139
    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 141
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 143
    if-eq v2, v3, :cond_7

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    const-string v3, "handleUpdateState: isMobileDataEnabled: "

    .line 149
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 154
    invoke-static {v2, v3, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 156
    :cond_7
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 159
    if-eqz v2, :cond_8

    .line 161
    const/4 v3, 0x2

    .line 163
    goto :goto_3

    .line 164
    :cond_8
    move v3, v5

    .line 165
    :goto_3
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 166
    if-eqz v2, :cond_9

    .line 168
    const v2, 0x7f081143    # @drawable/ic_qs_data_on 'res/drawable/ic_qs_data_on.xml'

    .line 170
    goto :goto_4

    .line 173
    :cond_9
    const v2, 0x7f081142    # @drawable/ic_qs_data_off 'res/drawable/ic_qs_data_off.xml'

    .line 174
    :goto_4
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 177
    move-result-object v2

    .line 180
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 181
    goto :goto_6

    .line 183
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 184
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 186
    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 188
    if-eqz v3, :cond_b

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    const-string v8, "handleUpdateState: airplaneModeEnabled: "

    .line 194
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    iget-boolean v8, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 199
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    const-string v8, ", isMobileDataSupported: "

    .line 204
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 209
    move-result v2

    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 219
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_b
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 223
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 225
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 227
    const v2, 0x7f081141    # @drawable/ic_qs_data_disabled 'res/drawable/ic_qs_data_disabled.xml'

    .line 229
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 232
    move-result-object v2

    .line 235
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 236
    :goto_6
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 238
    if-eqz v2, :cond_c

    .line 240
    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 242
    if-eqz v2, :cond_c

    .line 244
    iget-boolean v2, v7, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 246
    if-nez v2, :cond_c

    .line 248
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 250
    iget-object v2, v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 252
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 254
    :cond_c
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 257
    const/4 v3, 0x0

    .line 259
    if-eqz v2, :cond_13

    .line 260
    iget v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 262
    if-ltz v2, :cond_13

    .line 264
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 266
    if-eqz v2, :cond_13

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 270
    move-result v2

    .line 273
    if-lez v2, :cond_13

    .line 274
    iget v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 276
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 278
    if-eqz v6, :cond_12

    .line 280
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 282
    move-result v8

    .line 285
    if-nez v8, :cond_d

    .line 286
    goto :goto_9

    .line 288
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 289
    move-result-object v6

    .line 292
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    move-result v8

    .line 296
    if-eqz v8, :cond_f

    .line 297
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    move-result-object v8

    .line 302
    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 303
    if-eqz v8, :cond_e

    .line 305
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 307
    move-result v9

    .line 310
    if-ne v9, v2, :cond_e

    .line 311
    goto :goto_7

    .line 313
    :cond_f
    move-object v8, v3

    .line 314
    :goto_7
    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    .line 315
    move-result v6

    .line 318
    if-eqz v6, :cond_10

    .line 319
    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    .line 321
    move-result v6

    .line 324
    if-ne v2, v6, :cond_10

    .line 325
    move v2, v5

    .line 327
    goto :goto_8

    .line 328
    :cond_10
    move v2, v4

    .line 329
    :goto_8
    if-eqz v2, :cond_11

    .line 330
    invoke-static {v0}, Lcom/miui/utils/VirtualSimUtils;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 335
    goto :goto_a

    .line 336
    :cond_11
    if-eqz v8, :cond_12

    .line 337
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 339
    move-result-object v2

    .line 342
    goto :goto_a

    .line 343
    :cond_12
    :goto_9
    move-object v2, v3

    .line 344
    :goto_a
    if-eqz v2, :cond_13

    .line 345
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 347
    :cond_13
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->enabled:Z

    .line 349
    if-eqz v2, :cond_14

    .line 351
    iget v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 353
    if-lez v2, :cond_14

    .line 355
    iget-object v1, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/CharSequence;

    .line 357
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 359
    move-result-object v1

    .line 362
    goto :goto_b

    .line 363
    :cond_14
    const v2, 0x7f1307b0    # @string/mobile_data 'Mobile data'

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 367
    move-result-object v1

    .line 370
    :goto_b
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->noSim:Z

    .line 371
    const v6, 0x7f130b54    # @string/switch_bar_on 'On'

    .line 373
    const v8, 0x7f130b53    # @string/switch_bar_off 'Off'

    .line 376
    const-string v9, ","

    .line 379
    if-eqz v2, :cond_16

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 396
    if-eqz v2, :cond_15

    .line 398
    goto :goto_c

    .line 400
    :cond_15
    move v6, v8

    .line 401
    :goto_c
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 402
    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v1

    .line 412
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 413
    goto :goto_e

    .line 415
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 416
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    iget-object v10, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 421
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 429
    if-eqz v10, :cond_17

    .line 431
    goto :goto_d

    .line 433
    :cond_17
    move v6, v8

    .line 434
    :goto_d
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 435
    move-result-object v6

    .line 438
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    move-result-object v1

    .line 451
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 452
    :goto_e
    iget-boolean v1, v7, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 454
    if-eqz v1, :cond_18

    .line 456
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 458
    if-eqz v1, :cond_18

    .line 460
    sget-object v1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 462
    iget v1, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 464
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 466
    invoke-static {v1, v2, v0}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$Companion;->getTrafficMessage(ILjava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    .line 468
    move-result-object v3

    .line 471
    :cond_18
    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 472
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 474
    if-eqz v0, :cond_1d

    .line 476
    iget-boolean v0, v7, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 478
    if-eqz v0, :cond_1d

    .line 480
    sget-object v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 482
    iget p2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 484
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 486
    if-nez p0, :cond_19

    .line 488
    goto :goto_f

    .line 490
    :cond_19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object p2

    .line 494
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    move-result-object p0

    .line 498
    check-cast p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 499
    if-nez p0, :cond_1a

    .line 501
    goto :goto_f

    .line 503
    :cond_1a
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 504
    if-nez p2, :cond_1b

    .line 506
    goto :goto_f

    .line 508
    :cond_1b
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 509
    if-nez p0, :cond_1c

    .line 511
    move p0, v5

    .line 513
    goto :goto_10

    .line 514
    :cond_1c
    :goto_f
    move p0, v4

    .line 515
    :goto_10
    if-eqz p0, :cond_1d

    .line 516
    move v4, v5

    .line 518
    :cond_1d
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->warning:Z

    .line 519
    const-class p0, Landroid/widget/Switch;

    .line 521
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 523
    move-result-object p0

    .line 526
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 527
    return-void
    .line 529
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 6
    return p0
    .line 8
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
