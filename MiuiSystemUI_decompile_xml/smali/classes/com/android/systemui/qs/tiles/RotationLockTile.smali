.class public final Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAllowRotationResolver:Z

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mCallback:Lcom/android/systemui/qs/tiles/RotationLockTile$2;

.field public final mController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;

.field public final mSetting:Lcom/android/systemui/qs/tiles/RotationLockTile$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Landroid/hardware/SensorPrivacyManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    const p2, 0x1080548    # @android:drawable/ic_search_api_holo_dark

    .line 5
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 8
    new-instance p2, Lcom/android/systemui/qs/tiles/RotationLockTile$2;

    .line 11
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$2;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    .line 13
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/qs/tiles/RotationLockTile$2;

    .line 16
    new-instance p3, Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    .line 20
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;

    .line 23
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 25
    invoke-virtual {p0, p10, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 27
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 30
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 38
    move-result p1

    .line 41
    new-instance p2, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    .line 42
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 44
    invoke-direct {p2, p0, p13, p3, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/util/settings/SettingsProxy;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;I)V

    .line 46
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    .line 49
    invoke-virtual {p0, p12, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object p1

    .line 59
    const p2, 0x111001b    # @android:bool/config_allowRotationResolver

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 63
    move-result p1

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAllowRotationResolver:Z

    .line 67
    return-void
    .line 69
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.AUTO_ROTATE_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7b

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 6
    return-object p0
    .line 8
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 6
    xor-int/lit8 p1, p1, 0x1

    .line 8
    xor-int/lit8 v0, p1, 0x1

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 12
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->setRotationLock(Z)V

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 23
    return-void
    .line 26
.end method

.method public final handleDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 11
    const/4 v1, 0x2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;

    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 16
    return-void
    .line 19
.end method

.method public final handleInitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 2
    const/4 v1, 0x2

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSensorPrivacyChangedListener:Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;

    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 7
    return-void
    .line 10
.end method

.method public final handleSetListening(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 4
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 14
    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 16
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 18
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 20
    const/4 v3, 0x2

    .line 22
    invoke-virtual {v2, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 23
    move-result v2

    .line 26
    const/4 v4, 0x1

    .line 27
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAllowRotationResolver:Z

    .line 28
    const/4 v6, 0x0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 31
    if-eqz v5, :cond_2

    .line 33
    if-nez v1, :cond_2

    .line 35
    if-nez v2, :cond_2

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    const-string v5, "android.permission.CAMERA"

    .line 49
    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    move v1, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v1, v6

    .line 59
    :goto_0
    if-eqz v1, :cond_2

    .line 60
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 62
    iget-object p2, p2, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 64
    const-string v1, "camera_autorotate"

    .line 66
    invoke-interface {p2, v1, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 68
    move-result p2

    .line 71
    if-ne p2, v4, :cond_1

    .line 72
    move p2, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move p2, v6

    .line 76
    :goto_1
    if-eqz p2, :cond_2

    .line 77
    move v6, v4

    .line 79
    :cond_2
    xor-int/lit8 p2, v0, 0x1

    .line 80
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 82
    const p2, 0x7f1309e1    # @string/quick_settings_rotation_unlocked_label 'Auto-rotate'

    .line 84
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 90
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 91
    const p2, 0x7f081709    # @drawable/qs_auto_rotate_icon_off 'res/drawable/qs_auto_rotate_icon_off.xml'

    .line 93
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 96
    move-result-object p2

    .line 99
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 100
    const p2, 0x7f1300e2    # @string/accessibility_quick_settings_rotation 'Auto-rotate screen'

    .line 102
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 108
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 109
    const-string p2, ""

    .line 111
    if-nez v0, :cond_4

    .line 113
    if-eqz v6, :cond_3

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object p0

    .line 120
    const p2, 0x7f130a38    # @string/rotation_lock_camera_rotation_on 'On - Face-based'

    .line 121
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 124
    move-result-object p2

    .line 127
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 128
    const p0, 0x7f08170a    # @drawable/qs_auto_rotate_icon_on 'res/drawable/qs_auto_rotate_icon_on.xml'

    .line 130
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 133
    move-result-object p0

    .line 136
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 137
    goto :goto_2

    .line 139
    :cond_4
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 140
    :goto_2
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 142
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 144
    const-class p0, Landroid/widget/Switch;

    .line 146
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 151
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 152
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 154
    if-eqz p0, :cond_5

    .line 156
    goto :goto_3

    .line 158
    :cond_5
    move v3, v4

    .line 159
    :goto_3
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 160
    return-void
    .line 162
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mSetting:Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SettingObserver;->setUserId(I)V

    .line 4
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 3
    return-void
    .line 6
.end method
