.class public final Lcom/android/keyguard/KeyguardMoveHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveHelper;

.field public final synthetic val$right:Z

.field public final synthetic val$snapBack:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveHelper;ZZF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->val$snapBack:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->val$right:Z

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->val$snapBack:Z

    .line 2
    if-nez p1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 6
    iget v0, p1, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 8
    if-nez v0, :cond_5

    .line 10
    iget-object p1, p1, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isLeftViewLaunchActivity()Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 23
    iget-object p1, p1, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 25
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$3;->val$right:Z

    .line 27
    check-cast p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    if-nez p0, :cond_4

    .line 34
    const-class p0, Lcom/android/keyguard/negative/MiuiUWBController;

    .line 36
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/keyguard/negative/MiuiUWBController;

    .line 42
    iget-boolean v0, v0, Lcom/android/keyguard/negative/MiuiUWBController;->mUseUWB:Z

    .line 44
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/keyguard/negative/MiuiUWBController;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    const-string v0, "MiuiUWBController"

    .line 58
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 60
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 62
    new-instance v3, Landroid/content/ComponentName;

    .line 65
    const-string v4, "com.miui.smarthomeplus"

    .line 67
    const-string v5, "com.miui.smarthomeplus.UWBEntryActivity"

    .line 69
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    const/high16 v3, 0x10000000

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const-string/jumbo v3, "source"

    .line 82
    const-string v4, "lock_screen"

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mContext:Landroid/content/Context;

    .line 90
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 92
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 94
    const-string p0, "launchUWBActivity"

    .line 97
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 102
    :catch_0
    move-exception p0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    const-string v3, "Unable to start UWB activity, activity not found "

    .line 106
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    iget-object p0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 121
    if-nez p0, :cond_0

    .line 123
    goto :goto_1

    .line 125
    :cond_0
    move-object v1, p0

    .line 126
    :goto_1
    iget-object p0, v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 127
    if-eqz p0, :cond_4

    .line 129
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 131
    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 135
    goto :goto_4

    .line 138
    :cond_1
    const-class p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 139
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    move-result-object v0

    .line 144
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 145
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 147
    if-eqz v0, :cond_4

    .line 149
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    move-result-object p0

    .line 154
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 155
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->getPreLeftScreenIntent()Landroid/content/Intent;

    .line 157
    move-result-object v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    :try_start_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 163
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 165
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    goto :goto_2

    .line 170
    :catch_1
    move-exception p0

    .line 171
    const-string v0, "LockScreenMagazineController"

    .line 172
    const-string/jumbo v2, "startMagazineActivity: failed "

    .line 174
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_2
    :goto_2
    iget-object p0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 180
    if-nez p0, :cond_3

    .line 182
    goto :goto_3

    .line 184
    :cond_3
    move-object v1, p0

    .line 185
    :goto_3
    iget-object p0, v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 186
    if-eqz p0, :cond_4

    .line 188
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 190
    if-eqz p1, :cond_4

    .line 192
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 194
    :cond_4
    :goto_4
    const-class p0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 197
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    move-result-object p0

    .line 202
    check-cast p0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 203
    const-string/jumbo p1, "\u53f3\u6ed1\u8fdb\u5165\u8d1f\u4e00\u5c4f"

    .line 205
    invoke-virtual {p0, p1}, Lcom/miui/systemui/analytics/SystemUIStat;->handleKeyguardActionEvent(Ljava/lang/String;)V

    .line 208
    :cond_5
    return-void
    .line 211
.end method
