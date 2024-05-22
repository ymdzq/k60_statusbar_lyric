.class public final Lcom/android/systemui/qs/tiles/MiuiCellularTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MULTI_SIM:Z


# instance fields
.field public mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mDataUsageCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

.field public mDataUsageInfo:Ljava/util/Map;

.field public final mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

.field public final mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

.field public mIsSltOn:Z

.field public final mLifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field public final mListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

.field public final mShareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

.field public final mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

.field public mSimInfoRecordList:Ljava/util/List;

.field public final mSltController:Lcom/android/systemui/controlcenter/policy/SltController;

.field public final mSltListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

.field public mThermalAvailable:Z

.field public final mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

.field public mToast:Landroid/widget/Toast;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static synthetic $r8$lambda$gjtCevSbmrMCRTlPehwh5rfZk_E(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V
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

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/controlcenter/policy/ThermalController;Lcom/android/systemui/controlcenter/policy/SltController;Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controlcenter/policy/ShareNetworkController;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p10

    .line 3
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 4
    new-instance v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 7
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 9
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 12
    const/4 v2, 0x0

    .line 14
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 15
    new-instance v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;I)V

    .line 20
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 23
    new-instance v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

    .line 25
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 27
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$1;

    .line 30
    new-instance v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

    .line 32
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 34
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSltListener:Lcom/android/systemui/qs/tiles/MiuiCellularTile$2;

    .line 37
    new-instance v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

    .line 39
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 41
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

    .line 44
    new-instance v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$4;

    .line 46
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$4;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 48
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mLifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 51
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 53
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 55
    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 57
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 59
    new-instance v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 61
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;Landroid/content/Context;)V

    .line 65
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 68
    move-object/from16 v1, p13

    .line 70
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 72
    move-object/from16 v1, p14

    .line 74
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 76
    move-object/from16 v1, p16

    .line 78
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 80
    move-object/from16 v1, p15

    .line 82
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 84
    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 87
    move-object/from16 v2, p12

    .line 89
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 91
    invoke-virtual {p11}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isCellularAvailable()Z

    .line 93
    move-result v1

    .line 96
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalAvailable:Z

    .line 97
    new-instance v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 99
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;)V

    .line 101
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda1;

    .line 104
    new-instance v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 106
    const/4 v2, 0x1

    .line 108
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;I)V

    .line 109
    move-object v0, p4

    .line 112
    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
    .line 116
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
    const v1, 0x7f130980    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 50
    if-eqz p1, :cond_1

    .line 53
    const v1, 0x7f130978    # @string/quick_settings_cellular_detail_dialog_message_turnoff 'If you turn off mobile data, you won't be able to use the internet unless you connect to WLAN. You'l ...'

    .line 55
    goto :goto_1

    .line 58
    :cond_1
    const v1, 0x7f13097a    # @string/quick_settings_cellular_detail_dialog_message_turnon 'Using mobile data may generate additional charges depending on your payment plan. Allow using mobile ...'

    .line 59
    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 62
    new-instance v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda2;

    .line 65
    invoke-direct {v1}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda2;-><init>()V

    .line 67
    const v2, 0x7f13097b    # @string/quick_settings_cellular_detail_dialog_negative_button_cancel 'Cancel'

    .line 70
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 73
    if-eqz p1, :cond_2

    .line 76
    const p1, 0x7f13097d    # @string/quick_settings_cellular_detail_dialog_positive_button_turnoff 'Turn off'

    .line 78
    goto :goto_2

    .line 81
    :cond_2
    const p1, 0x7f13097c    # @string/quick_settings_cellular_detail_dialog_positive_button_ok 'OK'

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 2
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 14
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 18
    if-eqz p0, :cond_1

    .line 20
    new-instance p0, Landroid/content/Intent;

    .line 22
    const-string v0, "android.settings.SETTINGS"

    .line 24
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const/high16 v0, 0x14000000

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    return-object p0

    .line 34
    :cond_1
    invoke-static {}, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->longClickDataIntent()Landroid/content/Intent;

    .line 35
    move-result-object p0

    .line 38
    return-object p0
    .line 39
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
    const v0, 0x7f130980    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 6

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
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    iget-object v2, p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    iget-boolean v2, v2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 31
    if-eqz v2, :cond_1

    .line 33
    move v2, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v2, v1

    .line 37
    :goto_0
    if-nez v2, :cond_14

    .line 38
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mIsSltOn:Z

    .line 40
    if-eqz v2, :cond_2

    .line 42
    goto/16 :goto_9

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 46
    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 48
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 52
    if-eqz v3, :cond_3

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "handleClick: from: "

    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 63
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 65
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", to: "

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 77
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 79
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 81
    xor-int/2addr v1, v0

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 96
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 98
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 100
    xor-int/2addr p1, v0

    .line 102
    invoke-virtual {v2, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 106
    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    const/16 p1, 0x32

    .line 111
    int-to-long v0, p1

    .line 113
    invoke-virtual {v4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 118
    check-cast v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 120
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 122
    move-result v3

    .line 125
    if-eqz v3, :cond_14

    .line 126
    if-eqz p1, :cond_4

    .line 128
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 130
    if-eqz p1, :cond_4

    .line 132
    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 134
    if-eqz p1, :cond_4

    .line 136
    move p1, v0

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move p1, v1

    .line 140
    :goto_1
    if-eqz p1, :cond_5

    .line 141
    goto/16 :goto_9

    .line 143
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 145
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 147
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 149
    move-result p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 155
    const v0, 0x7f130935    # @string/qs_control_big_tile_click_cellular_tether_tip 'Exit Second space and try again'

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 163
    new-instance v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;

    .line 164
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    goto/16 :goto_9

    .line 172
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 174
    if-eqz p0, :cond_7

    .line 176
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceId:Ljava/lang/String;

    .line 178
    goto :goto_2

    .line 180
    :cond_7
    const/4 p1, 0x0

    .line 181
    :goto_2
    if-eqz p0, :cond_a

    .line 182
    const/4 v3, 0x3

    .line 184
    iget v4, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 185
    if-eq v4, v3, :cond_9

    .line 187
    const/4 v3, 0x4

    .line 189
    if-ne v4, v3, :cond_8

    .line 190
    goto :goto_3

    .line 192
    :cond_8
    move v3, v1

    .line 193
    goto :goto_4

    .line 194
    :cond_9
    :goto_3
    move v3, v0

    .line 195
    :goto_4
    if-eqz v3, :cond_a

    .line 196
    move v3, v0

    .line 198
    goto :goto_5

    .line 199
    :cond_a
    move v3, v1

    .line 200
    :goto_5
    if-eqz p0, :cond_d

    .line 201
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 203
    if-nez p0, :cond_b

    .line 205
    goto :goto_6

    .line 207
    :cond_b
    move v0, v1

    .line 208
    :goto_6
    if-eqz v0, :cond_c

    .line 209
    goto :goto_7

    .line 211
    :cond_c
    const/4 p0, 0x6

    .line 212
    goto :goto_8

    .line 213
    :cond_d
    :goto_7
    const/16 p0, 0x8

    .line 214
    :goto_8
    const-string v0, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 216
    const-string v4, "ShareNetworkControllerImpl"

    .line 218
    if-eqz v3, :cond_11

    .line 220
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 222
    move-result p0

    .line 225
    if-nez p0, :cond_e

    .line 226
    goto/16 :goto_9

    .line 228
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    move-result p0

    .line 233
    if-eqz p0, :cond_f

    .line 234
    const-string p0, "disconnectCelluarTether: deviceId is null"

    .line 236
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    goto/16 :goto_9

    .line 241
    :cond_f
    const-string p0, "disconnectCelluarTether"

    .line 243
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 248
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    :try_start_0
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 255
    if-eqz p0, :cond_14

    .line 257
    check-cast p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 261
    move-result-object v2

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 265
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 275
    const/16 p1, 0x19

    .line 277
    invoke-interface {p0, p1, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 279
    move-result p0

    .line 282
    if-nez p0, :cond_10

    .line 283
    sget p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 285
    :cond_10
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 293
    goto/16 :goto_9

    .line 296
    :catchall_0
    move-exception p0

    .line 298
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    :catch_0
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    goto/16 :goto_9

    .line 310
    :cond_11
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 312
    move-result v3

    .line 315
    const-string v5, "connectCelluarTether "

    .line 316
    if-nez v3, :cond_12

    .line 318
    iget-object p0, v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->configCellularSharedSupport$delegate:Lkotlin/Lazy;

    .line 320
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 322
    move-result-object p0

    .line 325
    check-cast p0, Ljava/lang/Boolean;

    .line 326
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 328
    move-result p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    .line 332
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->CELLULAR_ENABLED:Z

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 339
    const-string v0, " "

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object p0

    .line 353
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    goto :goto_9

    .line 357
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    move-result-object v3

    .line 369
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 373
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    :try_start_3
    iget-object v2, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 380
    if-eqz v2, :cond_14

    .line 382
    check-cast v2, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 386
    move-result-object v3

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 390
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 393
    :try_start_4
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object p0, v2, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 403
    const/16 p1, 0x15

    .line 405
    invoke-interface {p0, p1, v3, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 407
    move-result p0

    .line 410
    if-nez p0, :cond_13

    .line 411
    sget p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 413
    :cond_13
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    :try_start_5
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 421
    goto :goto_9

    .line 424
    :catchall_1
    move-exception p0

    .line 425
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 432
    :catch_1
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    :cond_14
    :goto_9
    return-void
    .line 437
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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 4
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 6
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 9
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    if-eq v0, v1, :cond_2

    .line 13
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    check-cast v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 19
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    const v0, 0x7f130982    # @string/quick_settings_cellular_state_change_message_connected 'Connected to mobile data network'

    .line 27
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    const v0, 0x7f130985    # @string/quick_settings_cellular_state_change_message_on 'Mobile data is on'

    .line 38
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    check-cast v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 49
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    const v0, 0x7f130983    # @string/quick_settings_cellular_state_change_message_disconnected 'Disconnected from mobile data network'

    .line 57
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    const v0, 0x7f130984    # @string/quick_settings_cellular_state_change_message_off 'Mobile data is off'

    .line 68
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 75
    :goto_0
    return-void
    .line 78
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 2
    check-cast p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;

    .line 6
    if-nez p2, :cond_0

    .line 8
    iget-object p2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 10
    :cond_0
    const-string v1, "no_config_mobile_networks"

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v2

    .line 22
    const v3, 0x7f130980    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 29
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 30
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 32
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 34
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x2

    .line 40
    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 41
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 43
    if-eqz v5, :cond_a

    .line 45
    iget-boolean v5, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 47
    if-nez v5, :cond_a

    .line 49
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mThermalAvailable:Z

    .line 51
    if-eqz v5, :cond_a

    .line 53
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mIsSltOn:Z

    .line 55
    if-eqz v5, :cond_1

    .line 57
    goto/16 :goto_5

    .line 59
    :cond_1
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 61
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 65
    move-result v4

    .line 68
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 69
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 71
    if-eqz v4, :cond_2

    .line 73
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 75
    move-result v4

    .line 78
    if-lez v4, :cond_2

    .line 79
    move v4, v7

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v4, v6

    .line 83
    :goto_0
    sget-boolean v5, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->MULTI_SIM:Z

    .line 84
    if-eqz v4, :cond_5

    .line 86
    if-eqz v5, :cond_3

    .line 88
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 90
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 92
    move-result v4

    .line 95
    if-gt v4, v7, :cond_4

    .line 96
    :cond_3
    iget-boolean v4, v10, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 98
    if-eqz v4, :cond_5

    .line 100
    :cond_4
    move v4, v7

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move v4, v6

    .line 104
    :goto_1
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 105
    const-string v4, "handleUpdateState: MULTI_SIM = "

    .line 107
    const-string v11, ", mSimInfoRecordList.size() = "

    .line 109
    invoke-static {v4, v5, v11}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v4

    .line 114
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 115
    if-nez v5, :cond_6

    .line 117
    move v5, v6

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 121
    move-result v5

    .line 124
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v5, ", mShowDataUsage = "

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v5, v10, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 133
    invoke-static {v4, v5, v9}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 138
    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 140
    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 142
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 144
    if-eq v4, v5, :cond_7

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    const-string v5, "handleUpdateState: isMobileDataEnabled: "

    .line 150
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 155
    invoke-static {v4, v5, v9}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 157
    :cond_7
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 160
    if-eqz v4, :cond_8

    .line 162
    move v5, v8

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    move v5, v7

    .line 166
    :goto_3
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 167
    if-eqz v4, :cond_9

    .line 169
    const v4, 0x7f081143    # @drawable/ic_qs_data_on 'res/drawable/ic_qs_data_on.xml'

    .line 171
    goto :goto_4

    .line 174
    :cond_9
    const v4, 0x7f081142    # @drawable/ic_qs_data_off 'res/drawable/ic_qs_data_off.xml'

    .line 175
    :goto_4
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 178
    move-result-object v4

    .line 181
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 182
    goto :goto_6

    .line 184
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 185
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 187
    iget v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 189
    if-eqz v5, :cond_b

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    .line 193
    const-string v11, "handleUpdateState: airplaneModeEnabled: "

    .line 195
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    iget-boolean v11, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 200
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v11, ", isMobileDataSupported: "

    .line 205
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 210
    move-result v4

    .line 213
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v4

    .line 220
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_b
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 224
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 226
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 228
    const v4, 0x7f081141    # @drawable/ic_qs_data_disabled 'res/drawable/ic_qs_data_disabled.xml'

    .line 230
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 233
    move-result-object v4

    .line 236
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 237
    :goto_6
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 239
    if-eqz v4, :cond_c

    .line 241
    iget-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 243
    if-eqz v4, :cond_c

    .line 245
    iget-boolean v4, v10, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 247
    if-nez v4, :cond_c

    .line 249
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;

    .line 251
    iget-object v4, v4, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 253
    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 255
    :cond_c
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 258
    if-eqz v4, :cond_13

    .line 260
    iget v4, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 262
    if-ltz v4, :cond_13

    .line 264
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 266
    if-eqz v4, :cond_13

    .line 268
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 270
    move-result v4

    .line 273
    if-lez v4, :cond_13

    .line 274
    iget v4, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 276
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 278
    if-eqz v5, :cond_12

    .line 280
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 282
    move-result v9

    .line 285
    if-nez v9, :cond_d

    .line 286
    goto :goto_9

    .line 288
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 289
    move-result-object v5

    .line 292
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    move-result v9

    .line 296
    if-eqz v9, :cond_f

    .line 297
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    move-result-object v9

    .line 302
    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 303
    if-eqz v9, :cond_e

    .line 305
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 307
    move-result v11

    .line 310
    if-ne v11, v4, :cond_e

    .line 311
    goto :goto_7

    .line 313
    :cond_f
    const/4 v9, 0x0

    .line 314
    :goto_7
    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    .line 315
    move-result v5

    .line 318
    if-eqz v5, :cond_10

    .line 319
    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    .line 321
    move-result v5

    .line 324
    if-ne v4, v5, :cond_10

    .line 325
    move v4, v7

    .line 327
    goto :goto_8

    .line 328
    :cond_10
    move v4, v6

    .line 329
    :goto_8
    if-eqz v4, :cond_11

    .line 330
    invoke-static {v1}, Lcom/miui/utils/VirtualSimUtils;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    .line 332
    move-result-object v4

    .line 335
    goto :goto_a

    .line 336
    :cond_11
    if-eqz v9, :cond_12

    .line 337
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 339
    move-result-object v4

    .line 342
    goto :goto_a

    .line 343
    :cond_12
    :goto_9
    const/4 v4, 0x0

    .line 344
    :goto_a
    if-eqz v4, :cond_13

    .line 345
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 347
    :cond_13
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->enabled:Z

    .line 349
    if-eqz v4, :cond_14

    .line 351
    iget v4, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 353
    if-lez v4, :cond_14

    .line 355
    iget-object v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/CharSequence;

    .line 357
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 362
    goto :goto_b

    .line 363
    :cond_14
    const v4, 0x7f1307b0    # @string/mobile_data 'Mobile data'

    .line 364
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 367
    move-result-object v2

    .line 370
    :goto_b
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->noSim:Z

    .line 371
    const v5, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 373
    const v9, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 376
    const-string v11, ","

    .line 379
    if-eqz v4, :cond_16

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 388
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 396
    if-eqz v4, :cond_15

    .line 398
    goto :goto_c

    .line 400
    :cond_15
    move v5, v9

    .line 401
    :goto_c
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 402
    move-result-object v4

    .line 405
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v2

    .line 412
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 413
    goto :goto_e

    .line 415
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 416
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    iget-object v12, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 421
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-boolean v12, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 429
    if-eqz v12, :cond_17

    .line 431
    goto :goto_d

    .line 433
    :cond_17
    move v5, v9

    .line 434
    :goto_d
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 435
    move-result-object v5

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    move-result-object v2

    .line 451
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 452
    :goto_e
    iget-boolean v2, v10, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 454
    if-eqz v2, :cond_18

    .line 456
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 458
    if-eqz v2, :cond_18

    .line 460
    sget-object v2, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 462
    iget v2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 464
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 466
    invoke-static {v2, v4, v1}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$Companion;->getTrafficMessage(ILjava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    .line 468
    move-result-object v2

    .line 471
    goto :goto_f

    .line 472
    :cond_18
    const/4 v2, 0x0

    .line 473
    :goto_f
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 474
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 476
    if-eqz v2, :cond_1d

    .line 478
    iget-boolean v2, v10, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 480
    if-eqz v2, :cond_1d

    .line 482
    sget-object v2, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 484
    iget p2, p2, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->defaultDataSlot:I

    .line 486
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 488
    if-nez v2, :cond_19

    .line 490
    goto :goto_10

    .line 492
    :cond_19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    move-result-object p2

    .line 496
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-result-object p2

    .line 500
    check-cast p2, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 501
    if-nez p2, :cond_1a

    .line 503
    goto :goto_10

    .line 505
    :cond_1a
    iget-object v2, p2, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 506
    if-nez v2, :cond_1b

    .line 508
    goto :goto_10

    .line 510
    :cond_1b
    iget p2, p2, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 511
    if-nez p2, :cond_1c

    .line 513
    move p2, v7

    .line 515
    goto :goto_11

    .line 516
    :cond_1c
    :goto_10
    move p2, v6

    .line 517
    :goto_11
    if-eqz p2, :cond_1d

    .line 518
    move p2, v7

    .line 520
    goto :goto_12

    .line 521
    :cond_1d
    move p2, v6

    .line 522
    :goto_12
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;->warning:Z

    .line 523
    const-class p2, Landroid/widget/Switch;

    .line 525
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 527
    move-result-object p2

    .line 530
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 531
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mShareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 533
    check-cast p2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 535
    invoke-virtual {p2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 537
    move-result p2

    .line 540
    if-eqz p2, :cond_37

    .line 541
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 543
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 545
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 547
    move-result p2

    .line 550
    if-nez p2, :cond_1e

    .line 551
    move p2, v7

    .line 553
    goto :goto_13

    .line 554
    :cond_1e
    move p2, v6

    .line 555
    :goto_13
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 556
    const v4, 0x7f130941    # @string/qs_control_big_tile_state_unavailable 'Not available'

    .line 558
    if-eqz v2, :cond_36

    .line 561
    if-eqz v0, :cond_1f

    .line 563
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;

    .line 565
    if-eqz v0, :cond_1f

    .line 567
    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 569
    if-eqz v0, :cond_1f

    .line 571
    move v0, v7

    .line 573
    goto :goto_14

    .line 574
    :cond_1f
    move v0, v6

    .line 575
    :goto_14
    if-nez v0, :cond_36

    .line 576
    if-nez p2, :cond_20

    .line 578
    goto/16 :goto_24

    .line 580
    :cond_20
    iget-object p2, v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceName:Ljava/lang/String;

    .line 582
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 584
    move-result v0

    .line 587
    if-nez v0, :cond_23

    .line 588
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 590
    iget v0, v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 592
    if-nez v0, :cond_21

    .line 594
    move v0, v7

    .line 596
    goto :goto_15

    .line 597
    :cond_21
    move v0, v6

    .line 598
    :goto_15
    if-eqz v0, :cond_22

    .line 599
    goto :goto_16

    .line 601
    :cond_22
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 602
    goto :goto_17

    .line 604
    :cond_23
    :goto_16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 605
    move-result-object p2

    .line 608
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 609
    move-result-object p2

    .line 612
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 613
    :goto_17
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 615
    iget v0, p2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 617
    const/4 v2, 0x5

    .line 619
    if-ne v0, v7, :cond_24

    .line 620
    goto :goto_18

    .line 622
    :cond_24
    if-ne v0, v2, :cond_25

    .line 623
    :goto_18
    move v3, v7

    .line 625
    goto :goto_19

    .line 626
    :cond_25
    move v3, v6

    .line 627
    :goto_19
    const/4 v5, 0x4

    .line 628
    const/4 v9, 0x3

    .line 629
    if-eqz v3, :cond_26

    .line 630
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 632
    move-result-object p2

    .line 635
    const v0, 0x7f130937    # @string/qs_control_big_tile_state_closed 'Off'

    .line 636
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 639
    move-result-object p2

    .line 642
    goto :goto_1b

    .line 643
    :cond_26
    if-ne v0, v8, :cond_27

    .line 644
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 646
    move-result-object p2

    .line 649
    const v0, 0x7f13093a    # @string/qs_control_big_tile_state_connecting 'Connecting…'

    .line 650
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 653
    move-result-object p2

    .line 656
    goto :goto_1b

    .line 657
    :cond_27
    if-ne v0, v9, :cond_29

    .line 658
    iget-object p2, p2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 660
    if-eqz p2, :cond_28

    .line 662
    invoke-virtual {p2, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->getDataUsageInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 664
    move-result-object p2

    .line 667
    goto :goto_1a

    .line 668
    :cond_28
    const/4 p2, 0x0

    .line 669
    :goto_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 670
    move-result v0

    .line 673
    if-eqz v0, :cond_2c

    .line 674
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 676
    move-result-object p2

    .line 679
    const v0, 0x7f130939    # @string/qs_control_big_tile_state_connected 'Connected'

    .line 680
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 683
    move-result-object p2

    .line 686
    goto :goto_1b

    .line 687
    :cond_29
    if-ne v0, v5, :cond_2b

    .line 688
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 690
    if-eqz p2, :cond_2a

    .line 692
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 694
    move-result-object p2

    .line 697
    const v0, 0x7f13093f    # @string/qs_control_big_tile_state_tethered_wifi 'Using phone's WLAN signal'

    .line 698
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 701
    move-result-object p2

    .line 704
    goto :goto_1b

    .line 705
    :cond_2a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 706
    move-result-object p2

    .line 709
    const v0, 0x7f130940    # @string/qs_control_big_tile_state_tethered_wlan 'Using phone's WLAN signal'

    .line 710
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 713
    move-result-object p2

    .line 716
    goto :goto_1b

    .line 717
    :cond_2b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 718
    move-result-object p2

    .line 721
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 722
    move-result-object p2

    .line 725
    :cond_2c
    :goto_1b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 726
    move-result v0

    .line 729
    if-eqz v0, :cond_2d

    .line 730
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 732
    move-result-object p2

    .line 735
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 736
    move-result-object p2

    .line 739
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 740
    goto :goto_1c

    .line 742
    :cond_2d
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 743
    :goto_1c
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 745
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 747
    if-ne p0, v8, :cond_2e

    .line 749
    goto :goto_1d

    .line 751
    :cond_2e
    if-ne p0, v9, :cond_2f

    .line 752
    :goto_1d
    move p2, v7

    .line 754
    goto :goto_1e

    .line 755
    :cond_2f
    move p2, v6

    .line 756
    :goto_1e
    if-eqz p2, :cond_30

    .line 757
    goto :goto_1f

    .line 759
    :cond_30
    if-ne p0, v5, :cond_31

    .line 760
    :goto_1f
    move p2, v7

    .line 762
    goto :goto_20

    .line 763
    :cond_31
    move p2, v6

    .line 764
    :goto_20
    if-eqz p2, :cond_32

    .line 765
    move v6, v8

    .line 767
    goto :goto_23

    .line 768
    :cond_32
    if-ne p0, v7, :cond_33

    .line 769
    goto :goto_21

    .line 771
    :cond_33
    if-ne p0, v2, :cond_34

    .line 772
    :goto_21
    move p0, v7

    .line 774
    goto :goto_22

    .line 775
    :cond_34
    move p0, v6

    .line 776
    :goto_22
    if-eqz p0, :cond_35

    .line 777
    move v6, v7

    .line 779
    :cond_35
    :goto_23
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 780
    new-instance p0, Ljava/lang/StringBuilder;

    .line 782
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 787
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 795
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    move-result-object p0

    .line 803
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 804
    goto :goto_25

    .line 806
    :cond_36
    :goto_24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 807
    move-result-object p0

    .line 810
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 811
    move-result-object p0

    .line 814
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 815
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 817
    move-result-object p0

    .line 820
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 821
    move-result-object p0

    .line 824
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 825
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 827
    new-instance p0, Ljava/lang/StringBuilder;

    .line 829
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 834
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 842
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    move-result-object p0

    .line 850
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 851
    :cond_37
    :goto_25
    return-void
    .line 853
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
