.class public final Lcom/android/systemui/qs/tiles/QuietModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/ZenModeController;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    new-instance p1, Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {p1, p0, p10}, Lcom/android/systemui/qs/tiles/QuietModeTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/QuietModeTile;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 11
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
    .line 17
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
    const/16 p0, 0x76

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309e4    # @string/quick_settings_quietmode_label 'DND'

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
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenAvailable()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenModeOn()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 18
    const/4 v1, 0x2

    .line 20
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 21
    move-result-object v1

    .line 24
    sget-boolean v2, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 25
    const-class v2, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 27
    invoke-static {v2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 33
    new-instance v3, Lcom/miui/systemui/util/CommonUtil$1;

    .line 35
    invoke-direct {v3, v0, v1}, Lcom/miui/systemui/util/CommonUtil$1;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 37
    invoke-virtual {v2, v3}, Lcom/miui/systemui/MiuiUiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenModeOn()Z

    .line 43
    move-result v0

    .line 46
    xor-int/lit8 v0, v0, 0x1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILjava/lang/String;)V

    .line 51
    :cond_1
    return-void
    .line 54
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
    const v0, 0x7f1309a9    # @string/quick_settings_dnd_state_change_message_on 'DND is on'

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
    const v0, 0x7f1309a8    # @string/quick_settings_dnd_state_change_message_off 'DND is off'

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
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 4
    check-cast p2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 6
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenModeOn()Z

    .line 8
    move-result p2

    .line 11
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 14
    const p2, 0x7f1309e4    # @string/quick_settings_quietmode_label 'DND'

    .line 16
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 23
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 25
    if-eqz p2, :cond_0

    .line 27
    const/4 p2, 0x2

    .line 29
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 30
    const p2, 0x7f081147    # @drawable/ic_qs_dnd_on 'res/drawable/ic_qs_dnd_on.xml'

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
    const p2, 0x7f081146    # @drawable/ic_qs_dnd_off 'res/drawable/ic_qs_dnd_off.xml'

    .line 45
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 48
    move-result-object p2

    .line 51
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 52
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, ","

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 69
    if-eqz v0, :cond_1

    .line 71
    const v0, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 73
    goto :goto_1

    .line 76
    :cond_1
    const v0, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 77
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 91
    const-class p0, Landroid/widget/Switch;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 99
    return-void
    .line 101
.end method

.method public final isAvailable()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 2
    const-string v0, "DndTileVisible"

    .line 4
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
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

.method public final onZenChanged(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 6
    return-void
    .line 9
.end method
