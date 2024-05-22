.class public final Lcom/android/systemui/qs/tiles/UiModeNightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field public static final formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "hh:mm a"

    .line 2
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 5
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    const-class p2, Landroid/app/UiModeManager;

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/UiModeManager;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 19
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 21
    invoke-virtual {p0, p10, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p11, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 26
    return-void
    .line 29
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.DARK_THEME_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x6aa

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    move-object v0, p1

    .line 4
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 5
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 12
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 18
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 27
    return-void
    .line 30
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 4
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 10
    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 12
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    move-result-object v3

    .line 25
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 26
    and-int/lit8 v3, v3, 0x30

    .line 28
    const/16 v4, 0x20

    .line 30
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    if-ne v3, v4, :cond_0

    .line 34
    move v3, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v6

    .line 38
    :goto_0
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p0

    .line 44
    const p2, 0x7f13098f    # @string/quick_settings_dark_mode_secondary_label_battery_saver 'Battery Saver'

    .line 45
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 52
    goto/16 :goto_6

    .line 54
    :cond_1
    if-nez v0, :cond_3

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 58
    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 62
    move-result p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object p0

    .line 71
    if-eqz v3, :cond_2

    .line 72
    const p2, 0x7f130995    # @string/quick_settings_dark_mode_secondary_label_until_sunrise 'Until sunrise'

    .line 74
    goto :goto_1

    .line 77
    :cond_2
    const p2, 0x7f130992    # @string/quick_settings_dark_mode_secondary_label_on_at_sunset 'On at sunset'

    .line 78
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 85
    goto :goto_6

    .line 87
    :cond_3
    const/4 p0, 0x3

    .line 88
    const/4 v4, 0x0

    .line 89
    if-ne v0, p0, :cond_a

    .line 90
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightModeCustomType()I

    .line 92
    move-result p0

    .line 95
    if-nez p0, :cond_7

    .line 96
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 98
    move-result p0

    .line 101
    if-eqz v3, :cond_4

    .line 102
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    .line 104
    move-result-object p2

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    .line 109
    move-result-object p2

    .line 112
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    move-result-object v0

    .line 116
    if-eqz v3, :cond_5

    .line 117
    const v4, 0x7f130993    # @string/quick_settings_dark_mode_secondary_label_until 'Until %s'

    .line 119
    goto :goto_3

    .line 122
    :cond_5
    const v4, 0x7f130990    # @string/quick_settings_dark_mode_secondary_label_on_at 'On at %s'

    .line 123
    :goto_3
    new-array v7, v5, [Ljava/lang/Object;

    .line 126
    if-eqz p0, :cond_6

    .line 128
    invoke-virtual {p2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    sget-object p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 135
    invoke-virtual {p0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 140
    :goto_4
    aput-object p0, v7, v6

    .line 141
    invoke-virtual {v0, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 146
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 147
    goto :goto_6

    .line 149
    :cond_7
    if-ne p0, v5, :cond_9

    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object p0

    .line 155
    if-eqz v3, :cond_8

    .line 156
    const p2, 0x7f130994    # @string/quick_settings_dark_mode_secondary_label_until_bedtime_ends 'Until bedtime ends'

    .line 158
    goto :goto_5

    .line 161
    :cond_8
    const p2, 0x7f130991    # @string/quick_settings_dark_mode_secondary_label_on_at_bedtime 'On at bedtime'

    .line 162
    :goto_5
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 168
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 169
    goto :goto_6

    .line 171
    :cond_9
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 172
    goto :goto_6

    .line 174
    :cond_a
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 175
    :goto_6
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 177
    const p0, 0x7f130a07    # @string/quick_settings_ui_mode_night_label 'Dark theme'

    .line 179
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 185
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 186
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    move-result p0

    .line 193
    if-eqz p0, :cond_b

    .line 194
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 196
    goto :goto_7

    .line 198
    :cond_b
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 199
    const-string p2, ", "

    .line 201
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 203
    filled-new-array {p0, p2, v0}, [Ljava/lang/CharSequence;

    .line 205
    move-result-object p0

    .line 208
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 209
    move-result-object p0

    .line 212
    :goto_7
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 213
    const/4 p0, 0x2

    .line 215
    if-eqz v1, :cond_c

    .line 216
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 218
    goto :goto_8

    .line 220
    :cond_c
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 221
    if-eqz p2, :cond_d

    .line 223
    move v5, p0

    .line 225
    :cond_d
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 226
    :goto_8
    iget p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 228
    if-ne p2, p0, :cond_e

    .line 230
    const p0, 0x7f08175f    # @drawable/qs_light_dark_theme_icon_on 'res/drawable/qs_light_dark_theme_icon_on.xml'

    .line 232
    goto :goto_9

    .line 235
    :cond_e
    const p0, 0x7f08175e    # @drawable/qs_light_dark_theme_icon_off 'res/drawable/qs_light_dark_theme_icon_off.xml'

    .line 236
    :goto_9
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 239
    move-result-object p0

    .line 242
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 243
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    .line 245
    const-class p0, Landroid/widget/Switch;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 249
    move-result-object p0

    .line 252
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 253
    return-void
    .line 255
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

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 3
    return-void
    .line 6
.end method
