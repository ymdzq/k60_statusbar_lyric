.class public final Lcom/android/systemui/qs/QSTileRevealController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileRevealController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileRevealController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/QSTileRevealController;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 4
    new-instance v2, Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSTileRevealController$1;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p0, v0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 14
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_5

    .line 20
    iget-object v0, v1, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 27
    const/4 v3, 0x2

    .line 28
    if-lt v0, v3, :cond_5

    .line 29
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_5

    .line 35
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    .line 37
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    goto/16 :goto_1

    .line 43
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v0

    .line 50
    const/4 v3, 0x1

    .line 51
    sub-int/2addr v0, v3

    .line 52
    iget-object v4, v1, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 58
    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v4, v4, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v4

    .line 71
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v6

    .line 81
    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 82
    iget-object v7, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 84
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 86
    move-result-object v7

    .line 89
    invoke-virtual {p0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 90
    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v7

    .line 99
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 100
    const/4 v8, 0x0

    .line 102
    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    .line 103
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleX(F)V

    .line 106
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    .line 109
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 112
    new-array v9, v3, [F

    .line 114
    const/4 v10, 0x0

    .line 116
    const/high16 v11, 0x3f800000    # 1.0f

    .line 117
    aput v11, v9, v10

    .line 119
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 121
    move-result-object v8

    .line 124
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 125
    new-array v12, v3, [F

    .line 127
    aput v11, v12, v10

    .line 129
    invoke-static {v9, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 131
    move-result-object v9

    .line 134
    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 135
    new-array v13, v3, [F

    .line 137
    aput v11, v13, v10

    .line 139
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 141
    move-result-object v10

    .line 144
    filled-new-array {v8, v9, v10}, [Landroid/animation/PropertyValuesHolder;

    .line 145
    move-result-object v8

    .line 148
    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 149
    move-result-object v6

    .line 152
    const-wide/16 v8, 0x1c2

    .line 153
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    mul-int/lit8 v7, v7, 0x55

    .line 158
    int-to-long v7, v7

    .line 160
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 161
    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    .line 164
    const v8, 0x3fa66666    # 1.3f

    .line 166
    invoke-direct {v7, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 169
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 179
    move-result p0

    .line 182
    if-eqz p0, :cond_3

    .line 183
    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->endFakeDrag()V

    .line 185
    goto :goto_1

    .line 188
    :cond_3
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 189
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 191
    iput-object p0, v1, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    .line 194
    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 196
    iget-object p0, v1, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    .line 199
    new-instance v3, Lcom/android/systemui/qs/PagedTileLayout$1;

    .line 201
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/qs/PagedTileLayout$1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;)V

    .line 203
    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 209
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 212
    move-result p0

    .line 215
    mul-int/2addr p0, v0

    .line 216
    iget-object v2, v1, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 217
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    .line 219
    move-result v3

    .line 222
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    .line 223
    move-result v4

    .line 226
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 227
    move-result v0

    .line 230
    if-eqz v0, :cond_4

    .line 231
    neg-int p0, p0

    .line 233
    :cond_4
    move v5, p0

    .line 234
    const/4 v6, 0x0

    .line 235
    const/16 v7, 0x2ee

    .line 236
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 238
    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 241
    :cond_5
    :goto_1
    return-void
    .line 244
.end method
