.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EMPTY_PATH:Landroid/graphics/Path;


# instance fields
.field public mAlwaysRoundBothCorners:Z

.field public mCustomOutline:Z

.field public mDismissUsingRowTranslationX:Z

.field public mOutlineAlpha:F

.field public final mOutlineRect:Landroid/graphics/Rect;

.field public final mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

.field public mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

.field public final mTmpCornerRadii:[F

.field public final mTmpPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 10
    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 14
    new-instance p1, Landroid/graphics/Path;

    .line 16
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    .line 21
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 24
    const/16 p1, 0x8

    .line 26
    new-array p1, p1, [F

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpCornerRadii:[F

    .line 30
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    .line 32
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    .line 42
    return-void
    .line 45
.end method

.method private initDimens()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f050015    # @bool/config_clipNotificationsToOutline 'true'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const v1, 0x7f070df8    # @dimen/notification_shadow_radius '@dimen/notification_item_bg_radius'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 20
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v1, 0x7f070d8e    # @dimen/notification_corner_radius '28.0dp'

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 33
    if-nez v1, :cond_1

    .line 35
    new-instance v1, Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 37
    invoke-direct {v1, p0, p0, v0}, Lcom/android/systemui/statusbar/notification/RoundableState;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/notification/Roundable;F)V

    .line 39
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 42
    goto :goto_2

    .line 44
    :cond_1
    iget v2, v1, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    .line 45
    cmpg-float v2, v2, v0

    .line 47
    if-nez v2, :cond_2

    .line 49
    const/4 v2, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    :goto_1
    if-nez v2, :cond_3

    .line 54
    iput v0, v1, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    .line 56
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/RoundableState;->roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    .line 58
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    .line 60
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 65
    return-void
    .line 68
.end method


# virtual methods
.method public applyRoundnessAndInvalidate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 2
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public childNeedsClipping(Landroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    .line 12
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    .line 19
    move-result-object v0

    .line 22
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 23
    if-eqz v2, :cond_2

    .line 25
    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 27
    if-eqz v2, :cond_2

    .line 29
    move-object v3, v1

    .line 31
    move-object v1, v0

    .line 32
    move-object v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v1

    .line 35
    :cond_2
    :goto_0
    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 36
    if-eqz v2, :cond_3

    .line 38
    move-object v2, p2

    .line 40
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 41
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setChildClipPath(Landroid/graphics/Path;)V

    .line 43
    :cond_3
    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 48
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 51
    move-result p0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 55
    return p0
    .line 58
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    move-result-object p1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;Landroid/util/IndentingPrintWriter;)V

    .line 11
    invoke-static {p1, p2}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public bridge synthetic getBottomCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getBottomRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getClipPath(Z)Landroid/graphics/Path;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getMaxRadius()F

    .line 8
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTopCornerRadius()F

    .line 13
    move-result v1

    .line 16
    :goto_0
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 17
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_2

    .line 20
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 22
    if-nez v2, :cond_1

    .line 24
    if-nez p1, :cond_1

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 28
    move-result v2

    .line 31
    float-to-int v2, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v3

    .line 34
    :goto_1
    iget v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    .line 35
    const/high16 v5, 0x40000000    # 2.0f

    .line 37
    div-float/2addr v4, v5

    .line 39
    float-to-int v4, v4

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result v5

    .line 44
    sub-int/2addr v5, v4

    .line 45
    iget v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 48
    move-result v7

    .line 51
    add-int/2addr v7, v4

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 53
    move-result v2

    .line 56
    add-int/2addr v2, v7

    .line 57
    iget v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 60
    move-result v7

    .line 63
    iget v8, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 64
    sub-int/2addr v7, v8

    .line 66
    int-to-float v6, v6

    .line 67
    add-float/2addr v6, v1

    .line 68
    float-to-int v6, v6

    .line 69
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 70
    move-result v6

    .line 73
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 74
    iget v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 79
    move-result v6

    .line 82
    iget v7, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 83
    sub-int/2addr v6, v7

    .line 85
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 86
    move-result v4

    .line 89
    move v6, v5

    .line 90
    move v5, v3

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 93
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 95
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 97
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 99
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 101
    move/from16 v16, v4

    .line 103
    move v4, v2

    .line 105
    move v2, v6

    .line 106
    move v6, v5

    .line 107
    move/from16 v5, v16

    .line 108
    :goto_2
    sub-int v7, v4, v5

    .line 110
    if-nez v7, :cond_3

    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    .line 114
    return-object v0

    .line 116
    :cond_3
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 117
    if-eqz v8, :cond_4

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getMaxRadius()F

    .line 121
    move-result v8

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBottomCornerRadius()F

    .line 126
    move-result v8

    .line 129
    :goto_3
    add-float v9, v1, v8

    .line 130
    int-to-float v7, v7

    .line 132
    cmpl-float v10, v9, v7

    .line 133
    if-lez v10, :cond_5

    .line 135
    sub-float/2addr v9, v7

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getTopRoundness()F

    .line 138
    move-result v7

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getBottomRoundness()F

    .line 142
    move-result v10

    .line 145
    mul-float v11, v9, v7

    .line 146
    add-float/2addr v7, v10

    .line 148
    div-float/2addr v11, v7

    .line 149
    sub-float/2addr v1, v11

    .line 150
    invoke-static {v9, v10, v7, v8}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 151
    move-result v8

    .line 154
    :cond_5
    iget v7, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    .line 155
    sub-int/2addr v2, v7

    .line 157
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 158
    move-result v2

    .line 161
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    .line 162
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 164
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpCornerRadii:[F

    .line 167
    aput v1, v14, v3

    .line 169
    const/4 v3, 0x1

    .line 171
    aput v1, v14, v3

    .line 172
    const/4 v3, 0x2

    .line 174
    aput v1, v14, v3

    .line 175
    const/4 v3, 0x3

    .line 177
    aput v1, v14, v3

    .line 178
    const/4 v1, 0x4

    .line 180
    aput v8, v14, v1

    .line 181
    const/4 v1, 0x5

    .line 183
    aput v8, v14, v1

    .line 184
    const/4 v1, 0x6

    .line 186
    aput v8, v14, v1

    .line 187
    const/4 v1, 0x7

    .line 189
    aput v8, v14, v1

    .line 190
    int-to-float v10, v6

    .line 192
    int-to-float v11, v5

    .line 193
    int-to-float v12, v2

    .line 194
    int-to-float v13, v4

    .line 195
    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 196
    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 198
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    .line 201
    return-object v0
    .line 203
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public bridge synthetic getMaxRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getOutlineAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public getOutlineTranslation()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 6
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 8
    return p0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 17
    move-result p0

    .line 20
    float-to-int p0, p0

    .line 21
    return p0
    .line 22
.end method

.method public getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mRoundableState:Lcom/android/systemui/statusbar/notification/RoundableState;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getTopCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getTopRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final isClippingNeeded()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 13
    if-nez v0, :cond_0

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 20
    if-nez v3, :cond_2

    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 24
    if-nez p0, :cond_2

    .line 26
    if-eqz v0, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :cond_2
    :goto_1
    return v1
    .line 32
.end method

.method public needsOutline()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    .line 16
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    move v1, v2

    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    :cond_2
    move v1, v2

    .line 42
    :cond_3
    return v1

    .line 43
    :cond_4
    return v2
    .line 44
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public setActualHeight(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    .line 6
    if-eq v0, p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 2
    move-result v0

    .line 5
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 6
    if-eq v0, p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setClipRightAmount(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipRightAmount()I

    .line 2
    move-result v0

    .line 5
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipRightAmount(I)V

    .line 6
    if-eq v0, p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setClipTopAmount(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    .line 2
    move-result v0

    .line 5
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    .line 6
    if-eq v0, p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setDismissUsingRowTranslationX(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 2
    return-void
    .line 4
.end method

.method public setExtraWidthForClipping(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setExtraWidthForClipping(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public setMinimumHeightForClipping(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinimumHeightForClipping(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public final setOutlineRect(FFFF)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 5
    float-to-int v1, p1

    .line 7
    float-to-int v2, p2

    .line 8
    float-to-int p3, p3

    .line 9
    float-to-int p4, p4

    .line 10
    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 14
    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 16
    int-to-float p4, p4

    .line 18
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    .line 19
    move-result p2

    .line 22
    float-to-int p2, p2

    .line 23
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 24
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 26
    iget p3, p2, Landroid/graphics/Rect;->right:I

    .line 28
    int-to-float p3, p3

    .line 30
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    .line 31
    move-result p1

    .line 34
    float-to-int p1, p1

    .line 35
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundnessAndInvalidate()V

    .line 38
    return-void
    .line 41
.end method
