.class public final Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12

    .line 1
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto/16 :goto_6

    .line 9
    :pswitch_0
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 11
    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 13
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 15
    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 23
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 26
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 28
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 31
    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;

    .line 33
    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 35
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    move-result-object p1

    .line 52
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 53
    const/high16 v1, 0x40800000    # 4.0f

    .line 55
    mul-float/2addr p1, v1

    .line 57
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 58
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    .line 60
    const/4 v3, 0x2

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eq v2, v4, :cond_3

    .line 64
    if-ne v2, v3, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 68
    move-result v2

    .line 71
    if-ne v2, v4, :cond_1

    .line 72
    move v2, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v2, v0

    .line 76
    :goto_0
    if-eqz v2, :cond_2

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    move v2, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    move v2, v4

    .line 82
    :goto_2
    iget v5, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 83
    const/16 v6, 0x10

    .line 85
    if-eq v5, v6, :cond_8

    .line 87
    const/16 v6, 0x20

    .line 89
    if-eq v5, v6, :cond_6

    .line 91
    const/16 v6, 0x40

    .line 93
    if-eq v5, v6, :cond_4

    .line 95
    goto :goto_3

    .line 97
    :cond_4
    if-nez v2, :cond_5

    .line 98
    neg-float p1, p1

    .line 100
    :cond_5
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 101
    goto :goto_3

    .line 103
    :cond_6
    if-eqz v2, :cond_7

    .line 104
    neg-float p1, p1

    .line 106
    :cond_7
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 107
    goto :goto_3

    .line 109
    :cond_8
    neg-float p1, p1

    .line 110
    :goto_3
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 111
    const/4 v5, 0x3

    .line 113
    new-array v6, v5, [F

    .line 114
    const/4 v7, 0x0

    .line 116
    aput v7, v6, v0

    .line 117
    aput p1, v6, v4

    .line 119
    aput v7, v6, v3

    .line 121
    invoke-static {v2, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 123
    move-result-object v2

    .line 126
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 127
    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 129
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    const-wide/16 v8, 0x4b0

    .line 135
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 137
    iget-boolean v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 140
    const/16 v10, 0x8

    .line 142
    const/4 v11, -0x1

    .line 144
    if-eqz v6, :cond_9

    .line 145
    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 147
    goto :goto_4

    .line 150
    :cond_9
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 151
    :goto_4
    new-instance v6, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;

    .line 154
    invoke-direct {v6, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    .line 156
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 162
    new-array v5, v5, [F

    .line 164
    aput v7, v5, v0

    .line 166
    aput p1, v5, v4

    .line 168
    aput v7, v5, v3

    .line 170
    invoke-static {v6, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 172
    move-result-object p1

    .line 175
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 176
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 178
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    invoke-virtual {p1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 187
    if-eqz v0, :cond_a

    .line 189
    invoke-virtual {p1, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 191
    goto :goto_5

    .line 194
    :cond_a
    invoke-virtual {p1, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 195
    :goto_5
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 198
    filled-new-array {v2, p1}, [Landroid/animation/Animator;

    .line 200
    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 204
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 207
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 209
    :cond_b
    return-void

    .line 212
    :goto_6
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 213
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    .line 215
    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 217
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 219
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 221
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 226
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
