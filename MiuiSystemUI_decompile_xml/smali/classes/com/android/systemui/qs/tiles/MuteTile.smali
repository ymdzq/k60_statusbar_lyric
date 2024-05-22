.class public final Lcom/android/systemui/qs/tiles/MuteTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mPlayRingtoneWhenSilentOff:Z

.field public final mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/util/RingerModeTrackerImpl;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 5
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const p2, 0x7f050048    # @bool/config_play_ringtone_silent_mode_off 'true'

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mPlayRingtoneWhenSilentOff:Z

    .line 20
    new-instance p1, Lcom/android/systemui/qs/tiles/MuteTile$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MuteTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MuteTile;)V

    .line 24
    new-instance p2, Lcom/android/systemui/qs/tiles/MuteTile$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/tiles/MuteTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/MuteTile;Lcom/android/systemui/qs/tiles/MuteTile$$ExternalSyntheticLambda0;)V

    .line 29
    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
    .line 35
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.SOUND_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "com.android.settings"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const/high16 v0, 0x14000000

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    return-object p0
    .line 19
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309cc    # @string/quick_settings_mute_label 'Mute'

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
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mPlayRingtoneWhenSilentOff:Z

    .line 27
    if-eqz p0, :cond_1

    .line 29
    const/4 p0, 0x2

    .line 31
    invoke-static {v0, p0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 32
    move-result-object p0

    .line 35
    sget-boolean p1, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 36
    const-class p1, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 38
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 44
    new-instance v1, Lcom/miui/systemui/util/CommonUtil$1;

    .line 46
    invoke-direct {v1, v0, p0}, Lcom/miui/systemui/util/CommonUtil$1;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 48
    invoke-virtual {p1, v1}, Lcom/miui/systemui/MiuiUiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 51
    :cond_1
    const/4 p0, 0x4

    .line 54
    invoke-static {v0, p0}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 55
    return-void
    .line 58
.end method

.method public final handleDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleShowStateMessage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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
    const v0, 0x7f1309ce    # @string/quick_settings_mute_state_change_message_on 'Silent mode is on'

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
    const v0, 0x7f1309cd    # @string/quick_settings_mute_state_change_message_off 'Silent mode is off'

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
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    move p2, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p2, v1

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 20
    if-nez p2, :cond_1

    .line 21
    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p2

    .line 34
    if-ne p2, v2, :cond_2

    .line 35
    :cond_1
    move v1, v2

    .line 37
    :cond_2
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 38
    const p2, 0x7f1309cc    # @string/quick_settings_mute_label 'Mute'

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 48
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 49
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 51
    if-eqz p2, :cond_3

    .line 53
    const/4 p2, 0x2

    .line 55
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 56
    const p2, 0x7f08115b    # @drawable/ic_qs_mute_on 'res/drawable/ic_qs_mute_on.xml'

    .line 58
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 61
    move-result-object p2

    .line 64
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 65
    goto :goto_1

    .line 67
    :cond_3
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 68
    const p2, 0x7f08115a    # @drawable/ic_qs_mute_off 'res/drawable/ic_qs_mute_off.xml'

    .line 70
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 73
    move-result-object p2

    .line 76
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 77
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, ","

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 94
    if-eqz v0, :cond_4

    .line 96
    const v0, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 98
    goto :goto_2

    .line 101
    :cond_4
    const v0, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 102
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 116
    const-class p0, Landroid/widget/Switch;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 123
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 124
    return-void
    .line 126
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
