.class public final Lcom/android/systemui/qs/tiles/PaperModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/PaperModeController$PaperModeListener;


# instance fields
.field public final mPaperModeController:Lcom/android/systemui/statusbar/policy/PaperModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/PaperModeController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/PaperModeTile;->mPaperModeController:Lcom/android/systemui/statusbar/policy/PaperModeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    const-string p0, "com.android.settings/.display.ScreenPaperModeActivity"

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
    const v0, 0x7f1309e0    # @string/quick_settings_papermode_label 'Reading mode'

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "handleClick: from: "

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 9
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, ", to: "

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 23
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 25
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 43
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 45
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 47
    xor-int/lit8 p1, p1, 0x1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PaperModeTile;->mPaperModeController:Lcom/android/systemui/statusbar/policy/PaperModeController;

    .line 58
    check-cast p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeEnabled:Z

    .line 62
    if-eq v0, p1, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeAvailable:Z

    .line 66
    if-nez v0, :cond_0

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mResolver:Landroid/content/ContentResolver;

    .line 71
    const-string/jumbo v0, "screen_paper_mode_enabled"

    .line 73
    const/4 v1, -0x2

    .line 76
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 77
    :cond_1
    :goto_0
    return-void
    .line 80
.end method

.method public final handleSetListening(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PaperModeTile;->mPaperModeController:Lcom/android/systemui/statusbar/policy/PaperModeController;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 14
    :goto_0
    return-void
    .line 17
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
    const v0, 0x7f1309df    # @string/quick_settings_paper_state_change_message_on 'Reading mode is on'

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
    const v0, 0x7f1309de    # @string/quick_settings_paper_state_change_message_off 'Reading mode is off'

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
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const v1, 0x7f1309e0    # @string/quick_settings_papermode_label 'Reading mode'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/PaperModeTile;->mPaperModeController:Lcom/android/systemui/statusbar/policy/PaperModeController;

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeAvailable:Z

    .line 19
    const v2, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 21
    const-string v3, ","

    .line 24
    const v4, 0x7f081164    # @drawable/ic_qs_paper_mode_off 'res/drawable/ic_qs_paper_mode_off.xml'

    .line 26
    if-nez v1, :cond_0

    .line 29
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 31
    move-result-object p0

    .line 34
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 61
    const/4 p0, 0x0

    .line 63
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 64
    goto :goto_2

    .line 66
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 67
    if-eqz v1, :cond_2

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    move-result p0

    .line 76
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 77
    if-ne p0, p2, :cond_1

    .line 79
    goto :goto_2

    .line 81
    :cond_1
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeEnabled:Z

    .line 85
    iput-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 87
    :goto_0
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 89
    const/4 p2, 0x1

    .line 91
    if-eqz p0, :cond_3

    .line 92
    const p0, 0x7f081165    # @drawable/ic_qs_paper_mode_on 'res/drawable/ic_qs_paper_mode_on.xml'

    .line 94
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 97
    move-result-object p0

    .line 100
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 101
    const/4 p0, 0x2

    .line 103
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 104
    goto :goto_1

    .line 106
    :cond_3
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 107
    move-result-object p0

    .line 110
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 111
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 113
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 128
    if-eqz v1, :cond_4

    .line 130
    const v2, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 132
    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 145
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 146
    const-class p0, Landroid/widget/Switch;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 154
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 156
    :goto_2
    return-void
    .line 158
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "support_screen_paper_mode"

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
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
