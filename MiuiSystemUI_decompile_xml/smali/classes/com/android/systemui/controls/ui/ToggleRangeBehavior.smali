.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;

.field public colorOffset:I

.field public context:Landroid/content/Context;

.field public control:Landroid/service/controls/Control;

.field public currentRangeValue:Ljava/lang/String;

.field public currentStatusText:Ljava/lang/CharSequence;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public isChecked:Z

.field public isToggleable:Z

.field public rangeAnimator:Landroid/animation/ValueAnimator;

.field public rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

.field public templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    .line 7
    iput p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->colorOffset:I

    .line 9
    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 17
    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 27
    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 37
    const v1, 0x7f0a01f5    # @id/clip_layer

    .line 39
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    .line 48
    if-eqz p1, :cond_0

    .line 50
    move-object v0, p1

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z

    .line 57
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    .line 74
    move-result p1

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    .line 82
    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 86
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    .line 90
    move-result v1

    .line 93
    const/4 v2, 0x0

    .line 94
    const v3, 0x461c4000    # 10000.0f

    .line 95
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 98
    move-result p1

    .line 101
    float-to-int p1, p1

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 103
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 109
    move-result-object p1

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 113
    const/4 v1, 0x1

    .line 115
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 119
    move-result-object p1

    .line 122
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 123
    new-instance p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;

    .line 125
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 130
    return-void
    .line 133
.end method

.method public final endUpdateRange()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 15
    const v2, 0x7f070222    # @dimen/control_status_normal '14.0sp'

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " "

    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 62
    move-result-object v0

    .line 65
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 72
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/service/controls/templates/RangeTemplate;->getTemplateId()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 80
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 84
    move-result v5

    .line 87
    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 88
    move-result v5

    .line 91
    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->findNearestStep(F)F

    .line 92
    move-result v5

    .line 95
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    .line 98
    move-result v6

    .line 101
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 102
    check-cast v7, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    .line 104
    invoke-virtual {v7, v1, v6}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    .line 106
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 109
    move-result-object v6

    .line 112
    iget-object v6, v6, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 113
    iget-object v6, v6, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 115
    new-instance v7, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;

    .line 117
    invoke-direct {v7, v1, v4, v5}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;F)V

    .line 119
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 122
    move-result-object v1

    .line 125
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 126
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/service/controls/Control;->isAuthRequired()Z

    .line 130
    move-result v3

    .line 133
    :cond_1
    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    .line 134
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 141
    move-result-object p0

    .line 144
    iput-boolean v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    .line 145
    return-void
    .line 147
.end method

.method public final findNearestStep(F)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    .line 6
    move-result v0

    .line 9
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    .line 17
    move-result v2

    .line 20
    cmpg-float v2, v0, v2

    .line 21
    if-gtz v2, :cond_1

    .line 23
    sub-float v2, p1, v0

    .line 25
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 27
    move-result v2

    .line 30
    cmpg-float v1, v2, v1

    .line 31
    if-gez v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    .line 39
    move-result v1

    .line 42
    add-float/2addr v0, v1

    .line 43
    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    .line 50
    move-result p0

    .line 53
    sub-float/2addr v0, p0

    .line 54
    return v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    .line 60
    move-result p0

    .line 63
    return p0
    .line 64
.end method

.method public final format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->findNearestStep(F)F

    .line 5
    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    const-string v0, "ControlsUiController"

    .line 26
    const-string v1, "Illegal format in range template"

    .line 28
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const-string p1, ""

    .line 33
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    move-object p0, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    :goto_0
    return-object p0
    .line 47
.end method

.method public final getClipLayer()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    .line 6
    new-instance v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/View;)V

    .line 12
    new-instance v1, Landroid/view/GestureDetector;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 23
    new-instance v2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;

    .line 26
    invoke-direct {v2, v1, v0, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;-><init>(Landroid/view/GestureDetector;Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    return-void
    .line 34
.end method

.method public final levelToRangeValue(I)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    .line 14
    move-result p0

    .line 17
    const v1, 0x461c4000    # 10000.0f

    .line 18
    int-to-float p1, p1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, p0, v2, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public final setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    .line 7
    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleRangeTemplate;->getRange()Landroid/service/controls/templates/RangeTemplate;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    .line 13
    iput-boolean v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    .line 15
    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleRangeTemplate;->isChecked()Z

    .line 17
    move-result p1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p1, Landroid/service/controls/templates/RangeTemplate;

    .line 24
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Landroid/service/controls/templates/RangeTemplate;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    .line 37
    move-result p1

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    .line 45
    move-result v0

    .line 48
    cmpg-float p1, p1, v0

    .line 49
    if-nez p1, :cond_1

    .line 51
    move v2, v1

    .line 53
    :cond_1
    xor-int/lit8 p1, v2, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    instance-of v0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 63
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z

    .line 69
    move-result v1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "Unsupported template type: "

    .line 76
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    const-string p1, "ControlsUiController"

    .line 88
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move v1, v2

    .line 93
    :goto_0
    return v1
    .line 94
.end method

.method public final updateRange(IZZ)V
    .locals 5

    .line 1
    const/16 v0, 0x2710

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result p1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 17
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    if-lez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 25
    move-result-object v2

    .line 28
    iget v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->colorOffset:I

    .line 29
    invoke-virtual {v2, v3, p2, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    .line 34
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    :cond_1
    const/4 v2, 0x1

    .line 41
    if-eqz p3, :cond_5

    .line 42
    if-eqz p1, :cond_3

    .line 44
    if-ne p1, v0, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    move v0, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    move v0, v2

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 56
    move-result v3

    .line 59
    if-eq v3, p1, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 62
    move-result-object v3

    .line 65
    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 66
    check-cast v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 73
    if-eqz v0, :cond_4

    .line 75
    sget-object v0, Lcom/android/systemui/controls/ui/Vibrations;->rangeEdgeEffect:Landroid/os/VibrationEffect;

    .line 77
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 79
    goto :goto_2

    .line 82
    :cond_4
    sget-object v0, Lcom/android/systemui/controls/ui/Vibrations;->rangeMiddleEffect:Landroid/os/VibrationEffect;

    .line 83
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 85
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 88
    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 92
    goto :goto_3

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 100
    move-result v0

    .line 103
    if-eq p1, v0, :cond_6

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 106
    move-result-object v0

    .line 109
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 110
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    .line 112
    move-result v0

    .line 115
    filled-new-array {v0, p1}, [I

    .line 116
    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 120
    move-result-object v0

    .line 123
    new-instance v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;

    .line 124
    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    new-instance v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;

    .line 132
    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    const-wide/16 v3, 0x2bc

    .line 140
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    sget-object v3, Lcom/android/app/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    .line 145
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 150
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    .line 153
    :cond_6
    :goto_3
    if-eqz p2, :cond_8

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 157
    move-result p1

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 161
    move-result-object p2

    .line 164
    invoke-virtual {p2}, Landroid/service/controls/templates/RangeTemplate;->getFormatString()Ljava/lang/CharSequence;

    .line 165
    move-result-object p2

    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    move-result-object p2

    .line 172
    const-string v0, "%.1f"

    .line 173
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    .line 179
    if-eqz p3, :cond_7

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 183
    move-result-object p1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    .line 187
    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 189
    goto :goto_4

    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 193
    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    .line 197
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    const-string p2, " "

    .line 209
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 220
    sget-object p2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 221
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 223
    goto :goto_4

    .line 226
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 227
    move-result-object p1

    .line 230
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    .line 231
    sget-object p2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 233
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 235
    :goto_4
    return-void
    .line 238
.end method
