.class public final Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final synthetic $isRTL:Z

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/ManageEducationView;ZLcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->$isRTL:Z

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->access$getManageButton(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/widget/Button;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;

    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 10
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 12
    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 20
    invoke-static {v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->access$getGotItButton(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/widget/Button;

    .line 22
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$2;

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 28
    const/4 v3, 0x0

    .line 30
    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;I)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 37
    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$2;

    .line 39
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;I)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    .line 48
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 53
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->access$getManageButton(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/widget/Button;

    .line 55
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/Button;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 59
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 62
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->access$getManageView(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/view/ViewGroup;

    .line 64
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 68
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/ManageEducationView;->access$getManageButton(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/widget/Button;

    .line 70
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 74
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->$isRTL:Z

    .line 77
    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 81
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 83
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 85
    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLandscape()Z

    .line 89
    move-result v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 95
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 97
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 99
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 101
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    .line 103
    move-result v3

    .line 106
    sub-int/2addr v2, v3

    .line 107
    int-to-float v2, v2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 113
    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 119
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    .line 121
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 123
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 125
    sub-int/2addr v2, v0

    .line 127
    int-to-float v0, v2

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 132
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 137
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 139
    move-result-object v0

    .line 142
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 143
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->ANIMATE_DURATION:J

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 147
    move-result-object p0

    .line 150
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 153
    move-result-object p0

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 159
    return-void
    .line 162
.end method
