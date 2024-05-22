.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$2;

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBgHandler:Landroid/os/Handler;

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/BackAnimationController$2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;Landroid/os/Handler;)V

    .line 18
    const-string v1, "enable_back_animation"

    .line 21
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    invoke-virtual {v3, v1, v2, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->updateEnableAnimationFromSetting()V

    .line 33
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$4;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    .line 38
    new-instance v1, Landroid/window/BackAnimationAdapter;

    .line 41
    invoke-direct {v1, v0}, Landroid/window/BackAnimationAdapter;-><init>(Landroid/window/IBackAnimationRunner;)V

    .line 43
    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 46
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    .line 48
    invoke-direct {v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    .line 50
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 53
    const-string v2, "extra_shell_back_animation"

    .line 55
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 57
    sget-boolean v0, Lcom/android/wm/shell/back/BackAnimationController;->IS_U_ANIMATION_ENABLED:Z

    .line 60
    if-nez v0, :cond_0

    .line 62
    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    .line 67
    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 69
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    .line 71
    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    .line 74
    const/4 v4, 0x3

    .line 76
    iget-object v0, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 77
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 79
    new-instance v0, Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/CrossActivityAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    .line 84
    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mDefaultActivityAnimation:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 87
    const/4 v4, 0x2

    .line 89
    iget-object v0, v0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 90
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 95
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    .line 97
    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 100
    :goto_0
    return-void

    .line 102
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 108
    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 112
    const-wide/16 v1, 0x7d0

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    move-result-object v1

    .line 119
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 123
    const/4 v2, 0x1

    .line 124
    const-string v3, "Animation didn\'t finish in %d ms. Resetting..."

    .line 125
    const v4, -0x159cf767

    .line 127
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onBackAnimationFinished()V

    .line 133
    return-void

    .line 136
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 137
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onBackAnimationFinished()V

    .line 139
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 144
.end method
