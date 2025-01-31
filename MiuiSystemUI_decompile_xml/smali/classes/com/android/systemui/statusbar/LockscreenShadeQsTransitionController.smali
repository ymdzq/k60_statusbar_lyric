.class public final Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;
.super Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isTransitioningToFullShade:Z

.field public qsDragDownAmount:F

.field public final qsProvider:Lkotlin/jvm/functions/Function0;

.field public qsSquishStartFraction:F

.field public qsSquishTransitionDistance:I

.field public qsSquishTransitionFraction:F

.field public qsTransitionDistance:I

.field public qsTransitionFraction:F

.field public qsTransitionStartDelay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;)V

    .line 2
    iput-object p4, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsProvider:Lkotlin/jvm/functions/Function0;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionDistance:I

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionStartDelay:I

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionDistance:I

    .line 6
    iget v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishStartFraction:F

    .line 8
    iget v4, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    .line 10
    iget v5, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    .line 12
    iget v6, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    .line 14
    iget v7, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    .line 18
    const-string v8, "\n            Resources:\n              qsTransitionDistance: "

    .line 20
    const-string v9, "\n              qsTransitionStartDelay: "

    .line 22
    const-string v10, "\n              qsSquishTransitionDistance: "

    .line 24
    invoke-static {v8, v0, v9, v1, v10}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "\n              qsSquishStartFraction: "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "\n            State:\n              dragDownAmount: "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "\n              qsDragDownAmount: "

    .line 46
    const-string v2, "\n              qsDragFraction: "

    .line 48
    invoke-static {v0, v4, v1, v5, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 50
    const-string v1, "\n              qsSquishFraction: "

    .line 53
    const-string v2, "\n              isTransitioningToFullShade: "

    .line 55
    invoke-static {v0, v6, v1, v7, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string p0, "\n        "

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void
    .line 79
.end method

.method public final onDragDownAmountChanged(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionStartDelay:I

    .line 2
    int-to-float v0, v0

    .line 4
    sub-float v0, p1, v0

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    .line 7
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionDistance:I

    .line 9
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishStartFraction:F

    .line 19
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    .line 21
    iget v2, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionDistance:I

    .line 23
    int-to-float v2, v2

    .line 25
    div-float/2addr v1, v2

    .line 26
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    .line 27
    move-result v1

    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    .line 37
    const/4 v0, 0x0

    .line 39
    cmpl-float p1, p1, v0

    .line 40
    if-lez p1, :cond_0

    .line 42
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsProvider:Lkotlin/jvm/functions/Function0;

    .line 49
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    .line 57
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    .line 59
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    .line 61
    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/plugins/qs/QS;->setTransitionToFullShadeProgress(ZFF)V

    .line 63
    return-void
    .line 66
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f070639    # @dimen/lockscreen_shade_qs_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionDistance:I

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x7f070638    # @dimen/lockscreen_shade_qs_transition_delay '0.0dp'

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionStartDelay:I

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 33
    const v2, 0x7f070637    # @dimen/lockscreen_shade_qs_squish_transition_distance '@dimen/lockscreen_shade_qs_transition_distance'

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionDistance:I

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v0

    .line 46
    const v1, 0x7f070636    # @dimen/lockscreen_shade_qs_squish_start_fraction '0.5'

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 50
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishStartFraction:F

    .line 54
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    .line 56
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 58
    move-result v0

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    .line 62
    return-void
    .line 64
.end method
