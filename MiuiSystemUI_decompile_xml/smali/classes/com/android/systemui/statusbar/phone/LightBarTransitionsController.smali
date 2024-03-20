.class public final Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

.field public final mCallback:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mDarkIntensity:F

.field public final mDisplayId:I

.field public mDozeAmount:F

.field public final mHandler:Landroid/os/Handler;

.field public mNextDarkIntensity:F

.field public mPendingDarkIntensity:F

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mTintAnimator:Landroid/animation/ValueAnimator;

.field public mTintChangePending:Z

.field public mTransitionDeferring:Z

.field public final mTransitionDeferringDoneRunnable:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

.field public mTransitionDeferringDuration:J

.field public mTransitionDeferringStartTime:J

.field public mTransitionPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 12
    new-instance p2, Landroid/os/Handler;

    .line 14
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    .line 19
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 23
    new-instance p2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;

    .line 25
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    .line 27
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCallback:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Callback;

    .line 30
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 32
    invoke-interface {p4, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 35
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    .line 38
    move-result p2

    .line 41
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 44
    move-result p1

    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final animateIconTint(FJJ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 16
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [F

    .line 19
    const/4 v1, 0x0

    .line 21
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 22
    aput v2, v0, v1

    .line 24
    const/4 v1, 0x1

    .line 26
    aput p1, v0, v1

    .line 27
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 43
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 53
    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 55
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 60
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    return-void
    .line 65
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "  mTransitionDeferring="

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 9
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 12
    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 16
    const-string p2, "   mTransitionDeferringStartTime="

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 24
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string p2, "   mTransitionDeferringDuration="

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 38
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 43
    :cond_0
    const-string p2, "  mTransitionPending="

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 53
    const-string p2, " mTintChangePending="

    .line 56
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 63
    const-string p2, "  mPendingDarkIntensity="

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 73
    const-string p2, " mDarkIntensity="

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 81
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 83
    const-string p2, " mNextDarkIntensity="

    .line 86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 91
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(F)V

    .line 93
    return-void
    .line 96
.end method

.method public final setIconsDark(ZZ)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    const/4 v3, 0x0

    .line 6
    if-nez p2, :cond_2

    .line 7
    if-eqz p1, :cond_0

    .line 9
    move v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v4, v3

    .line 13
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 14
    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    .line 16
    invoke-static {v4, v3, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 18
    move-result v4

    .line 21
    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    .line 22
    if-eqz p1, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 29
    goto :goto_5

    .line 31
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 32
    if-eqz v4, :cond_5

    .line 34
    if-eqz p1, :cond_3

    .line 36
    goto :goto_2

    .line 38
    :cond_3
    move v2, v3

    .line 39
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 40
    if-eqz v1, :cond_4

    .line 42
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 44
    cmpl-float v1, v2, v1

    .line 46
    if-nez v1, :cond_4

    .line 48
    goto :goto_5

    .line 50
    :cond_4
    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 52
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 54
    goto :goto_5

    .line 56
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 57
    if-eqz v4, :cond_7

    .line 59
    if-eqz p1, :cond_6

    .line 61
    move v1, v2

    .line 63
    goto :goto_3

    .line 64
    :cond_6
    move v1, v3

    .line 65
    :goto_3
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    move-result-wide v4

    .line 71
    sub-long/2addr v2, v4

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 75
    move-result-wide v2

    .line 78
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 79
    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 82
    goto :goto_5

    .line 85
    :cond_7
    if-eqz p1, :cond_8

    .line 86
    goto :goto_4

    .line 88
    :cond_8
    move v2, v3

    .line 89
    :goto_4
    const-wide/16 v3, 0x0

    .line 90
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->getTintAnimationDuration()I

    .line 92
    move-result v1

    .line 95
    int-to-long v5, v1

    .line 96
    move-object v0, p0

    .line 97
    move v1, v2

    .line 98
    move-wide v2, v3

    .line 99
    move-wide v4, v5

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 101
    :goto_5
    return-void
    .line 104
.end method
