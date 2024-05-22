.class public Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

.field public static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

.field public static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;


# instance fields
.field public mIconSpacing:I

.field public final mIgnoredSlots:Ljava/util/ArrayList;

.field public final mLayoutStates:Ljava/util/ArrayList;

.field public final mLayoutVisibleView:Ljava/util/ArrayList;

.field public final mMeasureViews:Ljava/util/ArrayList;

.field public mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

.field public final mNeedsUnderflow:Z

.field public mShouldRestrictIcons:Z

.field public final mTempChildLocation:[I

.field public final mViewLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;-><init>(I)V

    .line 5
    const-wide/16 v1, 0xc8

    .line 8
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 10
    const-wide/16 v3, 0x32

    .line 12
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 14
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

    .line 18
    const/4 v3, 0x1

    .line 20
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;-><init>(I)V

    .line 21
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 24
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

    .line 28
    const/4 v3, 0x2

    .line 30
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;-><init>(I)V

    .line 31
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 34
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$1;

    .line 36
    return-void
    .line 38
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mNeedsUnderflow:Z

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mShouldRestrictIcons:Z

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutVisibleView:Ljava/util/ArrayList;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mViewLocation:[I

    new-array p2, p2, [I

    .line 10
    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mTempChildLocation:[I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10502c1    # @android:dimen/text_size_subtitle_material_toolbar

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070e39    # @dimen/overflow_icon_dot_padding '3.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0710fa    # @dimen/status_bar_system_icon_spacing '0.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIconSpacing:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070e38    # @dimen/overflow_dot_radius '1.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    return-void
    .line 5
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 8
    move-result v2

    .line 11
    add-int/2addr v2, v1

    .line 12
    int-to-float v1, v2

    .line 13
    const/high16 v2, 0x40000000    # 2.0f

    .line 14
    div-float/2addr v1, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 19
    move-result v5

    .line 22
    if-ge v4, v5, :cond_0

    .line 23
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    move-result v6

    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    move-result v7

    .line 36
    int-to-float v8, v7

    .line 37
    div-float/2addr v8, v2

    .line 38
    sub-float v8, v1, v8

    .line 39
    float-to-int v8, v8

    .line 41
    add-int/2addr v7, v8

    .line 42
    invoke-virtual {v5, v3, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    move v1, v3

    .line 49
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 50
    move-result v2

    .line 53
    const v4, 0x7f0a08ea    # @id/status_bar_view_state_tag

    .line 54
    if-ge v1, v2, :cond_2

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object v2

    .line 62
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 67
    if-nez v4, :cond_1

    .line 69
    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 72
    const/high16 v2, 0x3f800000    # 1.0f

    .line 75
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 77
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 80
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_1

    .line 84
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutVisibleView:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 95
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 100
    move-result v2

    .line 103
    int-to-float v2, v2

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 105
    move-result v5

    .line 108
    int-to-float v5, v5

    .line 109
    sub-float v5, v1, v5

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 112
    move-result v6

    .line 115
    move v7, v3

    .line 116
    :goto_3
    const/4 v8, 0x2

    .line 117
    if-ge v7, v6, :cond_5

    .line 118
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 120
    move-result-object v9

    .line 123
    move-object v10, v9

    .line 124
    check-cast v10, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 125
    invoke-virtual {v9, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 127
    move-result-object v11

    .line 130
    check-cast v11, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 131
    invoke-interface {v10}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    .line 133
    move-result v12

    .line 136
    if-eqz v12, :cond_4

    .line 137
    invoke-interface {v10}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    .line 139
    move-result v12

    .line 142
    if-nez v12, :cond_4

    .line 143
    iget-object v12, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 145
    invoke-interface {v10}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 147
    move-result-object v10

    .line 150
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 151
    move-result v10

    .line 154
    if-eqz v10, :cond_3

    .line 155
    goto :goto_4

    .line 157
    :cond_3
    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 158
    iput v3, v11, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->visibleState:I

    .line 161
    iget-object v8, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v8, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutVisibleView:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 173
    move-result v8

    .line 176
    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    .line 177
    move-result v10

    .line 180
    add-int/2addr v10, v8

    .line 181
    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    .line 182
    move-result v8

    .line 185
    add-int/2addr v8, v10

    .line 186
    int-to-float v8, v8

    .line 187
    add-float/2addr v2, v8

    .line 188
    iget v8, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIconSpacing:I

    .line 189
    int-to-float v8, v8

    .line 191
    add-float/2addr v2, v8

    .line 192
    goto :goto_5

    .line 193
    :cond_4
    :goto_4
    iput v8, v11, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->visibleState:I

    .line 194
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 196
    goto :goto_3

    .line 198
    :cond_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 201
    move-result v2

    .line 204
    const/4 v7, 0x7

    .line 205
    if-gt v2, v7, :cond_6

    .line 206
    goto :goto_6

    .line 208
    :cond_6
    const/4 v7, 0x6

    .line 209
    :goto_6
    move v9, v3

    .line 210
    move v10, v9

    .line 211
    :goto_7
    const/4 v11, -0x1

    .line 212
    if-ge v9, v2, :cond_9

    .line 213
    iget-object v12, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    move-result-object v12

    .line 220
    check-cast v12, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 221
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mNeedsUnderflow:Z

    .line 223
    if-eqz v13, :cond_7

    .line 225
    iget v13, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 227
    iget-object v14, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutVisibleView:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v14

    .line 234
    check-cast v14, Landroid/view/View;

    .line 235
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 237
    move-result v15

    .line 240
    invoke-virtual {v14}, Landroid/view/View;->getPaddingStart()I

    .line 241
    move-result v16

    .line 244
    add-int v16, v16, v15

    .line 245
    invoke-virtual {v14}, Landroid/view/View;->getPaddingEnd()I

    .line 247
    move-result v14

    .line 250
    add-int v14, v14, v16

    .line 251
    int-to-float v14, v14

    .line 253
    add-float/2addr v13, v14

    .line 254
    int-to-float v14, v3

    .line 255
    add-float/2addr v14, v5

    .line 256
    cmpl-float v13, v13, v14

    .line 257
    if-gtz v13, :cond_a

    .line 259
    :cond_7
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mShouldRestrictIcons:Z

    .line 261
    if-eqz v13, :cond_8

    .line 263
    if-lt v10, v7, :cond_8

    .line 265
    goto :goto_8

    .line 267
    :cond_8
    iget v11, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 268
    int-to-float v12, v3

    .line 270
    add-float/2addr v11, v12

    .line 271
    iget v12, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIconSpacing:I

    .line 272
    int-to-float v12, v12

    .line 274
    add-float/2addr v11, v12

    .line 275
    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    .line 276
    add-int/lit8 v10, v10, 0x1

    .line 279
    add-int/lit8 v9, v9, 0x1

    .line 281
    goto :goto_7

    .line 283
    :cond_9
    move v9, v11

    .line 284
    :cond_a
    :goto_8
    if-eq v9, v11, :cond_b

    .line 285
    :goto_9
    if-ge v9, v2, :cond_b

    .line 287
    iget-object v5, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    move-result-object v5

    .line 294
    check-cast v5, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 295
    iput v8, v5, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->visibleState:I

    .line 297
    add-int/lit8 v9, v9, 0x1

    .line 299
    goto :goto_9

    .line 301
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 302
    move-result v2

    .line 305
    if-eqz v2, :cond_c

    .line 306
    move v2, v3

    .line 308
    :goto_a
    if-ge v2, v6, :cond_c

    .line 309
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 311
    move-result-object v5

    .line 314
    invoke-virtual {v5, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 315
    move-result-object v7

    .line 318
    check-cast v7, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 319
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 321
    sub-float v9, v1, v9

    .line 323
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 325
    move-result v5

    .line 328
    int-to-float v5, v5

    .line 329
    sub-float/2addr v9, v5

    .line 330
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 334
    goto :goto_a

    .line 336
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mLayoutVisibleView:Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 342
    move-result v1

    .line 345
    const/16 v2, 0x8

    .line 346
    if-eq v1, v2, :cond_e

    .line 348
    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 350
    if-eqz v1, :cond_e

    .line 352
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    .line 354
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->hasDots()Z

    .line 356
    move-result v2

    .line 359
    if-eqz v2, :cond_e

    .line 360
    iget-object v2, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mViewLocation:[I

    .line 362
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 364
    move v2, v3

    .line 367
    :goto_b
    if-ge v2, v6, :cond_e

    .line 368
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 370
    move-result-object v5

    .line 373
    invoke-virtual {v5, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 374
    move-result-object v7

    .line 377
    check-cast v7, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 378
    iget v9, v7, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->visibleState:I

    .line 380
    if-eq v9, v8, :cond_d

    .line 382
    iget-object v9, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mTempChildLocation:[I

    .line 384
    iget-object v10, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mViewLocation:[I

    .line 386
    aget v10, v10, v3

    .line 388
    int-to-float v10, v10

    .line 390
    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 391
    add-float/2addr v10, v11

    .line 393
    float-to-int v10, v10

    .line 394
    aput v10, v9, v3

    .line 395
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 397
    move-result v11

    .line 400
    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    .line 401
    move-result v12

    .line 404
    add-int/2addr v12, v11

    .line 405
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    .line 406
    move-result v5

    .line 409
    add-int/2addr v5, v12

    .line 410
    add-int/2addr v5, v10

    .line 411
    const/4 v10, 0x1

    .line 412
    aput v5, v9, v10

    .line 413
    iget-object v5, v0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mTempChildLocation:[I

    .line 415
    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->overlapArea([I)Z

    .line 417
    move-result v5

    .line 420
    if-eqz v5, :cond_d

    .line 421
    iput v8, v7, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->visibleState:I

    .line 423
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 425
    goto :goto_b

    .line 427
    :cond_e
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 428
    move-result v1

    .line 431
    if-ge v3, v1, :cond_10

    .line 432
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 434
    move-result-object v1

    .line 437
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 438
    move-result-object v2

    .line 441
    check-cast v2, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 442
    if-eqz v2, :cond_f

    .line 444
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    .line 446
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 449
    goto :goto_c

    .line 451
    :cond_10
    return-void
    .line 452
.end method

.method public final onMeasure(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result v0

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 27
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    .line 29
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    .line 35
    move-result v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 41
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 53
    check-cast v4, Landroid/view/View;

    .line 55
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v1

    .line 68
    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 69
    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    .line 71
    add-int/2addr v3, v4

    .line 73
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result v4

    .line 77
    const/high16 v5, 0x40000000    # 2.0f

    .line 78
    if-eq v0, v5, :cond_3

    .line 80
    const/high16 v5, -0x80000000

    .line 82
    if-ne v0, v5, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    const p1, 0x3fffffff    # 1.9999999f

    .line 87
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 90
    move v5, v2

    .line 91
    :goto_2
    if-ge v5, v1, :cond_6

    .line 92
    iget-object v6, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v6

    .line 99
    check-cast v6, Landroid/view/View;

    .line 100
    invoke-virtual {p0, v6, v4, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 102
    add-int/lit8 v7, v1, -0x1

    .line 105
    if-ne v5, v7, :cond_4

    .line 107
    move v7, v2

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIconSpacing:I

    .line 111
    :goto_3
    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 115
    move-result v8

    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    .line 119
    move-result v9

    .line 122
    add-int/2addr v9, v8

    .line 123
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    .line 124
    move-result v8

    .line 127
    add-int/2addr v8, v9

    .line 128
    add-int/2addr v8, v3

    .line 129
    add-int/2addr v8, v7

    .line 130
    if-gt v8, p1, :cond_5

    .line 131
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 133
    move-result v8

    .line 136
    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    .line 137
    move-result v9

    .line 140
    add-int/2addr v9, v8

    .line 141
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    .line 142
    move-result v6

    .line 145
    add-int/2addr v6, v9

    .line 146
    add-int/2addr v6, v7

    .line 147
    add-int/2addr v6, v3

    .line 148
    move v3, v6

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move v0, v2

    .line 151
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 152
    goto :goto_2

    .line 154
    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 155
    move-result p1

    .line 158
    invoke-virtual {p0, v3, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 159
    return-void
    .line 162
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;

    .line 5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;-><init>()V

    .line 7
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer$StatusIconState;->justAdded:Z

    .line 11
    const v0, 0x7f0a08ea    # @id/status_bar_view_state_tag

    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    const p0, 0x7f0a08ea    # @id/status_bar_view_state_tag

    .line 5
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
    .line 12
.end method

.method public setIgnoredSlots(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 37
    return-void
    .line 40
.end method

.method public setMultiTaskStatusBarDotsAreaControllerFactory(Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 2
    return-void
    .line 4
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiDripLeftStatusIconContainer;->mShouldRestrictIcons:Z

    .line 2
    return-void
    .line 4
.end method
