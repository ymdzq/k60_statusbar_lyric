.class public final Lcom/android/systemui/qs/tiles/SltTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public isAirplaneMode:Z

.field public final networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final sltController:Lcom/android/systemui/controlcenter/policy/SltController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/controlcenter/policy/SltController;Lcom/android/systemui/statusbar/connectivity/NetworkController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/SltTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/SltTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 7
    new-instance p1, Lcom/android/systemui/qs/tiles/SltTile$1;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SltTile$1;-><init>(Lcom/android/systemui/qs/tiles/SltTile;)V

    .line 11
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/systemui/controlcenter/policy/SltController;->URI_SLT_STATE:Landroid/net/Uri;

    .line 2
    const-string p0, "com.android.phone/.settings.MobileNetworkSettings"

    .line 4
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    const-string v1, "android.intent.action.MAIN"

    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    const/high16 p0, 0x14000000

    .line 24
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    move-object p0, v0

    .line 29
    :goto_0
    return-object p0
    .line 30
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309f7    # @string/quick_settings_slt_lable ''

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
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SltTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/controlcenter/policy/SltController;->getSltAvailable()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SltTile;->isAirplaneMode:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 23
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 32
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 34
    xor-int/lit8 v1, v1, 0x1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    const-string v3, "handleClick: from: "

    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ", to: "

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 70
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 72
    xor-int/lit8 v0, v0, 0x1

    .line 74
    iget-boolean v1, p1, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 76
    const-string/jumbo v2, "sltEnabled changed: "

    .line 78
    const-string v3, "SltController"

    .line 81
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    .line 86
    move-result-object v1

    .line 89
    const/16 v2, 0x3e8

    .line 90
    invoke-virtual {v1, v0, v2}, Lmiui/telephony/TelephonyManagerEx;->setSatelliteEnableByUser(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    const-string v2, "can\'t set slt mode"

    .line 97
    invoke-static {v3, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v1}, Lcom/android/systemui/controlcenter/policy/SltController;->setSltEnabled(Z)V

    .line 103
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 110
    :cond_1
    :goto_1
    return-void
    .line 113
.end method

.method public final handleShowStateMessage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStateMessage()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 6
    return-void
    .line 9
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    const v1, 0x7f1309f7    # @string/quick_settings_slt_lable ''

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 16
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SltTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Lcom/android/systemui/controlcenter/policy/SltController;->getSltAvailable()Z

    .line 23
    move-result v3

    .line 26
    if-eqz v3, :cond_5

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SltTile;->isAirplaneMode:Z

    .line 29
    if-eqz p0, :cond_0

    .line 31
    iget-boolean p0, v2, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 33
    if-nez p0, :cond_0

    .line 35
    goto :goto_2

    .line 37
    :cond_0
    instance-of p0, p2, Ljava/lang/Boolean;

    .line 38
    if-eqz p0, :cond_2

    .line 40
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 42
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    goto :goto_3

    .line 54
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    move-result p0

    .line 60
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    iget-boolean p0, v2, Lcom/android/systemui/controlcenter/policy/SltController;->sltEnabled:Z

    .line 64
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 66
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 68
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 70
    if-eqz p2, :cond_3

    .line 72
    const p2, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 74
    goto :goto_1

    .line 77
    :cond_3
    const p2, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 78
    :goto_1
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string p0, ","

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 105
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 107
    if-eqz p0, :cond_4

    .line 109
    const p0, 0x7f081179    # @drawable/ic_qs_slt_enable 'res/drawable/ic_qs_slt_enable.xml'

    .line 111
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 114
    move-result-object p0

    .line 117
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 118
    const/4 p0, 0x2

    .line 120
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 121
    goto :goto_3

    .line 123
    :cond_4
    const p0, 0x7f081178    # @drawable/ic_qs_slt_disable 'res/drawable/ic_qs_slt_disable.xml'

    .line 124
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 127
    move-result-object p0

    .line 130
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 131
    const/4 p0, 0x1

    .line 133
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 134
    goto :goto_3

    .line 136
    :cond_5
    :goto_2
    const p0, 0x7f08117a    # @drawable/ic_qs_slt_unavailable 'res/drawable/ic_qs_slt_unavailable.xml'

    .line 137
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 140
    move-result-object p0

    .line 143
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 149
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 150
    const/4 p0, 0x0

    .line 152
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 153
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 155
    :goto_3
    return-void
    .line 157
.end method

.method public final isAvailable()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SltTile;->sltController:Lcom/android/systemui/controlcenter/policy/SltController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->isSupportSatelliteByDevice()Z

    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    const-string v1, "SltController"

    .line 18
    const-string v2, "Don\'t know if the device supports it "

    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    move v0, p0

    .line 25
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    :cond_0
    return p0
    .line 35
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

.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SltTile;->isAirplaneMode:Z

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 7
    return-void
    .line 10
.end method
