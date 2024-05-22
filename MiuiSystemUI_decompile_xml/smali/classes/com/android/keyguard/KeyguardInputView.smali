.class public abstract Lcom/android/keyguard/KeyguardInputView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mOrientation:I

.field public mSmallestScreenWidthDp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/keyguard/KeyguardInputView;->mOrientation:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Lcom/android/keyguard/KeyguardInputView;->mSmallestScreenWidthDp:I

    return-void
.end method


# virtual methods
.method public disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getBouncerMessageView()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public handleOrientationChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public handleSmallestWidthDpChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 7
    iget v1, p0, Lcom/android/keyguard/KeyguardInputView;->mOrientation:I

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    iput v0, p0, Lcom/android/keyguard/KeyguardInputView;->mOrientation:I

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->handleOrientationChanged()V

    .line 15
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardInputView;->mSmallestScreenWidthDp:I

    .line 18
    if-eq p1, v0, :cond_1

    .line 20
    iput p1, p0, Lcom/android/keyguard/KeyguardInputView;->mSmallestScreenWidthDp:I

    .line 22
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->handleSmallestWidthDpChanged()V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a05d0    # @id/miui_keyguard_face_unlock_view

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->setKeyguardFaceUnlockView(Z)V

    .line 19
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 37
    const v2, 0x7f07080d    # @dimen/miui_face_unlock_view_top_bouncer '32.73dp'

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    move-result v1

    .line 44
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 45
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputView;->mFaceUnlockView:Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
    .line 52
.end method

.method public setOnFinishImeAnimationRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
