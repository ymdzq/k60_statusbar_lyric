.class public final Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;
.super Lcom/miui/maml/elements/AdvancedSlider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAlwaysShow:Z

.field public final mDelay:Lcom/miui/maml/data/Expression;

.field public final mNoUnlock:Z

.field public mPreX:F

.field public mPreY:F

.field public mUnlockingHide:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const-string p2, "alwaysShow"

    .line 5
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 11
    move-result p2

    .line 14
    iput-boolean p2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    .line 15
    const-string p2, "noUnlock"

    .line 17
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 23
    move-result p2

    .line 26
    iput-boolean p2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 29
    move-result-object p2

    .line 32
    const-string v0, "delay"

    .line 33
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 39
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:Lcom/miui/maml/data/Expression;

    .line 43
    iget-boolean p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 45
    if-nez p2, :cond_1

    .line 47
    const-string p2, "haptic"

    .line 49
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 55
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 64
    :goto_1
    iput-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider;->finish()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 6
    return-void
    .line 8
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onCancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onCancel()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 2
    const/4 p1, 0x1

    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mNoUnlock:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    if-nez p2, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 17
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 23
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 25
    if-ne p2, p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 29
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 35
    :cond_0
    return v1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 39
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 46
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mDelay:Lcom/miui/maml/data/Expression;

    .line 50
    if-nez p0, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 55
    move-result-wide v1

    .line 58
    double-to-int v1, v1

    .line 59
    :goto_0
    iget-object p0, v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 60
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 62
    invoke-virtual {p0, p2, v1}, Lcom/android/keyguard/AwesomeLockScreen;->unlocked(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p2, "LockScreen_UnlockerScreenElement"

    .line 69
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 78
    :goto_1
    return p1
    .line 81
.end method

.method public final onMove(FF)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->onMove(FF)V

    .line 2
    iget v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mPreX:F

    .line 5
    sub-float v0, p1, v0

    .line 7
    iget v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mPreY:F

    .line 9
    sub-float v1, p2, v1

    .line 11
    mul-float/2addr v0, v0

    .line 13
    mul-float/2addr v1, v1

    .line 14
    add-float/2addr v1, v0

    .line 15
    const/high16 v0, 0x42480000    # 50.0f

    .line 16
    cmpl-float v0, v1, v0

    .line 18
    if-ltz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 22
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 24
    iget-object v0, v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 26
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 28
    iget-object v0, v0, Lcom/android/keyguard/AwesomeLockScreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 30
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 32
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 34
    const/4 v2, 0x1

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 39
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 45
    :cond_0
    iput p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mPreX:F

    .line 48
    iput p2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mPreY:F

    .line 50
    :cond_1
    return-void
    .line 52
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 9
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 16
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 24
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 29
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 35
    :cond_0
    return-void
    .line 38
.end method
