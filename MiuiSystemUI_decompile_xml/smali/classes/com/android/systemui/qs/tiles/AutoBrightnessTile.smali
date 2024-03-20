.class public final Lcom/android/systemui/qs/tiles/AutoBrightnessTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final autoBrightnessController:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

.field public final callback:Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->autoBrightnessController:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 5
    new-instance p1, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;-><init>(Lcom/android/systemui/qs/tiles/AutoBrightnessTile;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->callback:Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;

    .line 12
    new-instance p1, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;-><init>(Lcom/android/systemui/qs/tiles/AutoBrightnessTile;)V

    .line 16
    invoke-static {p4, p1}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 11
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-interface {p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 20
    return-object v1

    .line 23
    :cond_0
    const-string p0, "com.android.settings/com.android.settings.display.BrightnessActivity"

    .line 24
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 26
    move-result-object p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 33
    const-string v0, "android.intent.action.MAIN"

    .line 35
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    const/high16 p0, 0x14000000

    .line 43
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    :goto_0
    return-object v1
    .line 48
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
    const v0, 0x7f130957    # @string/quick_settings_autobrightness_label 'Auto brightness'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->autoBrightnessController:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->toggleAutoBrightness()V

    .line 4
    return-void
    .line 7
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
    const v0, 0x7f130959    # @string/quick_settings_autobrightness_state_change_message_on 'Auto brightness is on'

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
    const v0, 0x7f130958    # @string/quick_settings_autobrightness_state_change_message_off 'Auto brightness is off'

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
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->autoBrightnessController:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 4
    iget-boolean v0, p2, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->enabled:Z

    .line 6
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 10
    const v0, 0x7f130957    # @string/quick_settings_autobrightness_label 'Auto brightness'

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 19
    iget-boolean p2, p2, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->autoBrightnessAvailable:Z

    .line 21
    const/4 v0, 0x2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 26
    if-eqz p2, :cond_0

    .line 28
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 30
    const p2, 0x7f08113b    # @drawable/ic_qs_brightness_auto 'res/drawable/ic_qs_brightness_auto.xml'

    .line 32
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 35
    move-result-object p2

    .line 38
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    const/4 p2, 0x1

    .line 42
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 43
    const p2, 0x7f08113c    # @drawable/ic_qs_brightness_manual 'res/drawable/ic_qs_brightness_manual.xml'

    .line 45
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 48
    move-result-object p2

    .line 51
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 56
    :goto_0
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 58
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 60
    if-eqz v1, :cond_2

    .line 62
    const v1, 0x7f130b54    # @string/switch_bar_on 'On'

    .line 64
    goto :goto_1

    .line 67
    :cond_2
    const v1, 0x7f130b53    # @string/switch_bar_off 'Off'

    .line 68
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string p2, ","

    .line 83
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 95
    const-class p0, Landroid/widget/Switch;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 103
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 105
    return-void
    .line 107
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->autoBrightnessController:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->blockedByVirtualSensor:Z

    .line 4
    xor-int/lit8 p0, p0, 0x1

    .line 6
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
