.class public final Lcom/android/systemui/qs/tiles/NightDisplayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# instance fields
.field public mIsListening:Z

.field public mListener:Landroid/hardware/display/NightDisplayListener;

.field public final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public mManager:Landroid/hardware/display/ColorDisplayManager;

.field public final mNightDisplayListenerBuilder:Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/LocationController;Landroid/hardware/display/ColorDisplayManager;Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 7
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mNightDisplayListenerBuilder:Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;

    .line 9
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 15
    move-result p1

    .line 18
    iput p1, p12, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mUserId:I

    .line 19
    new-instance p1, Landroid/hardware/display/NightDisplayListener;

    .line 21
    iget p2, p12, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mUserId:I

    .line 23
    iget-object p3, p12, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mBgHandler:Landroid/os/Handler;

    .line 25
    iget-object p4, p12, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p1, p4, p2, p3}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    .line 32
    return-void
    .line 34
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.NIGHT_DISPLAY_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x1eb

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309d0    # @string/quick_settings_night_display_label 'Night Light'

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
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 7
    const-string v0, "night_display_forced_auto_mode_available"

    .line 8
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    const-string v0, "1"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 23
    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoModeRaw()I

    .line 25
    move-result p1

    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne p1, v1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 32
    invoke-virtual {p1, v0}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayAutoMode(I)Z

    .line 34
    const-string p1, "NightDisplayTile"

    .line 37
    const-string v1, "Enrolled in forced night display auto mode"

    .line 39
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 44
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 46
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 48
    xor-int/2addr p1, v0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 51
    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    .line 53
    return-void
    .line 56
.end method

.method public final handleSetListening(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    .line 5
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    .line 10
    invoke-virtual {p1, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    .line 19
    invoke-virtual {p0, v0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 21
    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 4
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    .line 6
    move-result p2

    .line 9
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 12
    const v0, 0x7f1309d0    # @string/quick_settings_night_display_label 'Night Light'

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 21
    const-class v0, Landroid/widget/Switch;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 29
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 31
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_0

    .line 35
    move v3, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v2

    .line 39
    :goto_0
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 40
    if-eqz v0, :cond_1

    .line 42
    const v0, 0x7f081772    # @drawable/qs_nightlight_icon_on 'res/drawable/qs_nightlight_icon_on.xml'

    .line 44
    goto :goto_1

    .line 47
    :cond_1
    const v0, 0x7f081771    # @drawable/qs_nightlight_icon_off 'res/drawable/qs_nightlight_icon_off.xml'

    .line 48
    :goto_1
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 51
    move-result-object v0

    .line 54
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 55
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 57
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 59
    invoke-virtual {v3}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    .line 61
    move-result v3

    .line 64
    if-eq v3, v2, :cond_5

    .line 65
    if-eq v3, v1, :cond_2

    .line 67
    goto :goto_2

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 70
    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 74
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    :goto_2
    const/4 p0, 0x0

    .line 80
    goto :goto_4

    .line 81
    :cond_3
    if-eqz v0, :cond_4

    .line 82
    const p0, 0x7f1309d3    # @string/quick_settings_night_secondary_label_until_sunrise 'Until sunrise'

    .line 84
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    const p0, 0x7f1309d2    # @string/quick_settings_night_secondary_label_on_at_sunset 'On at sunset'

    .line 92
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    goto :goto_4

    .line 99
    :cond_5
    if-eqz v0, :cond_6

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 102
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    .line 104
    move-result-object p0

    .line 107
    const v0, 0x7f1309ef    # @string/quick_settings_secondary_label_until 'Until %s'

    .line 108
    goto :goto_3

    .line 111
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 112
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    .line 114
    move-result-object p0

    .line 117
    const v0, 0x7f1309d1    # @string/quick_settings_night_secondary_label_on_at 'On at %s'

    .line 118
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 121
    move-result-object v1

    .line 124
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 125
    move-result-object v2

    .line 128
    const-string v3, "UTC"

    .line 129
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 131
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 135
    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    .line 138
    move-result-object v3

    .line 141
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 142
    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    .line 145
    move-result v3

    .line 148
    const/16 v4, 0xb

    .line 149
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 151
    const/16 v3, 0xc

    .line 154
    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    .line 156
    move-result p0

    .line 159
    invoke-virtual {v1, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 p0, 0xd

    .line 163
    const/4 v3, 0x0

    .line 165
    invoke-virtual {v1, p0, v3}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 p0, 0xe

    .line 169
    invoke-virtual {v1, p0, v3}, Ljava/util/Calendar;->set(II)V

    .line 171
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 174
    move-result-object p0

    .line 177
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 181
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 182
    move-result-object p0

    .line 185
    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    move-result-object p0

    .line 189
    :goto_4
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result p0

    .line 195
    if-eqz p0, :cond_7

    .line 196
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 198
    goto :goto_5

    .line 200
    :cond_7
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 201
    const-string p2, ", "

    .line 203
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 205
    filled-new-array {p0, p2, v0}, [Ljava/lang/CharSequence;

    .line 207
    move-result-object p0

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 211
    move-result-object p0

    .line 214
    :goto_5
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 215
    return-void
    .line 217
.end method

.method public final handleUserSwitch(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 12
    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 17
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mNightDisplayListenerBuilder:Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;

    .line 28
    iput p1, v0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mUserId:I

    .line 30
    new-instance p1, Landroid/hardware/display/NightDisplayListener;

    .line 32
    iget v2, v0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mUserId:I

    .line 34
    iget-object v3, v0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mBgHandler:Landroid/os/Handler;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p1, v0, v2, v3}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 49
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 52
    return-void
    .line 55
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
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

.method public final onActivated(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 3
    return-void
    .line 6
.end method

.method public final populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    .line 2
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 6
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoModeRaw()I

    .line 8
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 15
    const/16 v0, 0x51f

    .line 16
    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method
