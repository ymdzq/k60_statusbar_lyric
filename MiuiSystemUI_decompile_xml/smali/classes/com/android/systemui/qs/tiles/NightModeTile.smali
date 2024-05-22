.class public final Lcom/android/systemui/qs/tiles/NightModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SUPPORT_DARK_MODE_NOTIFY:Z


# instance fields
.field public final mNightModeObserver:Lcom/android/systemui/qs/tiles/NightModeTile$1;

.field public final mResolver:Landroid/content/ContentResolver;

.field public mShowAlert:Z

.field public final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "support_dark_mode_notify"

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/systemui/qs/tiles/NightModeTile;->SUPPORT_DARK_MODE_NOTIFY:Z

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/tiles/NightModeTile$1;

    .line 5
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/NightModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/NightModeTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mNightModeObserver:Lcom/android/systemui/qs/tiles/NightModeTile$1;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 22
    const-string/jumbo p2, "uimode"

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Landroid/app/UiModeManager;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 33
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mShowAlert:Z

    .line 36
    const-string/jumbo p2, "ro.display.type"

    .line 38
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    const-string p3, "oled"

    .line 45
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 53
    const-string p3, "QsShowNightAlert"

    .line 55
    invoke-static {p2, p3, p1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 57
    move-result p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    const/4 p1, 0x0

    .line 64
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mShowAlert:Z

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.DISPLAY_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
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
    const v0, 0x7f1309dc    # @string/quick_settings_nightmode_label 'Dark mode'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "dark_mode_enable_by_power_save"

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 15
    const/4 v3, 0x1

    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    new-instance p1, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;-><init>(Lcom/android/systemui/qs/tiles/NightModeTile;)V

    .line 22
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "handleClick: from: "

    .line 31
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 36
    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 38
    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, ", to: "

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 50
    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 52
    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 54
    xor-int/2addr v4, v3

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 64
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 69
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 71
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 73
    xor-int/2addr v0, v3

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object v4

    .line 79
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 80
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 83
    const-string v5, "open_dark_mode_channel"

    .line 85
    const-string/jumbo v6, "\u63a7\u5236\u4e2d\u5fc3"

    .line 87
    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 90
    const-string v5, "dark_mode_enable_by_setting"

    .line 93
    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 98
    invoke-virtual {v3, v0}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 100
    sget-boolean v3, Lcom/android/systemui/qs/tiles/NightModeTile;->SUPPORT_DARK_MODE_NOTIFY:Z

    .line 103
    if-eqz v3, :cond_1

    .line 105
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    .line 107
    move-result-object v3

    .line 110
    const/16 v4, 0x26

    .line 111
    invoke-virtual {v3, v4, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 113
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mShowAlert:Z

    .line 118
    if-eqz v0, :cond_2

    .line 120
    const-string v0, "QsShowNightAlert"

    .line 122
    invoke-static {p1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mShowAlert:Z

    .line 127
    new-instance p1, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;

    .line 129
    invoke-direct {p1, p0, v2}, Lcom/android/systemui/qs/tiles/NightModeTile$ShowAlertRunnable;-><init>(Lcom/android/systemui/qs/tiles/NightModeTile;I)V

    .line 131
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_2
    :goto_0
    return-void
    .line 137
.end method

.method public final handleDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSetListening(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mNightModeObserver:Lcom/android/systemui/qs/tiles/NightModeTile$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const-string/jumbo p1, "ui_night_mode"

    .line 8
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object p1

    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 21
    :goto_0
    return-void
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
    const v0, 0x7f1309db    # @string/quick_settings_night_state_change_message_on 'Dark mode is on'

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
    const v0, 0x7f1309da    # @string/quick_settings_night_state_change_message_off 'Dark mode is off'

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
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const v0, 0x7f1309dc    # @string/quick_settings_nightmode_label 'Dark mode'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 13
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 15
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    check-cast p2, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result p2

    .line 25
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 26
    if-ne p2, v0, :cond_0

    .line 28
    goto :goto_4

    .line 30
    :cond_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    move-result-object p2

    .line 41
    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    .line 42
    and-int/lit8 p2, p2, 0x30

    .line 44
    const/16 v0, 0x20

    .line 46
    if-ne p2, v0, :cond_2

    .line 48
    move p2, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p2, 0x0

    .line 52
    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 53
    :goto_1
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 55
    if-eqz p2, :cond_3

    .line 57
    const p2, 0x7f081160    # @drawable/ic_qs_night_mode_on 'res/drawable/ic_qs_night_mode_on.xml'

    .line 59
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 62
    move-result-object p2

    .line 65
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 66
    const/4 p2, 0x2

    .line 68
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 69
    goto :goto_2

    .line 71
    :cond_3
    const p2, 0x7f08115f    # @drawable/ic_qs_night_mode_off 'res/drawable/ic_qs_night_mode_off.xml'

    .line 72
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 75
    move-result-object p2

    .line 78
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 79
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 81
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ","

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 98
    if-eqz v0, :cond_4

    .line 100
    const v0, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 102
    goto :goto_3

    .line 105
    :cond_4
    const v0, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 106
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 112
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 119
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 120
    const-class p0, Landroid/widget/Switch;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 128
    :goto_4
    return-void
    .line 130
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    const v0, 0x7f050068    # @bool/config_support_night_mode 'true'

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
    .line 26
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
