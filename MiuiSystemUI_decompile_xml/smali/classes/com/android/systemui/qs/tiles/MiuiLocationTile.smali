.class public final Lcom/android/systemui/qs/tiles/MiuiLocationTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public thermalAvailable:Z

.field public final thermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/controlcenter/policy/ThermalController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 9
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiLocationTile$Callback;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiLocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/MiuiLocationTile;)V

    .line 13
    new-instance p2, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;

    .line 16
    const/4 p3, 0x0

    .line 18
    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiLocationTile;Ljava/lang/Object;I)V

    .line 19
    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalAvailable:Z

    .line 26
    invoke-virtual {p12}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isGpsAvailable()Z

    .line 28
    move-result p2

    .line 31
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalAvailable:Z

    .line 32
    new-instance p2, Lcom/android/systemui/qs/tiles/MiuiLocationTile$thermalListener$1;

    .line 34
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/MiuiLocationTile$thermalListener$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiLocationTile;)V

    .line 36
    new-instance p3, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;

    .line 39
    invoke-direct {p3, p0, p2, p1}, Lcom/android/systemui/qs/tiles/MiuiLocationTile$callback$1$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiLocationTile;Ljava/lang/Object;I)V

    .line 41
    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
    .line 47
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7a

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309c0    # @string/quick_settings_location_label 'Location'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalController:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/ThermalController;->isGpsAvailable()Z

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
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lcom/miui/enterprise/RestrictionsHelper;->hasGPSRestriction(Landroid/content/Context;)Z

    .line 23
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 27
    if-nez p1, :cond_2

    .line 29
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    .line 31
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lmiui/enterprise/IRestrictionsHelper;->isGPSRestriction()Z

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 47
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 49
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 56
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 58
    xor-int/lit8 v1, v1, 0x1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    const-string v3, "handleClick: from: "

    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, ", to: "

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 92
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 94
    xor-int/lit8 p1, p1, 0x1

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 98
    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->setLocationEnabled(Z)Z

    .line 102
    return-void

    .line 105
    :cond_2
    :goto_0
    const-string p0, "Device is in enterprise mode, GPS is restricted by enterprise!"

    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
    .line 111
.end method

.method public final handleShowStateMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    if-nez v0, :cond_1

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    const v0, 0x7f1309c2    # @string/quick_settings_location_state_change_message_on 'Location access is on'

    .line 28
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne v0, v2, :cond_4

    .line 47
    const v0, 0x7f1309c1    # @string/quick_settings_location_state_change_message_off 'Location access is off'

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 56
    :cond_4
    :goto_2
    return-void
    .line 59
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->thermalAvailable:Z

    .line 4
    const v0, 0x7f0811ad    # @drawable/ic_signal_location_disable 'res/drawable/ic_signal_location_disable.xml'

    .line 6
    const v1, 0x7f1309c0    # @string/quick_settings_location_label 'Location'

    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 12
    if-nez p2, :cond_0

    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 19
    move-result-object p0

    .line 22
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 23
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 29
    const/4 p0, 0x0

    .line 31
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 32
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 38
    goto :goto_1

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiLocationTile;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 41
    check-cast p2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 43
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 45
    move-result p2

    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 52
    const-string p2, "no_share_location"

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 56
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 59
    if-nez p2, :cond_1

    .line 61
    const-string p2, "no_config_location"

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 72
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 74
    if-eqz p0, :cond_2

    .line 76
    const v0, 0x7f0811ae    # @drawable/ic_signal_location_enable 'res/drawable/ic_signal_location_enable.xml'

    .line 78
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 81
    move-result-object p0

    .line 84
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 85
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 91
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 93
    if-eqz p0, :cond_3

    .line 95
    const/4 p0, 0x2

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const/4 p0, 0x1

    .line 99
    :goto_0
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 100
    const-class p0, Landroid/widget/Switch;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 108
    :goto_1
    return-void
    .line 110
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "android.hardware.location.gps"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
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
