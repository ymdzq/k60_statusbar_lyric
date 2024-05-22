.class public final Lcom/android/systemui/qs/tiles/PowerSaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBatterySaverObserver:Lcom/android/systemui/qs/tiles/PowerSaverTile$1;

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/tiles/PowerSaverTile$1;

    .line 5
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/PowerSaverTile$1;-><init>(Lcom/android/systemui/qs/tiles/PowerSaverTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile;->mBatterySaverObserver:Lcom/android/systemui/qs/tiles/PowerSaverTile$1;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile;->mResolver:Landroid/content/ContentResolver;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    const-string p0, "com.miui.securitycenter/com.miui.powercenter.savemode.PowerSaveActivity"

    .line 2
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    const-string v1, "android.intent.action.MAIN"

    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 19
    const/high16 p0, 0x14000000

    .line 22
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    move-object p0, v0

    .line 27
    :goto_0
    return-object p0
    .line 28
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
    const v0, 0x7f13095e    # @string/quick_settings_batterysaver_label 'Battery saver'

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile;->mResolver:Landroid/content/ContentResolver;

    .line 2
    const-string p1, "POWER_SAVE_MODE_OPEN"

    .line 4
    const/4 v0, 0x0

    .line 6
    const/4 v1, -0x2

    .line 7
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 8
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    move v0, v3

    .line 15
    :cond_0
    xor-int/2addr v0, v3

    .line 16
    new-instance v2, Landroid/os/Bundle;

    .line 17
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-string p1, "content://com.miui.powercenter.powersaver"

    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 31
    move-result v0

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 36
    move-object p1, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eq v0, v1, :cond_2

    .line 40
    const-string v1, "content"

    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v1

    .line 61
    xor-int/2addr v1, v3

    .line 62
    if-nez v1, :cond_2

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 65
    move-result-object v1

    .line 68
    const-string v3, ""

    .line 69
    const-string v5, "@"

    .line 71
    invoke-static {v3, v0, v5}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 91
    move-result-object p1

    .line 94
    :cond_2
    :goto_0
    const-string v0, "changePowerMode"

    .line 95
    invoke-virtual {p0, p1, v0, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 97
    return-void
    .line 100
.end method

.method public final handleSetListening(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile;->mBatterySaverObserver:Lcom/android/systemui/qs/tiles/PowerSaverTile$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile;->mResolver:Landroid/content/ContentResolver;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const-string p1, "POWER_SAVE_MODE_OPEN"

    .line 8
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 20
    :goto_0
    return-void
    .line 23
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
    const v0, 0x7f1309e3    # @string/quick_settings_powersaver_state_change_message_on 'Battery saver is on'

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
    const v0, 0x7f1309e2    # @string/quick_settings_powersaver_state_change_message_off 'Battery saver is off'

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
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile;->mResolver:Landroid/content/ContentResolver;

    .line 4
    const-string v0, "POWER_SAVE_MODE_OPEN"

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x2

    .line 9
    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p2, :cond_0

    .line 15
    move v1, v0

    .line 17
    :cond_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 20
    const p2, 0x7f13095e    # @string/quick_settings_batterysaver_label 'Battery saver'

    .line 22
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 28
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 29
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 31
    if-eqz p2, :cond_1

    .line 33
    const/4 p2, 0x2

    .line 35
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 36
    const p2, 0x7f081122    # @drawable/ic_qs_battery_saver_on 'res/drawable/ic_qs_battery_saver_on.xml'

    .line 38
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 41
    move-result-object p2

    .line 44
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 48
    const p2, 0x7f081121    # @drawable/ic_qs_battery_saver_off 'res/drawable/ic_qs_battery_saver_off.xml'

    .line 50
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 53
    move-result-object p2

    .line 56
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 57
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ","

    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 74
    if-eqz v1, :cond_2

    .line 76
    const v1, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 78
    goto :goto_1

    .line 81
    :cond_2
    const v1, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 82
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 95
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 96
    const-class p0, Landroid/widget/Switch;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 103
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 104
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 106
    return-void
    .line 108
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
