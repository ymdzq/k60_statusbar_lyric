.class public final synthetic Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 9
    new-instance v2, Landroid/graphics/Path;

    .line 10
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 15
    move-result v3

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 19
    move-result v4

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 23
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 26
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 28
    move-result-object v3

    .line 31
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 32
    invoke-virtual {v4, p1, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 34
    move-result-object v3

    .line 37
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$1:Z

    .line 38
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 43
    move-result v6

    .line 46
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 47
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 52
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 54
    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 60
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 62
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 64
    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 69
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 71
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result v7

    .line 76
    int-to-float v7, v7

    .line 77
    iget v8, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    .line 78
    mul-float/2addr v7, v8

    .line 80
    add-float/2addr v7, v3

    .line 81
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    :goto_0
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$2:Z

    .line 85
    const/4 v6, 0x0

    .line 87
    if-nez v3, :cond_3

    .line 88
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;->f$3:Z

    .line 90
    if-nez p0, :cond_1

    .line 92
    goto :goto_1

    .line 94
    :cond_1
    if-eqz v4, :cond_2

    .line 95
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 99
    move-result v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    .line 103
    move-result p0

    .line 106
    if-nez p0, :cond_5

    .line 107
    :cond_2
    if-nez v4, :cond_6

    .line 109
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 111
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 113
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    .line 117
    move-result p0

    .line 120
    if-nez p0, :cond_6

    .line 121
    goto :goto_2

    .line 123
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 124
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 128
    move-result v1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    .line 132
    move-result p0

    .line 135
    if-eqz p0, :cond_5

    .line 136
    :cond_4
    if-nez v4, :cond_6

    .line 138
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 140
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 142
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    .line 146
    move-result p0

    .line 149
    if-eqz p0, :cond_6

    .line 150
    :cond_5
    :goto_2
    move p0, v5

    .line 152
    goto :goto_3

    .line 153
    :cond_6
    move p0, v6

    .line 154
    :goto_3
    if-eqz p0, :cond_7

    .line 155
    mul-int/lit8 v1, p1, 0xa

    .line 157
    goto :goto_4

    .line 159
    :cond_7
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 160
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 162
    move-result v1

    .line 165
    sub-int/2addr v1, p1

    .line 166
    mul-int/lit8 v1, v1, 0xa

    .line 167
    :goto_4
    if-eqz p0, :cond_8

    .line 169
    if-eqz p1, :cond_9

    .line 171
    :cond_8
    if-nez p0, :cond_a

    .line 173
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 177
    move-result p0

    .line 180
    sub-int/2addr p0, v5

    .line 181
    if-ne p1, p0, :cond_a

    .line 182
    :cond_9
    move p0, v5

    .line 184
    goto :goto_5

    .line 185
    :cond_a
    move p0, v6

    .line 186
    :goto_5
    if-eqz v4, :cond_b

    .line 187
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 189
    goto :goto_6

    .line 191
    :cond_b
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 192
    :goto_6
    const/4 v3, 0x2

    .line 194
    new-array v4, v3, [Ljava/lang/Runnable;

    .line 195
    if-eqz p0, :cond_c

    .line 197
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    .line 199
    goto :goto_7

    .line 201
    :cond_c
    const/4 p0, 0x0

    .line 202
    :goto_7
    aput-object p0, v4, v6

    .line 203
    new-instance p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda0;

    .line 205
    invoke-direct {p0, v3, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 207
    aput-object p0, v4, v5

    .line 210
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 212
    if-eqz p0, :cond_d

    .line 214
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 216
    :cond_d
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathXProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    .line 219
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathYProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    .line 221
    invoke-static {p2, p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 223
    move-result-object p0

    .line 226
    iput-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 227
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$3;

    .line 229
    invoke-direct {v0, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$3;-><init>([Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 237
    const/16 v0, 0xaf

    .line 239
    int-to-long v2, v0

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 245
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 250
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 252
    check-cast p0, Ljava/util/HashMap;

    .line 254
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 259
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    .line 264
    check-cast p0, Ljava/util/HashMap;

    .line 266
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 274
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 276
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 281
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    int-to-long p0, v1

    .line 286
    iput-wide p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    .line 287
    const/high16 p0, 0x43c80000    # 400.0f

    .line 289
    iput p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 291
    return-void
.end method
