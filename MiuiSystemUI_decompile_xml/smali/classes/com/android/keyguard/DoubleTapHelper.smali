.class public final Lcom/android/keyguard/DoubleTapHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;


# instance fields
.field public mActivated:Z

.field public final mActivationListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$1;

.field public mActivationX:F

.field public mActivationY:F

.field public final mDoubleTapListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;

.field public final mDoubleTapSlop:F

.field public final mDoubleTapTimeOutMs:J

.field public mDownX:F

.field public mDownY:F

.field public final mTapTimeoutRunnable:Lcom/android/keyguard/DoubleTapHelper$$ExternalSyntheticLambda0;

.field public mTouchOnFod:Z

.field public final mTouchSlop:F

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$1;->INSTANCE:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Lcom/android/keyguard/DoubleTapHelper$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/keyguard/DoubleTapHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DoubleTapHelper;)V

    .line 9
    iput-object v1, p0, Lcom/android/keyguard/DoubleTapHelper;->mTapTimeoutRunnable:Lcom/android/keyguard/DoubleTapHelper$$ExternalSyntheticLambda0;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    iput v1, p0, Lcom/android/keyguard/DoubleTapHelper;->mTouchSlop:F

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 32
    const v2, 0x7f0702e0    # @dimen/double_tap_slop '32.0dp'

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 36
    move-result v1

    .line 39
    iput v1, p0, Lcom/android/keyguard/DoubleTapHelper;->mDoubleTapSlop:F

    .line 40
    iput-object p1, p0, Lcom/android/keyguard/DoubleTapHelper;->mView:Landroid/view/View;

    .line 42
    const-wide/16 v1, 0x190

    .line 44
    iput-wide v1, p0, Lcom/android/keyguard/DoubleTapHelper;->mDoubleTapTimeOutMs:J

    .line 46
    iput-object v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mActivationListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$1;

    .line 48
    iput-object p2, p0, Lcom/android/keyguard/DoubleTapHelper;->mDoubleTapListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;

    .line 50
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 56
    move-result-object p1

    .line 59
    invoke-interface {p1, p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->registerCallback(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;)V

    .line 60
    :cond_0
    return-void
    .line 63
.end method


# virtual methods
.method public final isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/keyguard/DoubleTapHelper;->mDownX:F

    .line 6
    sub-float/2addr v0, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 9
    move-result v0

    .line 12
    iget v1, p0, Lcom/android/keyguard/DoubleTapHelper;->mTouchSlop:F

    .line 13
    cmpg-float v0, v0, v1

    .line 15
    if-gez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result p1

    .line 22
    iget p0, p0, Lcom/android/keyguard/DoubleTapHelper;->mDownY:F

    .line 23
    sub-float/2addr p1, p0

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result p0

    .line 29
    cmpg-float p0, p0, v1

    .line 30
    if-gez p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method public final makeInactive()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mActivated:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mActivated:Z

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mActivationListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$1;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mTapTimeoutRunnable:Lcom/android/keyguard/DoubleTapHelper$$ExternalSyntheticLambda0;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/DoubleTapHelper;->mView:Landroid/view/View;

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onGxzwTouchDown()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mTouchOnFod:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onGxzwTouchUp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/DoubleTapHelper;->mTouchOnFod:Z

    .line 3
    return-void
    .line 5
.end method
