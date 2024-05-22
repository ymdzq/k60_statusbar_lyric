.class public final synthetic Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;->f$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$$ExternalSyntheticLambda0;->f$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 2
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 4
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 11
    move-result p1

    .line 14
    const/16 v1, 0x1002

    .line 15
    if-ne p1, v1, :cond_1

    .line 17
    goto/16 :goto_1

    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    move-result p1

    .line 24
    const/16 v1, 0x9

    .line 25
    const-string v2, "scaleY"

    .line 27
    const-string v3, "scaleX"

    .line 29
    const-string v4, "alpha"

    .line 31
    const/high16 v5, 0x3f800000    # 1.0f

    .line 33
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 35
    const-wide/16 v7, 0x15e

    .line 37
    const/4 v9, 0x2

    .line 39
    const/4 v10, 0x1

    .line 40
    if-eq p1, v1, :cond_5

    .line 41
    const/16 v1, 0xa

    .line 43
    if-eq p1, v1, :cond_2

    .line 45
    goto/16 :goto_0

    .line 47
    :cond_2
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 49
    if-eqz p1, :cond_3

    .line 51
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 53
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 55
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 57
    iget-object v1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 59
    new-array v11, v9, [F

    .line 61
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScaleX()F

    .line 63
    move-result v12

    .line 66
    aput v12, v11, v0

    .line 67
    aput v5, v11, v10

    .line 69
    invoke-static {v1, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    move-result-object v1

    .line 74
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 75
    new-array v3, v9, [F

    .line 77
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScaleY()F

    .line 79
    move-result v11

    .line 82
    aput v11, v3, v0

    .line 83
    aput v5, v3, v10

    .line 85
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 87
    move-result-object p1

    .line 90
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 91
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    filled-new-array {v1, p1}, [Landroid/animation/Animator;

    .line 96
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 100
    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 103
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 106
    invoke-direct {p1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 108
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 114
    :cond_3
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 119
    move-result v1

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 123
    move-result p0

    .line 126
    int-to-float p0, p0

    .line 127
    add-float/2addr v1, p0

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 129
    move-result p0

    .line 132
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 133
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 135
    iget p2, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 137
    int-to-float p2, p2

    .line 139
    cmpg-float p2, v1, p2

    .line 140
    const/4 v2, 0x0

    .line 142
    if-ltz p2, :cond_4

    .line 143
    cmpg-float p2, p0, v2

    .line 145
    if-ltz p2, :cond_4

    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    .line 149
    move-result p2

    .line 152
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    .line 153
    move-result v3

    .line 156
    sub-int/2addr p2, v3

    .line 157
    iget v3, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 158
    mul-int/2addr v3, v9

    .line 160
    sub-int/2addr p2, v3

    .line 161
    int-to-float p2, p2

    .line 162
    cmpl-float p2, v1, p2

    .line 163
    if-gtz p2, :cond_4

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    .line 167
    move-result p2

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    .line 171
    move-result v1

    .line 174
    sub-int/2addr p2, v1

    .line 175
    iget v1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mPadding:I

    .line 176
    mul-int/2addr v1, v9

    .line 178
    sub-int/2addr p2, v1

    .line 179
    int-to-float p2, p2

    .line 180
    cmpl-float p0, p0, p2

    .line 181
    if-lez p0, :cond_7

    .line 183
    :cond_4
    iget-object p0, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 185
    new-array p1, v9, [F

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 189
    move-result p2

    .line 192
    aput p2, p1, v0

    .line 193
    aput v2, p1, v10

    .line 195
    invoke-static {p0, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 197
    move-result-object p0

    .line 200
    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 201
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 204
    invoke-direct {p1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 206
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 212
    goto :goto_0

    .line 215
    :cond_5
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 216
    if-eqz p1, :cond_6

    .line 218
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 220
    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 222
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 224
    iget-object p2, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 226
    new-array v1, v9, [F

    .line 228
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScaleX()F

    .line 230
    move-result v11

    .line 233
    aput v11, v1, v0

    .line 234
    const v11, 0x3f866666    # 1.05f

    .line 236
    aput v11, v1, v10

    .line 239
    invoke-static {p2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 241
    move-result-object p2

    .line 244
    iget-object p1, p1, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 245
    new-array v1, v9, [F

    .line 247
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScaleY()F

    .line 249
    move-result v3

    .line 252
    aput v3, v1, v0

    .line 253
    aput v11, v1, v10

    .line 255
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 257
    move-result-object p1

    .line 260
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 261
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 263
    filled-new-array {p2, p1}, [Landroid/animation/Animator;

    .line 266
    move-result-object p1

    .line 269
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 270
    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 273
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 276
    invoke-direct {p1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 278
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 284
    :cond_6
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    .line 287
    check-cast p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 289
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 291
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mHoverBgView:Landroid/view/View;

    .line 293
    new-array p1, v9, [F

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 297
    move-result p2

    .line 300
    aput p2, p1, v0

    .line 301
    aput v5, p1, v10

    .line 303
    invoke-static {p0, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 305
    move-result-object p0

    .line 308
    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 312
    invoke-direct {p1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 314
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 320
    :cond_7
    :goto_0
    move v0, v10

    .line 323
    :goto_1
    return v0
    .line 324
.end method
