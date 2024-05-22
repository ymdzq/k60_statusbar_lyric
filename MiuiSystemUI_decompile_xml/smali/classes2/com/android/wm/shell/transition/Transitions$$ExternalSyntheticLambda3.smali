.class public final synthetic Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_2

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 13
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/window/WindowOrganizer;->shareTransactionQueue()Z

    .line 19
    :cond_0
    new-instance v2, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda4;

    .line 22
    invoke-direct {v2, p0}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 27
    const-string v4, "extra_shell_shell_transitions"

    .line 29
    invoke-virtual {v3, v4, v2, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v3

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v2

    .line 47
    const v5, 0x10500b4    # @android:dimen/config_displayWhiteBalanceBrightnessFilterIntercept

    .line 48
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getFloat(I)F

    .line 51
    move-result v2

    .line 54
    const-string/jumbo v5, "transition_animation_scale"

    .line 55
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 58
    move-result v2

    .line 61
    invoke-static {v2}, Landroid/view/WindowManager;->fixScale(F)F

    .line 62
    move-result v2

    .line 65
    iput v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 66
    iget-object v4, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v6

    .line 73
    :goto_0
    add-int/lit8 v6, v6, -0x1

    .line 74
    if-ltz v6, :cond_1

    .line 76
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v7

    .line 81
    check-cast v7, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 82
    invoke-interface {v7, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    .line 84
    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    move-result-object v2

    .line 91
    new-instance v4, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;

    .line 92
    invoke-direct {v4, p0}, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    .line 94
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v3, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    if-eqz v1, :cond_2

    .line 101
    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 106
    invoke-virtual {v0, v1}, Landroid/window/WindowOrganizer;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    .line 111
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    iput-boolean v5, p0, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    .line 116
    throw v0

    .line 118
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 119
    if-eqz v0, :cond_3

    .line 121
    const-string/jumbo v1, "transitions"

    .line 123
    invoke-virtual {v0, v1, p0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    .line 126
    :cond_3
    return-void

    .line 129
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 130
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;

    .line 132
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$SettingsObserver;->this$0:Lcom/android/wm/shell/transition/Transitions;

    .line 134
    iget v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 136
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 140
    move-result v1

    .line 143
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 144
    if-ltz v1, :cond_4

    .line 146
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object v2

    .line 151
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 152
    invoke-interface {v2, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    .line 154
    goto :goto_3

    .line 157
    :cond_4
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 160
.end method
