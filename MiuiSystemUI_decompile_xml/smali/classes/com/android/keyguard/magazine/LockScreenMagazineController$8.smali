.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

.field public final synthetic val$showMagazine:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->val$showMagazine:Z

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    .line 8
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-boolean v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 18
    if-nez v1, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v0

    .line 24
    :goto_0
    const/4 v2, 0x4

    .line 25
    if-eqz v1, :cond_2

    .line 26
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 28
    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->val$showMagazine:Z

    .line 30
    if-eqz v1, :cond_1

    .line 32
    move v1, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v0

    .line 36
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutVisible(I)V

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 40
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 42
    iget-boolean p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->val$showMagazine:Z

    .line 44
    if-eqz p0, :cond_3

    .line 46
    goto :goto_2

    .line 48
    :cond_3
    move v0, v2

    .line 49
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutVisible(I)V

    .line 50
    return-void
    .line 53
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    .line 8
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    iget-boolean v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 27
    invoke-virtual {p1, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutVisible(I)V

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 34
    invoke-virtual {p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutVisible(I)V

    .line 36
    return-void
    .line 39
.end method
