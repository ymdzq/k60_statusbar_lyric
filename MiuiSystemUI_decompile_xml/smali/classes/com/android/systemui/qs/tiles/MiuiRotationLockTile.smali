.class public final Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public clickedToast:Landroid/widget/Toast;

.field public final controller:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field public final useAutoRotate:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->controller:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 5
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const p2, 0x7f050049    # @bool/config_qs_use_auto_rotate 'false'

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->useAutoRotate:Z

    .line 20
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile$callback$1;

    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile$callback$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;)V

    .line 24
    new-instance p2, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile$callback$2$1;

    .line 27
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile$callback$2$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;Lcom/android/systemui/qs/tiles/MiuiRotationLockTile$callback$1;)V

    .line 29
    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
    .line 35
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7b

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
    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public final getToastMessage(Z)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 19
    if-eqz v0, :cond_5

    .line 21
    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    if-eqz p1, :cond_1

    .line 29
    const p1, 0x7f1309e6    # @string/quick_settings_screen_rotation_inner_locked 'Inner screen rotate off'

    .line 31
    goto :goto_1

    .line 34
    :cond_1
    const p1, 0x7f1309e7    # @string/quick_settings_screen_rotation_inner_unlocked 'Inner screen rotate on'

    .line 35
    goto :goto_1

    .line 38
    :cond_2
    const v0, 0x7f1309ea    # @string/quick_settings_screen_rotation_outer_unlocked 'Outer screen rotate on'

    .line 39
    if-eqz v1, :cond_3

    .line 42
    if-eqz p1, :cond_4

    .line 44
    const p1, 0x7f1309e9    # @string/quick_settings_screen_rotation_outer_portrait_locked 'Outer screen locked in portrait mode'

    .line 46
    goto :goto_1

    .line 49
    :cond_3
    if-eqz p1, :cond_4

    .line 50
    const p1, 0x7f1309e8    # @string/quick_settings_screen_rotation_outer_landscape_locked 'Outer screen locked in landscape mode'

    .line 52
    goto :goto_1

    .line 55
    :cond_4
    move p1, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    if-eqz p1, :cond_6

    .line 58
    if-nez v1, :cond_6

    .line 60
    const p1, 0x7f130785    # @string/miui_screen_rotation_freeze_message 'Locked screen orientation in landscape mode'

    .line 62
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_6
    const/4 p0, 0x0

    .line 70
    return-object p0
    .line 71
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 7
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 9
    const/4 v0, 0x1

    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->useAutoRotate:Z

    .line 12
    if-ne v1, p1, :cond_0

    .line 14
    move p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    const-string v1, "handleClick newState: "

    .line 19
    invoke-static {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->controller:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 34
    const/4 v2, -0x1

    .line 36
    invoke-static {v1, p1, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    .line 37
    sget-boolean v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    .line 40
    if-nez v1, :cond_3

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->getToastMessage(Z)Ljava/lang/CharSequence;

    .line 44
    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->clickedToast:Landroid/widget/Toast;

    .line 51
    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->clickedToast:Landroid/widget/Toast;

    .line 67
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 73
    return-void
    .line 76
.end method

.method public final handleShowStateMessage()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->useAutoRotate:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 12
    if-ne v3, v0, :cond_0

    .line 14
    move v1, v2

    .line 16
    :cond_0
    xor-int/lit8 v0, v1, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->getToastMessage(Z)Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 25
    goto :goto_4

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 29
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 43
    if-nez v0, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v4

    .line 51
    const/4 v5, 0x2

    .line 52
    if-ne v4, v5, :cond_5

    .line 53
    if-eqz v3, :cond_4

    .line 55
    const v0, 0x7f130956    # @string/quick_settings_auto_rotate_state_change_message_on 'Auto rotate is on'

    .line 57
    goto :goto_1

    .line 60
    :cond_4
    const v0, 0x7f1309e0    # @string/quick_settings_rotation_state_change_message_on 'Screen orientation is locked'

    .line 61
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 68
    goto :goto_4

    .line 71
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 72
    goto :goto_4

    .line 74
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v0

    .line 78
    if-ne v0, v2, :cond_8

    .line 79
    if-eqz v3, :cond_7

    .line 81
    const v0, 0x7f130955    # @string/quick_settings_auto_rotate_state_change_message_off 'Auto rotate is off'

    .line 83
    goto :goto_3

    .line 86
    :cond_7
    const v0, 0x7f1309df    # @string/quick_settings_rotation_state_change_message_off 'Screen orientation is unlocked'

    .line 87
    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 94
    :cond_8
    :goto_4
    return-void
    .line 97
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_4

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->controller:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 7
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 9
    iget-object p2, p2, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 13
    move-result p2

    .line 16
    const/4 v0, 0x1

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MiuiRotationLockTile;->useAutoRotate:Z

    .line 18
    if-eq v1, p2, :cond_1

    .line 20
    move v2, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 25
    if-eqz v1, :cond_2

    .line 27
    const v1, 0x7f1309e1    # @string/quick_settings_rotation_unlocked_label 'Auto-rotate'

    .line 29
    goto :goto_1

    .line 32
    :cond_2
    const v1, 0x7f1309e2    # @string/quick_settings_rotationlock_label 'Lock orientation'

    .line 33
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 42
    if-eqz p2, :cond_3

    .line 44
    const v1, 0x7f08111f    # @drawable/ic_qs_auto_rotate_disabled 'res/drawable/ic_qs_auto_rotate_disabled.xml'

    .line 46
    goto :goto_2

    .line 49
    :cond_3
    const v1, 0x7f081120    # @drawable/ic_qs_auto_rotate_enabled 'res/drawable/ic_qs_auto_rotate_enabled.xml'

    .line 50
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 53
    move-result-object v1

    .line 56
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 57
    if-eqz p2, :cond_5

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    move-result-object p2

    .line 68
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 69
    if-ne p2, v0, :cond_4

    .line 71
    const p2, 0x7f1300eb    # @string/accessibility_rotation_lock_on_portrait 'Screen is locked in portrait orientation.'

    .line 73
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const p2, 0x7f1300ea    # @string/accessibility_rotation_lock_on_landscape 'Screen is locked in landscape orientation.'

    .line 81
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    const p2, 0x7f1300e2    # @string/accessibility_quick_settings_rotation 'Auto-rotate screen'

    .line 89
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 95
    :goto_3
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
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 106
    if-eqz p0, :cond_6

    .line 108
    const/4 v0, 0x2

    .line 110
    :cond_6
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 111
    :goto_4
    return-void
    .line 113
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
