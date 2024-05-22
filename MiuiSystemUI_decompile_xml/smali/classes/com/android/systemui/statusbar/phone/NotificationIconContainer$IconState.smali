.class public final Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field public justReplaced:Z

.field public final mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

.field public final mView:Landroid/view/View;

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public visibleState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 11
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 14
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    .line 19
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    .line 21
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 14

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1b

    .line 5
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 10
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x2

    .line 13
    if-ne v2, v4, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    .line 16
    move-result v2

    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 22
    if-ne v2, v3, :cond_2

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    .line 26
    move-result v2

    .line 29
    if-ne v2, v4, :cond_2

    .line 30
    :cond_1
    move v2, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v2, v1

    .line 34
    :goto_0
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 35
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 37
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 39
    if-nez v6, :cond_4

    .line 41
    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 43
    if-ne v0, v6, :cond_3

    .line 45
    goto :goto_1

    .line 47
    :cond_3
    move v6, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    :goto_1
    move v6, v3

    .line 50
    :goto_2
    if-eqz v6, :cond_5

    .line 51
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 53
    if-nez v6, :cond_5

    .line 55
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 57
    if-nez v6, :cond_5

    .line 59
    if-nez v2, :cond_5

    .line 61
    iget-boolean v2, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDozing:Z

    .line 63
    if-nez v2, :cond_5

    .line 65
    iget-boolean v2, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAggregatedVisible:Z

    .line 67
    if-eqz v2, :cond_5

    .line 69
    move v2, v3

    .line 71
    goto :goto_3

    .line 72
    :cond_5
    move v2, v1

    .line 73
    :goto_3
    const/4 v6, 0x0

    .line 74
    if-eqz v2, :cond_15

    .line 75
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 77
    if-nez v7, :cond_7

    .line 79
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 81
    if-eqz v7, :cond_6

    .line 83
    goto :goto_4

    .line 85
    :cond_6
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    .line 88
    move-result v8

    .line 91
    if-eq v7, v8, :cond_8

    .line 92
    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 94
    goto :goto_5

    .line 96
    :cond_7
    :goto_4
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 97
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 100
    if-eqz v7, :cond_8

    .line 102
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 104
    const/4 v8, 0x0

    .line 106
    cmpl-float v7, v7, v8

    .line 107
    if-eqz v7, :cond_8

    .line 109
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 114
    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 117
    :goto_5
    move v8, v3

    .line 119
    goto :goto_6

    .line 120
    :cond_8
    move v8, v1

    .line 121
    move-object v7, v6

    .line 122
    :goto_6
    if-nez v8, :cond_a

    .line 123
    iget v9, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 125
    if-ltz v9, :cond_a

    .line 127
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 129
    move-result v9

    .line 132
    iget v10, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 133
    if-lt v9, v10, :cond_a

    .line 135
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    .line 137
    move-result v9

    .line 140
    if-ne v9, v4, :cond_9

    .line 141
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 143
    if-eq v9, v4, :cond_a

    .line 145
    :cond_9
    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 147
    move v8, v3

    .line 149
    :cond_a
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 150
    const-wide/16 v10, 0x64

    .line 152
    if-eqz v9, :cond_f

    .line 154
    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 156
    iget-object v9, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 158
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 160
    sget-object v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 163
    iget-object v13, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 165
    invoke-virtual {v9, v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 167
    iput-object v6, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 170
    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 172
    if-eqz v12, :cond_b

    .line 174
    new-instance v13, Landroid/util/ArrayMap;

    .line 176
    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 178
    iput-object v13, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 181
    iget-object v13, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 183
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 185
    :cond_b
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    .line 188
    if-eqz v12, :cond_c

    .line 190
    sget-object v12, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    .line 192
    goto :goto_7

    .line 194
    :cond_c
    sget-object v12, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 195
    :goto_7
    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 197
    invoke-virtual {v8, v13, v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    .line 199
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    .line 202
    iput-object v12, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 204
    if-eqz v7, :cond_e

    .line 206
    iget-object v12, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 208
    invoke-virtual {v9, v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 210
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 213
    if-eqz v7, :cond_e

    .line 215
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 217
    if-nez v9, :cond_d

    .line 219
    new-instance v9, Landroid/util/ArrayMap;

    .line 221
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 223
    iput-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 226
    :cond_d
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 228
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 230
    :cond_e
    iput-wide v10, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 233
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 235
    move-result v7

    .line 238
    iput v7, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 239
    move-object v7, v8

    .line 241
    move v8, v3

    .line 242
    :cond_f
    if-nez v8, :cond_11

    .line 243
    iget v9, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 245
    if-ltz v9, :cond_11

    .line 247
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 249
    move-result v9

    .line 252
    iget v12, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 253
    if-le v9, v12, :cond_11

    .line 255
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    .line 257
    move-result v9

    .line 260
    if-ne v9, v4, :cond_10

    .line 261
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 263
    if-eq v9, v4, :cond_11

    .line 265
    :cond_10
    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 267
    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 269
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    .line 271
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 274
    iput-object v6, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 276
    iput-wide v10, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 278
    move v8, v3

    .line 280
    :cond_11
    iget-object v4, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 281
    if-eqz v4, :cond_16

    .line 283
    const-wide/16 v7, 0x0

    .line 285
    if-ne p1, v4, :cond_13

    .line 287
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 289
    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 291
    if-eqz v9, :cond_12

    .line 293
    goto :goto_8

    .line 295
    :cond_12
    move-wide v10, v7

    .line 296
    :goto_8
    iput-wide v10, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 297
    goto :goto_a

    .line 299
    :cond_13
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 300
    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 302
    if-nez v9, :cond_14

    .line 304
    goto :goto_9

    .line 306
    :cond_14
    move-wide v10, v7

    .line 307
    :goto_9
    iput-wide v10, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 308
    :goto_a
    move-object v7, v4

    .line 310
    move v8, v3

    .line 311
    goto :goto_b

    .line 312
    :cond_15
    move v8, v1

    .line 313
    move-object v7, v6

    .line 314
    :cond_16
    :goto_b
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 315
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 317
    iget-boolean v4, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInNotificationIconShelf:Z

    .line 320
    if-eqz v4, :cond_17

    .line 322
    iget v4, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mThemedTextColorPrimary:I

    .line 324
    goto :goto_c

    .line 326
    :cond_17
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 327
    :goto_c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 329
    if-eqz v5, :cond_18

    .line 331
    if-eqz v2, :cond_18

    .line 333
    move v2, v3

    .line 335
    goto :goto_d

    .line 336
    :cond_18
    move v2, v1

    .line 337
    :goto_d
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 338
    if-eqz v8, :cond_19

    .line 341
    invoke-virtual {p0, v0, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 343
    goto :goto_e

    .line 346
    :cond_19
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 347
    :goto_e
    sget-object p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 350
    iput-object v6, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 352
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 354
    const/high16 v2, 0x3f800000    # 1.0f

    .line 356
    cmpl-float p1, p1, v2

    .line 358
    if-nez p1, :cond_1a

    .line 360
    goto :goto_f

    .line 362
    :cond_1a
    move v3, v1

    .line 363
    :goto_f
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIsInShelf(Z)V

    .line 364
    :cond_1b
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 367
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 369
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 371
    return-void
    .line 373
.end method

.method public final initFrom(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    .line 11
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 15
    :cond_0
    return-void
    .line 17
.end method
