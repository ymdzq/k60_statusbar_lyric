.class public final Lcom/android/keyguard/injector/KeyguardIndicationInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBatteryIndicationClickListener:Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;

.field public mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

.field public mChargeAsyncTask:Landroid/os/AsyncTask;

.field public mChargeClickCount:I

.field public mChargeTextClickTime:J

.field public final mContext:Landroid/content/Context;

.field public mIndicationFromBottomAni:Landroid/view/animation/Animation;

.field public mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 6
    new-instance v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;-><init>(Lcom/android/keyguard/injector/KeyguardIndicationInjector;)V

    .line 10
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBatteryIndicationClickListener:Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;

    .line 13
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mContext:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final handlePowerIndicationAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    .line 27
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 29
    :cond_1
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [F

    .line 33
    fill-array-data v0, :array_0

    .line 35
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    .line 42
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 44
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    .line 52
    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$$ExternalSyntheticLambda0;

    .line 54
    invoke-direct {v1, p1}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    .line 62
    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;

    .line 64
    const/4 v2, 0x0

    .line 66
    invoke-direct {v1, p1, v2}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;-><init>(Landroid/widget/TextView;I)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    .line 73
    const-wide/16 v1, 0x1f4

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 84
    const/4 v4, 0x1

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x1

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x1

    .line 90
    const/high16 v9, 0x40000000    # 2.0f

    .line 91
    const/4 v10, 0x1

    .line 93
    const/4 v11, 0x0

    .line 94
    move-object v3, v0

    .line 95
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 96
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    .line 104
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    return-void

    .line 109
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 110
.end method
