.class public final Lcom/android/wm/shell/bubbles/StackEducationView$show$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $stackPadding:I

.field public final synthetic $stackPosition:Landroid/graphics/PointF;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;ILandroid/graphics/PointF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->$stackPadding:I

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->$stackPosition:Landroid/graphics/PointF;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 7
    invoke-static {v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$getView(Lcom/android/wm/shell/bubbles/StackEducationView;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 13
    iget v2, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->$stackPadding:I

    .line 15
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->$stackPosition:Landroid/graphics/PointF;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 27
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 33
    iget v4, v4, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 35
    add-int/2addr v4, v2

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    move-result v2

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    move-result v5

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    move-result v6

    .line 49
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 54
    move-result v4

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v5

    .line 61
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 62
    iget v6, v6, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 64
    add-int/2addr v6, v2

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 67
    move-result v7

    .line 70
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 74
    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 76
    if-nez v5, :cond_2

    .line 78
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLandscape()Z

    .line 80
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 92
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 94
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 98
    move-result v5

    .line 101
    sub-int/2addr v4, v5

    .line 102
    sub-int/2addr v4, v2

    .line 103
    int-to-float v2, v4

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    :goto_1
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 108
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 110
    iget v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 112
    div-int/lit8 v1, v1, 0x2

    .line 114
    int-to-float v1, v1

    .line 116
    add-float/2addr v2, v1

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 118
    move-result v1

    .line 121
    div-int/lit8 v1, v1, 0x2

    .line 122
    int-to-float v1, v1

    .line 124
    sub-float/2addr v2, v1

    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 129
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 131
    move-result-object v0

    .line 134
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 135
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION:J

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 139
    move-result-object p0

    .line 142
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 143
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 145
    move-result-object p0

    .line 148
    const/high16 v0, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 151
    return-void
    .line 154
.end method
