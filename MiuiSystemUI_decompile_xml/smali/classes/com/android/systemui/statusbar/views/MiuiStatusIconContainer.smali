.class public Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDotPadding:I

.field public mIconDotFrameWidth:I

.field public mIconSpacing:I

.field public final mIgnoredSlots:Ljava/util/ArrayList;

.field public final mLayoutStates:Ljava/util/ArrayList;

.field public final mMeasureViews:Ljava/util/ArrayList;

.field public mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

.field public mShouldRestrictIcons:Z

.field public final mTempChildLocation:[I

.field public mUnderflowWidth:I

.field public final mViewLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/ArraySet;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 5
    new-instance v0, Landroidx/collection/ArraySet;

    .line 8
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 10
    new-instance v0, Landroidx/collection/ArraySet;

    .line 13
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 15
    new-instance v0, Landroidx/collection/ArraySet;

    .line 18
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 20
    new-instance v0, Landroidx/collection/ArraySet;

    .line 23
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 25
    new-instance v0, Landroidx/collection/ArraySet;

    .line 28
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 30
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 33
    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 38
    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
    .line 43
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mShouldRestrictIcons:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mViewLocation:[I

    new-array p2, p1, [I

    .line 8
    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mTempChildLocation:[I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10502c1    # @android:dimen/text_size_subtitle_material_toolbar

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIconDotFrameWidth:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070e39    # @dimen/overflow_icon_dot_padding '3.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mDotPadding:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0710fa    # @dimen/status_bar_system_icon_spacing '0.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIconSpacing:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070e38    # @dimen/overflow_dot_radius '1.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/2addr p2, p1

    .line 13
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIconDotFrameWidth:I

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mDotPadding:I

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, -0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mUnderflowWidth:I

    const/4 p1, 0x1

    .line 14
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
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 6
    move-result p2

    .line 9
    add-int/2addr p2, p1

    .line 10
    int-to-float p1, p2

    .line 11
    const/high16 p2, 0x40000000    # 2.0f

    .line 12
    div-float/2addr p1, p2

    .line 14
    const/4 p3, 0x0

    .line 15
    move p4, p3

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 17
    move-result p5

    .line 20
    if-ge p4, p5, :cond_0

    .line 21
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object p5

    .line 26
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    move-result v0

    .line 30
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    move-result v1

    .line 34
    int-to-float v2, v1

    .line 35
    div-float/2addr v2, p2

    .line 36
    sub-float v2, p1, v2

    .line 37
    float-to-int v2, v2

    .line 39
    add-int/2addr v1, v2

    .line 40
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 41
    add-int/lit8 p4, p4, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    move p1, p3

    .line 47
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 48
    move-result p2

    .line 51
    const p4, 0x7f0a08ea    # @id/status_bar_view_state_tag

    .line 52
    if-ge p1, p2, :cond_2

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 60
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 61
    move-result-object p4

    .line 64
    check-cast p4, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 65
    if-nez p4, :cond_1

    .line 67
    goto :goto_2

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 70
    move-result p5

    .line 73
    iput p5, p4, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->alpha:F

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 76
    move-result p2

    .line 79
    iput p2, p4, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 80
    const/high16 p2, 0x3f800000    # 1.0f

    .line 82
    iput p2, p4, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->alpha:F

    .line 84
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 86
    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 94
    move-result p1

    .line 97
    int-to-float p1, p1

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 99
    move-result p2

    .line 102
    int-to-float p2, p2

    .line 103
    sub-float p2, p1, p2

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 106
    move-result p5

    .line 109
    int-to-float p5, p5

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 111
    move-result v0

    .line 114
    add-int/lit8 v1, v0, -0x1

    .line 115
    :goto_3
    const/4 v2, 0x1

    .line 117
    const/4 v3, 0x2

    .line 118
    if-ltz v1, :cond_8

    .line 119
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 121
    move-result-object v4

    .line 124
    move-object v5, v4

    .line 125
    check-cast v5, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 126
    invoke-virtual {v4, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 128
    move-result-object v6

    .line 131
    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 132
    if-eqz v6, :cond_5

    .line 134
    instance-of v7, v4, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 136
    if-nez v7, :cond_4

    .line 138
    instance-of v7, v4, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 140
    if-eqz v7, :cond_3

    .line 142
    goto :goto_4

    .line 144
    :cond_3
    move v2, p3

    .line 145
    :cond_4
    :goto_4
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->signalView:Z

    .line 146
    :cond_5
    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    .line 148
    move-result v2

    .line 151
    if-eqz v2, :cond_7

    .line 152
    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    .line 154
    move-result v2

    .line 157
    if-nez v2, :cond_7

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 160
    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 162
    move-result-object v5

    .line 165
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 166
    move-result v2

    .line 169
    if-eqz v2, :cond_6

    .line 170
    goto :goto_5

    .line 172
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 173
    move-result v2

    .line 176
    int-to-float v2, v2

    .line 177
    sub-float/2addr p2, v2

    .line 178
    iput p3, v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 179
    iput p2, v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v2, p3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIconSpacing:I

    .line 188
    int-to-float v2, v2

    .line 190
    sub-float/2addr p2, v2

    .line 191
    goto :goto_6

    .line 192
    :cond_7
    :goto_5
    iput v3, v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 193
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 195
    goto :goto_3

    .line 197
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 200
    move-result p2

    .line 203
    const/16 v1, 0xa

    .line 204
    if-gt p2, v1, :cond_9

    .line 206
    goto :goto_7

    .line 208
    :cond_9
    const/16 v1, 0x9

    .line 209
    :goto_7
    sub-int/2addr p2, v2

    .line 211
    move v4, p3

    .line 212
    :goto_8
    const/4 v5, -0x1

    .line 213
    if-ltz p2, :cond_c

    .line 214
    iget-object v6, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v6

    .line 221
    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 222
    iget v7, v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 224
    cmpg-float v8, v7, p5

    .line 226
    if-gez v8, :cond_a

    .line 228
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->signalView:Z

    .line 230
    if-eqz v6, :cond_d

    .line 232
    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mShouldRestrictIcons:Z

    .line 234
    if-eqz v6, :cond_b

    .line 236
    if-lt v4, v1, :cond_b

    .line 238
    goto :goto_9

    .line 240
    :cond_b
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mUnderflowWidth:I

    .line 241
    int-to-float v5, v5

    .line 243
    sub-float/2addr v7, v5

    .line 244
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIconSpacing:I

    .line 245
    int-to-float v5, v5

    .line 247
    sub-float/2addr v7, v5

    .line 248
    invoke-static {p5, v7}, Ljava/lang/Math;->max(FF)F

    .line 249
    add-int/lit8 v4, v4, 0x1

    .line 252
    add-int/lit8 p2, p2, -0x1

    .line 254
    goto :goto_8

    .line 256
    :cond_c
    move p2, v5

    .line 257
    :cond_d
    :goto_9
    if-eq p2, v5, :cond_e

    .line 258
    :goto_a
    if-ltz p2, :cond_e

    .line 260
    iget-object p5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object p5

    .line 267
    check-cast p5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 268
    iput v3, p5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 270
    add-int/lit8 p2, p2, -0x1

    .line 272
    goto :goto_a

    .line 274
    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 275
    move-result p2

    .line 278
    if-eqz p2, :cond_f

    .line 279
    move p2, p3

    .line 281
    :goto_b
    if-ge p2, v0, :cond_f

    .line 282
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 284
    move-result-object p5

    .line 287
    invoke-virtual {p5, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 288
    move-result-object v1

    .line 291
    check-cast v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 292
    iget v4, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 294
    sub-float v4, p1, v4

    .line 296
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 298
    move-result p5

    .line 301
    int-to-float p5, p5

    .line 302
    sub-float/2addr v4, p5

    .line 303
    iput v4, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 304
    add-int/lit8 p2, p2, 0x1

    .line 306
    goto :goto_b

    .line 308
    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 309
    move-result p1

    .line 312
    const/16 p2, 0x8

    .line 313
    if-eq p1, p2, :cond_11

    .line 315
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 317
    if-eqz p1, :cond_11

    .line 319
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    .line 321
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->hasDots()Z

    .line 323
    move-result p2

    .line 326
    if-eqz p2, :cond_11

    .line 327
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mViewLocation:[I

    .line 329
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 331
    move p2, p3

    .line 334
    :goto_c
    if-ge p2, v0, :cond_11

    .line 335
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 337
    move-result-object p5

    .line 340
    invoke-virtual {p5, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 341
    move-result-object v1

    .line 344
    check-cast v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 345
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->signalView:Z

    .line 347
    if-nez v4, :cond_10

    .line 349
    iget v4, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 351
    if-eq v4, v3, :cond_10

    .line 353
    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mTempChildLocation:[I

    .line 355
    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mViewLocation:[I

    .line 357
    aget v5, v5, p3

    .line 359
    int-to-float v5, v5

    .line 361
    iget v6, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 362
    add-float/2addr v5, v6

    .line 364
    float-to-int v5, v5

    .line 365
    aput v5, v4, p3

    .line 366
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 368
    move-result p5

    .line 371
    add-int/2addr p5, v5

    .line 372
    aput p5, v4, v2

    .line 373
    iget-object p5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mTempChildLocation:[I

    .line 375
    invoke-interface {p1, p5}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->overlapArea([I)Z

    .line 377
    move-result p5

    .line 380
    if-eqz p5, :cond_10

    .line 381
    iput v3, v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 383
    :cond_10
    add-int/lit8 p2, p2, 0x1

    .line 385
    goto :goto_c

    .line 387
    :cond_11
    move p1, p3

    .line 388
    :goto_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 389
    move-result p2

    .line 392
    if-ge p1, p2, :cond_15

    .line 393
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 395
    move-result-object p2

    .line 398
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 399
    move-result-object p5

    .line 402
    check-cast p5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 403
    if-eqz p5, :cond_14

    .line 405
    instance-of v0, p2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 407
    if-nez v0, :cond_12

    .line 409
    goto :goto_e

    .line 411
    :cond_12
    move-object v0, p2

    .line 412
    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 413
    iget v1, p5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->visibleState:I

    .line 415
    invoke-interface {v0, v1, p3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    .line 417
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 420
    move-result v0

    .line 423
    iget v1, p5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->xTranslation:F

    .line 424
    cmpl-float v0, v0, v1

    .line 426
    if-eqz v0, :cond_13

    .line 428
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 430
    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 433
    move-result v0

    .line 436
    iget p5, p5, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;->alpha:F

    .line 437
    cmpl-float v0, v0, p5

    .line 439
    if-eqz v0, :cond_14

    .line 441
    invoke-virtual {p2, p5}, Landroid/view/View;->setAlpha(F)V

    .line 443
    :cond_14
    :goto_e
    add-int/lit8 p1, p1, 0x1

    .line 446
    goto :goto_d

    .line 448
    :cond_15
    return-void
    .line 449
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

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
    move v6, v0

    .line 91
    move v5, v2

    .line 92
    :goto_2
    if-ge v5, v1, :cond_8

    .line 93
    iget-object v7, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 95
    sub-int v8, v1, v5

    .line 97
    sub-int/2addr v8, v0

    .line 99
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v7

    .line 103
    check-cast v7, Landroid/view/View;

    .line 104
    invoke-virtual {p0, v7, v4, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 106
    add-int/lit8 v8, v1, -0x1

    .line 109
    if-ne v5, v8, :cond_4

    .line 111
    move v8, v2

    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIconSpacing:I

    .line 115
    :goto_3
    move-object v9, v7

    .line 117
    check-cast v9, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 118
    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isSignalView()Z

    .line 120
    move-result v9

    .line 123
    if-eqz v6, :cond_5

    .line 124
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    move-result v10

    .line 129
    add-int/2addr v10, v3

    .line 130
    add-int/2addr v10, v8

    .line 131
    if-le v10, p1, :cond_6

    .line 132
    :cond_5
    if-eqz v9, :cond_7

    .line 134
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 136
    move-result v7

    .line 139
    add-int/2addr v7, v8

    .line 140
    add-int/2addr v7, v3

    .line 141
    move v3, v7

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    move v6, v2

    .line 144
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 145
    goto :goto_2

    .line 147
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 148
    move-result p1

    .line 151
    invoke-virtual {p0, v3, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 152
    return-void
    .line 155
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;

    .line 5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$StatusIconState;-><init>()V

    .line 7
    const v0, 0x7f0a08ea    # @id/status_bar_view_state_tag

    .line 10
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
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
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

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
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 2
    return-void
    .line 4
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->mShouldRestrictIcons:Z

    .line 2
    return-void
    .line 4
.end method
