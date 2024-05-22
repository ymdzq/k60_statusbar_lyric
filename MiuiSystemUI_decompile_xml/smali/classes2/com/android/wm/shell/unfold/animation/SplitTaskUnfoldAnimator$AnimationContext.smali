.class public final Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCurrentCropRect:Landroid/graphics/Rect;

.field public final mEndCropRect:Landroid/graphics/Rect;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public mStageType:I

.field public final mStartCropRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    .line 26
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    .line 29
    iput-object p2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->update()V

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public final update()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->this$0:Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStageBounds:Landroid/graphics/Rect;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStageBounds:Landroid/graphics/Rect;

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    iget-object v0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mExpandedTaskbarInsetsSource:Landroid/view/InsetsSource;

    .line 18
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    move v5, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v5, v4

    .line 26
    :goto_1
    if-eqz v5, :cond_2

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 33
    :cond_2
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 44
    move-result v6

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v0

    .line 51
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 52
    move-result v0

    .line 55
    int-to-float v0, v0

    .line 56
    const v6, 0x3d4ccccd    # 0.05f

    .line 57
    mul-float/2addr v0, v6

    .line 60
    float-to-int v0, v0

    .line 61
    iget-object v6, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mRootStageBounds:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 64
    move-result v6

    .line 67
    iget-object v7, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mRootStageBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 70
    move-result v7

    .line 73
    if-le v6, v7, :cond_3

    .line 74
    goto :goto_2

    .line 76
    :cond_3
    move v3, v4

    .line 77
    :goto_2
    if-eqz v3, :cond_7

    .line 78
    if-eqz v5, :cond_4

    .line 80
    move v3, v4

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move v3, v0

    .line 84
    :goto_3
    iget p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    .line 85
    if-nez p0, :cond_5

    .line 87
    iget p0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStagePosition:I

    .line 89
    goto :goto_4

    .line 91
    :cond_5
    iget p0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStagePosition:I

    .line 92
    :goto_4
    if-nez p0, :cond_6

    .line 94
    move p0, v4

    .line 96
    move v4, v0

    .line 97
    goto :goto_5

    .line 98
    :cond_6
    move p0, v0

    .line 99
    :goto_5
    invoke-static {v4, v0, p0, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 100
    move-result-object p0

    .line 103
    goto :goto_8

    .line 104
    :cond_7
    iget p0, p0, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator$AnimationContext;->mStageType:I

    .line 105
    if-nez p0, :cond_8

    .line 107
    iget p0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mMainStagePosition:I

    .line 109
    goto :goto_6

    .line 111
    :cond_8
    iget p0, v1, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->mSideStagePosition:I

    .line 112
    :goto_6
    if-nez p0, :cond_9

    .line 114
    move p0, v4

    .line 116
    move v4, v0

    .line 117
    goto :goto_7

    .line 118
    :cond_9
    if-eqz v5, :cond_a

    .line 119
    move p0, v4

    .line 121
    goto :goto_7

    .line 122
    :cond_a
    move p0, v0

    .line 123
    :goto_7
    invoke-static {v0, v4, v0, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 124
    move-result-object p0

    .line 127
    :goto_8
    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 128
    return-void
    .line 131
.end method
