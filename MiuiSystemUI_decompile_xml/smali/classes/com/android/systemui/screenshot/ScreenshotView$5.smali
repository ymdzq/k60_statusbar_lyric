.class public final Lcom/android/systemui/screenshot/ScreenshotView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotView;

.field public final synthetic val$bounds:Landroid/graphics/Rect;

.field public final synthetic val$cornerScale:F

.field public final synthetic val$finalPos:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$finalPos:Landroid/graphics/PointF;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$bounds:Landroid/graphics/Rect;

    .line 6
    iput p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$cornerScale:F

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 4
    const/16 p1, 0x36

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 8
    return-void
    .line 11
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 4
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;

    .line 6
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 24
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 26
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 28
    move-result p1

    .line 31
    int-to-float p1, p1

    .line 32
    const/high16 v1, 0x40000000    # 2.0f

    .line 33
    div-float/2addr p1, v1

    .line 35
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 36
    iget-boolean v2, v2, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    .line 38
    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$finalPos:Landroid/graphics/PointF;

    .line 42
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 44
    sub-float/2addr v2, p1

    .line 46
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$bounds:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 49
    move-result v3

    .line 52
    int-to-float v3, v3

    .line 53
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$cornerScale:F

    .line 54
    invoke-static {v3, v4, v1, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 56
    move-result v2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$finalPos:Landroid/graphics/PointF;

    .line 61
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 63
    sub-float/2addr v2, p1

    .line 65
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$bounds:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v3

    .line 71
    int-to-float v3, v3

    .line 72
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$cornerScale:F

    .line 73
    invoke-static {v3, v4, v1, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 75
    move-result v2

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 79
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 81
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 83
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 86
    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 88
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$finalPos:Landroid/graphics/PointF;

    .line 90
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 92
    sub-float/2addr v3, p1

    .line 94
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$bounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 97
    move-result p1

    .line 100
    int-to-float p1, p1

    .line 101
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$cornerScale:F

    .line 102
    mul-float/2addr p1, v4

    .line 104
    div-float/2addr p1, v1

    .line 105
    sub-float/2addr v3, p1

    .line 106
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 110
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 117
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 124
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$finalPos:Landroid/graphics/PointF;

    .line 128
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 130
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    .line 132
    move-result v2

    .line 135
    int-to-float v2, v2

    .line 136
    div-float/2addr v2, v1

    .line 137
    sub-float/2addr v0, v2

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 142
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->val$finalPos:Landroid/graphics/PointF;

    .line 146
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 148
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    .line 150
    move-result v2

    .line 153
    int-to-float v2, v2

    .line 154
    div-float/2addr v2, v1

    .line 155
    sub-float/2addr v0, v2

    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 157
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 160
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 165
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 167
    const/16 v0, 0x36

    .line 169
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 171
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotActionsShadeAnimation()Landroid/animation/ValueAnimator;

    .line 176
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void
    .line 183
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 4
    const/16 v0, 0x36

    .line 6
    invoke-static {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 8
    move-result-object p1

    .line 11
    const-string v0, "DropIn"

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 14
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 22
    return-void
    .line 25
.end method
