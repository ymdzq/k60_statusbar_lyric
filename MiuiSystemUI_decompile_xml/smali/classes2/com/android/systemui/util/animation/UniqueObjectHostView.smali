.class public final Lcom/android/systemui/util/animation/UniqueObjectHostView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public measurementManager:Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;

.field public slidingPaddings:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    mul-int/lit8 p1, p1, 0x2

    .line 16
    iput p1, p0, Lcom/android/systemui/util/animation/UniqueObjectHostView;->slidingPaddings:I

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    const v0, 0x7f0a079a    # @id/requires_remeasuring

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 37
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 46
    move-result p2

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 50
    move-result p3

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    .line 54
    move-result v0

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    .line 58
    move-result v1

    .line 61
    add-int/2addr v1, v0

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 63
    move-result v0

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 67
    move-result v2

    .line 70
    add-int/2addr v2, v0

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 72
    move-result v0

    .line 75
    add-int/2addr v0, p2

    .line 76
    sub-int/2addr v0, v1

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 78
    move-result p0

    .line 81
    add-int/2addr p0, p3

    .line 82
    sub-int/2addr p0, v2

    .line 83
    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/View;->layout(IIII)V

    .line 84
    return-void

    .line 87
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void

    .line 91
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    const-string p1, "child must be non-null"

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
    .line 99
.end method

.method public final getMeasurementManager()Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/animation/UniqueObjectHostView;->measurementManager:Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;

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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    const v0, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p1

    .line 19
    mul-int/lit8 p1, p1, 0x2

    .line 20
    iput p1, p0, Lcom/android/systemui/util/animation/UniqueObjectHostView;->slidingPaddings:I

    .line 22
    return-void
    .line 24
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    .line 6
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget v0, p0, Lcom/android/systemui/util/animation/UniqueObjectHostView;->slidingPaddings:I

    .line 11
    add-int/2addr v1, v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 18
    move-result v2

    .line 21
    add-int/2addr v2, v0

    .line 22
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 23
    move-result v0

    .line 26
    sub-int/2addr v0, v1

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 28
    move-result v3

    .line 31
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result v0

    .line 35
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result v3

    .line 39
    sub-int/2addr v3, v2

    .line 40
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 41
    move-result v4

    .line 44
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    move-result v3

    .line 48
    new-instance v4, Lcom/android/systemui/util/animation/MeasurementInput;

    .line 49
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/util/animation/MeasurementInput;-><init>(II)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;->getMeasurementManager()Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Lcom/android/systemui/media/controls/ui/MediaHost$init$2;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget v3, v4, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    .line 63
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 65
    move-result v3

    .line 68
    const/high16 v5, -0x80000000

    .line 69
    if-ne v3, v5, :cond_0

    .line 71
    iget v3, v4, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    .line 73
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 75
    move-result v3

    .line 78
    const/high16 v5, 0x40000000    # 2.0f

    .line 79
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 81
    move-result v3

    .line 84
    iput v3, v4, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    .line 85
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost$init$2;->this$0:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 87
    iget-object v5, v3, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 89
    iget-object v6, v5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 91
    invoke-virtual {v4, v6}, Lcom/android/systemui/util/animation/MeasurementInput;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v6

    .line 96
    const/4 v7, 0x1

    .line 97
    const/4 v8, 0x0

    .line 98
    if-ne v6, v7, :cond_1

    .line 99
    move v6, v7

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move v6, v8

    .line 103
    :goto_0
    if-nez v6, :cond_2

    .line 104
    iput-object v4, v5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 106
    iget-object v4, v5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 108
    if-eqz v4, :cond_3

    .line 110
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 112
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    :cond_3
    :goto_1
    iget v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$init$2;->$location:I

    .line 119
    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 121
    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 123
    invoke-virtual {v4, v0, v3}, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 125
    move-result-object v0

    .line 128
    iget v3, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 129
    iget v0, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 133
    move-result v4

    .line 136
    if-eqz v4, :cond_4

    .line 137
    goto :goto_2

    .line 139
    :cond_4
    move v7, v8

    .line 140
    :goto_2
    if-eqz v7, :cond_6

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 143
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 146
    move-result-object p1

    .line 149
    if-nez p1, :cond_5

    .line 150
    goto :goto_3

    .line 152
    :cond_5
    invoke-static {p1, v8}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 153
    :cond_6
    :goto_3
    add-int/2addr v3, v1

    .line 156
    add-int/2addr v0, v2

    .line 157
    invoke-virtual {p0, v3, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 158
    return-void
    .line 161
.end method

.method public final setMeasurementManager(Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/animation/UniqueObjectHostView;->measurementManager:Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;

    .line 2
    return-void
    .line 4
.end method
