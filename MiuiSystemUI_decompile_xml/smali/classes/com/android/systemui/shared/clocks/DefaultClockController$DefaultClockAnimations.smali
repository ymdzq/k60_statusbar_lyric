.class public Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ClockAnimations;


# instance fields
.field public final dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

.field public final foldState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

.field public final view:Lcom/android/systemui/shared/clocks/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 5
    new-instance v0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 7
    invoke-direct {v0, p2}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;-><init>(F)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 12
    new-instance p2, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 14
    invoke-direct {p2, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;-><init>(F)V

    .line 16
    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->foldState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 19
    iget-boolean p0, p2, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 21
    const/4 p2, 0x0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateFoldAppear(Z)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean p0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 30
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateDoze(ZZ)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method


# virtual methods
.method public final charge()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 7
    iget-object p0, v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 9
    if-eqz p0, :cond_3

    .line 11
    iget-object p0, p0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 13
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 22
    if-eqz v2, :cond_1

    .line 24
    sget-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 26
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 28
    const-string v5, "animateCharge"

    .line 30
    const/4 v6, 0x0

    .line 32
    const/16 v7, 0x8

    .line 33
    const/4 v8, 0x0

    .line 35
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 36
    :cond_1
    new-instance v9, Lcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;

    .line 39
    invoke-direct {v9, v1, v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;Lkotlin/jvm/functions/Function0;)V

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;->invoke()Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    .line 56
    move-result p0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDozingWeight()I

    .line 61
    move-result p0

    .line 64
    :goto_0
    move v2, p0

    .line 65
    const/4 v3, 0x0

    .line 66
    iget-boolean v4, v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 67
    const-wide/16 v5, 0x1f4

    .line 69
    iget p0, v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->chargeAnimationDelay:I

    .line 71
    int-to-long v7, p0

    .line 73
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    .line 74
    :cond_3
    :goto_1
    return-void
    .line 77
.end method

.method public final doze(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->update(F)Lkotlin/Pair;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    iget-boolean v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 30
    xor-int/lit8 p1, p1, 0x1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateDoze(ZZ)V

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public final enter()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 14
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 16
    const-string v3, "animateAppearOnLockscreen"

    .line 18
    const/4 v4, 0x0

    .line 20
    const/16 v5, 0x8

    .line 21
    const/4 v6, 0x0

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDozingWeight()I

    .line 27
    move-result v2

    .line 30
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    const-wide/16 v7, 0x0

    .line 40
    const/4 v9, 0x0

    .line 42
    move-object v1, p0

    .line 43
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    .line 47
    move-result v2

    .line 50
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    .line 51
    iget-boolean v4, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 53
    sget-object v5, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v3

    .line 60
    const-wide/16 v6, 0x341

    .line 61
    const-wide/16 v8, 0x0

    .line 63
    const/4 v10, 0x0

    .line 65
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    .line 66
    :cond_1
    return-void
    .line 69
.end method

.method public final fold(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->foldState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->update(F)Lkotlin/Pair;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    xor-int/lit8 p1, p1, 0x1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateFoldAppear(Z)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public final onPickerCarouselSwiping(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getBottom()F

    .line 6
    move-result v1

    .line 9
    mul-float/2addr v1, v0

    .line 10
    const/4 v0, 0x1

    .line 11
    int-to-float v0, v0

    .line 12
    sub-float/2addr v0, p1

    .line 13
    mul-float/2addr v0, v1

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 15
    return-void
    .line 18
.end method

.method public onPositionUpdated(IIF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
