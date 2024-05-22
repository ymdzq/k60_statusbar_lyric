.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

.field public static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

.field public static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;


# instance fields
.field public mDotPadding:I

.field public mIconDotFrameWidth:I

.field public mIconSpacing:I

.field public final mIgnoredSlots:Ljava/util/ArrayList;

.field public final mLayoutStates:Ljava/util/ArrayList;

.field public final mMeasureViews:Ljava/util/ArrayList;

.field public mNeedsUnderflow:Z

.field public mShouldRestrictIcons:Z

.field public mStaticDotDiameter:I

.field public mUnderflowStart:I

.field public mUnderflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>(I)V

    .line 5
    const-wide/16 v1, 0xc8

    .line 8
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 10
    const-wide/16 v3, 0x32

    .line 12
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 14
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 18
    const/4 v3, 0x1

    .line 20
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>(I)V

    .line 21
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 24
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 28
    const/4 v3, 0x2

    .line 30
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>(I)V

    .line 31
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 34
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 36
    return-void
    .line 38
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c1    # @android:dimen/text_size_subtitle_material_toolbar

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e39    # @dimen/overflow_icon_dot_padding '3.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710fa    # @dimen/status_bar_system_icon_spacing '0.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e38    # @dimen/overflow_dot_radius '1.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    .line 13
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final addIgnoredSlots(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    move v2, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v2, 0x1

    .line 35
    :goto_1
    or-int/2addr v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 40
    :cond_2
    return-void
    .line 43
.end method

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
    int-to-float p1, p1

    .line 6
    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    div-float/2addr p1, p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 12
    move-result p5

    .line 15
    if-ge p4, p5, :cond_0

    .line 16
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object p5

    .line 21
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    move-result v1

    .line 29
    int-to-float v2, v1

    .line 30
    div-float/2addr v2, p2

    .line 31
    sub-float v2, p1, v2

    .line 32
    float-to-int v2, v2

    .line 34
    add-int/2addr v1, v2

    .line 35
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 36
    add-int/lit8 p4, p4, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    move p1, p3

    .line 42
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 43
    move-result p2

    .line 46
    const p4, 0x7f0a08ea    # @id/status_bar_view_state_tag

    .line 47
    if-ge p1, p2, :cond_2

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object p2

    .line 55
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 56
    move-result-object p4

    .line 59
    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 60
    if-nez p4, :cond_1

    .line 62
    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 65
    const/high16 p2, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 70
    iput-boolean p3, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 73
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 75
    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 83
    move-result p1

    .line 86
    int-to-float p1, p1

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 88
    move-result p2

    .line 91
    int-to-float p2, p2

    .line 92
    sub-float p2, p1, p2

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 95
    move-result p5

    .line 98
    int-to-float p5, p5

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 100
    move-result v0

    .line 103
    add-int/lit8 v1, v0, -0x1

    .line 104
    :goto_3
    const/4 v2, 0x2

    .line 106
    if-ltz v1, :cond_5

    .line 107
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 109
    move-result-object v3

    .line 112
    move-object v4, v3

    .line 113
    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 114
    invoke-virtual {v3, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 116
    move-result-object v5

    .line 119
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 120
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    .line 122
    move-result v6

    .line 125
    if-eqz v6, :cond_4

    .line 126
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    .line 128
    move-result v6

    .line 131
    if-nez v6, :cond_4

    .line 132
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 134
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 139
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 140
    move-result v4

    .line 143
    if-eqz v4, :cond_3

    .line 144
    goto :goto_4

    .line 146
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 147
    move-result v2

    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    .line 151
    move-result v4

    .line 154
    add-int/2addr v4, v2

    .line 155
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 156
    move-result v2

    .line 159
    add-int/2addr v2, v4

    .line 160
    int-to-float v2, v2

    .line 161
    sub-float/2addr p2, v2

    .line 162
    iput p3, v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 163
    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v2, p3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 173
    int-to-float v2, v2

    .line 175
    sub-float/2addr p2, v2

    .line 176
    goto :goto_5

    .line 177
    :cond_4
    :goto_4
    iput v2, v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 178
    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 180
    goto :goto_3

    .line 182
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result p2

    .line 188
    const/4 v1, 0x7

    .line 189
    if-gt p2, v1, :cond_6

    .line 190
    goto :goto_6

    .line 192
    :cond_6
    const/4 v1, 0x6

    .line 193
    :goto_6
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    .line 194
    const/4 v3, 0x1

    .line 196
    sub-int/2addr p2, v3

    .line 197
    move v4, p3

    .line 198
    :goto_7
    const/4 v5, -0x1

    .line 199
    if-ltz p2, :cond_9

    .line 200
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v6

    .line 207
    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 208
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 210
    if-eqz v7, :cond_7

    .line 212
    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 214
    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    .line 216
    int-to-float v8, v8

    .line 218
    add-float/2addr v8, p5

    .line 219
    cmpg-float v7, v7, v8

    .line 220
    if-ltz v7, :cond_a

    .line 222
    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 224
    if-eqz v7, :cond_8

    .line 226
    if-lt v4, v1, :cond_8

    .line 228
    goto :goto_8

    .line 230
    :cond_8
    iget v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 231
    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    .line 233
    int-to-float v6, v6

    .line 235
    sub-float/2addr v5, v6

    .line 236
    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 237
    int-to-float v6, v6

    .line 239
    sub-float/2addr v5, v6

    .line 240
    invoke-static {p5, v5}, Ljava/lang/Math;->max(FF)F

    .line 241
    move-result v5

    .line 244
    float-to-int v5, v5

    .line 245
    iput v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 248
    add-int/lit8 p2, p2, -0x1

    .line 250
    goto :goto_7

    .line 252
    :cond_9
    move p2, v5

    .line 253
    :cond_a
    :goto_8
    if-eq p2, v5, :cond_c

    .line 254
    iget p5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    .line 256
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    .line 258
    add-int/2addr p5, v1

    .line 260
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    .line 261
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    .line 263
    add-int/2addr v1, v4

    .line 265
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 266
    sub-int/2addr v1, v4

    .line 268
    move v4, p3

    .line 269
    :goto_9
    if-ltz p2, :cond_c

    .line 270
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    move-result-object v5

    .line 277
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 278
    if-ge v4, v3, :cond_b

    .line 280
    int-to-float v6, v1

    .line 282
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 283
    iput v3, v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 286
    sub-int/2addr v1, p5

    .line 288
    add-int/lit8 v4, v4, 0x1

    .line 289
    goto :goto_a

    .line 291
    :cond_b
    iput v2, v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 292
    :goto_a
    add-int/lit8 p2, p2, -0x1

    .line 294
    goto :goto_9

    .line 296
    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 297
    move-result p2

    .line 300
    if-eqz p2, :cond_d

    .line 301
    move p2, p3

    .line 303
    :goto_b
    if-ge p2, v0, :cond_d

    .line 304
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 306
    move-result-object p5

    .line 309
    invoke-virtual {p5, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 313
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 314
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 316
    sub-float v2, p1, v2

    .line 318
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 320
    move-result p5

    .line 323
    int-to-float p5, p5

    .line 324
    sub-float/2addr v2, p5

    .line 325
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 326
    add-int/lit8 p2, p2, 0x1

    .line 329
    goto :goto_b

    .line 331
    :cond_d
    :goto_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 332
    move-result p1

    .line 335
    if-ge p3, p1, :cond_f

    .line 336
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 338
    move-result-object p1

    .line 341
    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 342
    move-result-object p2

    .line 345
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 346
    if-eqz p2, :cond_e

    .line 348
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    .line 350
    :cond_e
    add-int/lit8 p3, p3, 0x1

    .line 353
    goto :goto_c

    .line 355
    :cond_f
    return-void
    .line 356
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

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
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v1

    .line 68
    const/4 v3, 0x7

    .line 69
    if-gt v1, v3, :cond_2

    .line 70
    move v4, v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v4, 0x6

    .line 74
    :goto_1
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 75
    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    .line 77
    add-int/2addr v5, v6

    .line 79
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    move-result v6

    .line 83
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 84
    const/4 v8, 0x1

    .line 86
    if-eqz v7, :cond_3

    .line 87
    if-le v1, v3, :cond_3

    .line 89
    move v3, v8

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move v3, v2

    .line 93
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 94
    move v3, v2

    .line 96
    move v7, v8

    .line 97
    :goto_3
    if-ge v3, v1, :cond_8

    .line 98
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 100
    sub-int v10, v1, v3

    .line 102
    sub-int/2addr v10, v8

    .line 104
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v9

    .line 108
    check-cast v9, Landroid/view/View;

    .line 109
    invoke-virtual {p0, v9, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 111
    add-int/lit8 v10, v1, -0x1

    .line 114
    if-ne v3, v10, :cond_4

    .line 116
    move v10, v2

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 120
    :goto_4
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 122
    if-eqz v11, :cond_6

    .line 124
    if-ge v3, v4, :cond_5

    .line 126
    if-eqz v7, :cond_5

    .line 128
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 130
    move-result v11

    .line 133
    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    .line 134
    move-result v12

    .line 137
    add-int/2addr v12, v11

    .line 138
    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    .line 139
    move-result v9

    .line 142
    :goto_5
    add-int/2addr v9, v12

    .line 143
    goto :goto_6

    .line 144
    :cond_5
    if-eqz v7, :cond_7

    .line 145
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    .line 147
    add-int/2addr v5, v7

    .line 149
    move v7, v2

    .line 150
    goto :goto_7

    .line 151
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 152
    move-result v11

    .line 155
    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    .line 156
    move-result v12

    .line 159
    add-int/2addr v12, v11

    .line 160
    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    .line 161
    move-result v9

    .line 164
    goto :goto_5

    .line 165
    :goto_6
    add-int/2addr v9, v10

    .line 166
    add-int/2addr v9, v5

    .line 167
    move v5, v9

    .line 168
    :cond_7
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_3

    .line 171
    :cond_8
    const/high16 v1, 0x40000000    # 2.0f

    .line 172
    if-ne v0, v1, :cond_a

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 176
    if-nez v0, :cond_9

    .line 178
    if-le v5, p1, :cond_9

    .line 180
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 182
    :cond_9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 184
    move-result p2

    .line 187
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 188
    goto :goto_9

    .line 191
    :cond_a
    const/high16 v1, -0x80000000

    .line 192
    if-ne v0, v1, :cond_b

    .line 194
    if-le v5, p1, :cond_b

    .line 196
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 198
    goto :goto_8

    .line 200
    :cond_b
    move p1, v5

    .line 201
    :goto_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 202
    move-result p2

    .line 205
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 206
    :goto_9
    return-void
    .line 209
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    .line 7
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

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

.method public final removeIgnoredSlot(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setIgnoredSlots(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    .line 7
    return-void
    .line 10
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 2
    return-void
    .line 4
.end method
