.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field public static final BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

.field public static final ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public mActualWidth:F

.field public mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAnimationsEnabled:Z

.field public mCanInteract:Z

.field public mCanModifyColorOfNotifications:Z

.field public final mClipRect:Landroid/graphics/Rect;

.field public mController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field public mCornerAnimationDistance:F

.field public mEnableNotificationClipping:Z

.field public mHasItemsInStableShelf:Z

.field public mHideBackground:Z

.field public mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mIndexOfFirstViewInShelf:I

.field public mInteractive:Z

.field public mNotGoneIndex:I

.field public mPaddingBetweenElements:I

.field public mScrollFastThreshold:I

.field public mSensitiveRevealAnimEndabled:Z

.field public mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public mShelfRefactorFlagEnabled:Z

.field public mShowNotificationShelf:Z

.field public mStatusBarHeight:I

.field public mStatusBarState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const v1, 0x3f19999a    # 0.6f

    .line 4
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 8
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 13
    const-string v1, "BaseValue"

    .line 15
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 22
    const-string v1, "ShelfScroll"

    .line 24
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 29
    return-void
    .line 31
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 11
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return-void
.end method

.method private getHostLayoutChildCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
    .line 16
.end method

.method private getHostLayoutTransientViewCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransientViewCount()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
    .line 16
.end method

.method private getSpeedBumpIndex()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
    .line 16
.end method


# virtual methods
.method public final assertRefactorFlagDisabled()V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget p0, Lcom/android/systemui/statusbar/NotificationShelfController;->$r8$clinit:I

    .line 7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    const-string v0, "Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is "

    .line 11
    const-string v1, "enabled"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
    .line 26
.end method

.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    move-result-object p1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public getActualWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-lez v1, :cond_0

    .line 8
    float-to-int p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 12
    move-result p0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public getAmountInShelf(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZF)F
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 5
    move-result v2

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 9
    move-result v3

    .line 12
    iget v4, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 13
    add-int/2addr v3, v4

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    .line 16
    move-result-object v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 22
    move-result v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 27
    move-result v5

    .line 30
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    .line 31
    move-result v4

    .line 34
    int-to-float v4, v4

    .line 35
    add-float/2addr v5, v4

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    .line 41
    move-result v4

    .line 44
    int-to-float v4, v4

    .line 45
    sub-float v4, v5, v4

    .line 46
    :goto_0
    int-to-float v5, v3

    .line 48
    add-float/2addr v5, v2

    .line 49
    sub-float/2addr v5, v4

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 51
    move-result v6

    .line 54
    int-to-float v6, v6

    .line 55
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 56
    move-result v5

    .line 59
    if-eqz p5, :cond_1

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    .line 62
    move-result v6

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 66
    move-result v7

    .line 69
    sub-int/2addr v6, v7

    .line 70
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result v3

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    .line 75
    move-result v6

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 79
    move-result v7

    .line 82
    sub-int/2addr v6, v7

    .line 83
    int-to-float v6, v6

    .line 84
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 85
    move-result v5

    .line 88
    :cond_1
    int-to-float v3, v3

    .line 89
    add-float v6, v2, v3

    .line 90
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 92
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 94
    const/4 v9, 0x0

    .line 96
    const/high16 v10, 0x3f800000    # 1.0f

    .line 97
    if-eqz v8, :cond_2

    .line 99
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 101
    move-result v7

    .line 104
    if-nez v7, :cond_2

    .line 105
    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    .line 107
    const/4 v3, -0x1

    .line 109
    if-eq v2, v3, :cond_7

    .line 110
    move v3, p1

    .line 112
    if-lt v3, v2, :cond_7

    .line 113
    goto :goto_2

    .line 115
    :cond_2
    cmpl-float v6, v6, p6

    .line 116
    if-ltz v6, :cond_7

    .line 118
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 120
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mUnlockHintRunning:Z

    .line 122
    if-eqz v7, :cond_3

    .line 124
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 126
    if-eqz v7, :cond_7

    .line 128
    :cond_3
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 130
    if-nez v6, :cond_4

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 134
    move-result v6

    .line 137
    if-nez v6, :cond_7

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 140
    move-result v6

    .line 143
    if-nez v6, :cond_7

    .line 144
    :cond_4
    cmpg-float v6, v2, p6

    .line 146
    if-gez v6, :cond_6

    .line 148
    sub-float v6, v2, p6

    .line 150
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 152
    move-result v6

    .line 155
    const v7, 0x3a83126f    # 0.001f

    .line 156
    cmpl-float v6, v6, v7

    .line 159
    if-lez v6, :cond_6

    .line 161
    sub-float v6, p6, v2

    .line 163
    div-float v3, v6, v3

    .line 165
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    .line 167
    move-result v3

    .line 170
    sub-float v3, v10, v3

    .line 171
    if-eqz p5, :cond_5

    .line 173
    sub-float/2addr v4, v2

    .line 175
    div-float/2addr v6, v4

    .line 176
    goto :goto_1

    .line 177
    :cond_5
    sub-float v2, p6, v4

    .line 178
    div-float v6, v2, v5

    .line 180
    :goto_1
    invoke-static {v6, v9, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 182
    move-result v2

    .line 185
    sub-float v2, v10, v2

    .line 186
    goto :goto_4

    .line 188
    :cond_6
    :goto_2
    move v3, v10

    .line 189
    goto :goto_3

    .line 190
    :cond_7
    move v3, v9

    .line 191
    :goto_3
    move v2, v3

    .line 192
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 193
    move-result-object v4

    .line 196
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 197
    const/4 v6, 0x0

    .line 199
    if-nez v5, :cond_8

    .line 200
    move-object v5, v6

    .line 202
    goto :goto_5

    .line 203
    :cond_8
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 204
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v5

    .line 209
    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 210
    :goto_5
    if-nez v5, :cond_9

    .line 212
    goto/16 :goto_17

    .line 214
    :cond_9
    const/high16 v7, 0x3f000000    # 0.5f

    .line 216
    cmpl-float v7, v2, v7

    .line 218
    const/4 v8, 0x1

    .line 220
    const/4 v11, 0x0

    .line 221
    if-gtz v7, :cond_d

    .line 222
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    .line 224
    move-result-object v7

    .line 227
    if-nez v7, :cond_a

    .line 228
    goto :goto_6

    .line 230
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 231
    move-result v12

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    .line 235
    move-result v13

    .line 238
    add-float/2addr v13, v12

    .line 239
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    .line 240
    move-result v12

    .line 243
    int-to-float v12, v12

    .line 244
    add-float/2addr v13, v12

    .line 245
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 246
    move-result v7

    .line 249
    int-to-float v7, v7

    .line 250
    add-float/2addr v13, v7

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 252
    move-result v7

    .line 255
    iget v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 256
    int-to-float v12, v12

    .line 258
    sub-float/2addr v7, v12

    .line 259
    cmpl-float v7, v13, v7

    .line 260
    if-ltz v7, :cond_b

    .line 262
    move v7, v8

    .line 264
    goto :goto_7

    .line 265
    :cond_b
    :goto_6
    move v7, v11

    .line 266
    :goto_7
    if-eqz v7, :cond_c

    .line 267
    goto :goto_8

    .line 269
    :cond_c
    move v7, v11

    .line 270
    goto :goto_9

    .line 271
    :cond_d
    :goto_8
    move v7, v8

    .line 272
    :goto_9
    if-eqz v7, :cond_e

    .line 273
    move v7, v10

    .line 275
    goto :goto_a

    .line 276
    :cond_e
    move v7, v9

    .line 277
    :goto_a
    cmpl-float v12, v2, v7

    .line 278
    if-nez v12, :cond_11

    .line 280
    if-nez p3, :cond_f

    .line 282
    if-eqz p4, :cond_10

    .line 284
    :cond_f
    if-nez p5, :cond_10

    .line 286
    move v12, v8

    .line 288
    goto :goto_b

    .line 289
    :cond_10
    move v12, v11

    .line 290
    :goto_b
    iput-boolean v12, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 291
    :cond_11
    if-nez p5, :cond_14

    .line 293
    if-nez p3, :cond_13

    .line 295
    if-eqz p4, :cond_14

    .line 297
    sget v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 299
    invoke-virtual {v4, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 301
    move-result-object v12

    .line 304
    if-eqz v12, :cond_12

    .line 305
    move v12, v8

    .line 307
    goto :goto_c

    .line 308
    :cond_12
    move v12, v11

    .line 309
    :goto_c
    if-nez v12, :cond_14

    .line 310
    :cond_13
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 312
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 315
    :cond_14
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 317
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    .line 319
    move-result v4

    .line 322
    if-eqz v4, :cond_16

    .line 323
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 325
    if-nez v4, :cond_16

    .line 327
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 329
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    .line 331
    move-result v2

    .line 334
    if-eqz v2, :cond_15

    .line 335
    move v2, v10

    .line 337
    goto :goto_e

    .line 338
    :cond_15
    move v2, v9

    .line 339
    goto :goto_e

    .line 340
    :cond_16
    iget v4, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 341
    cmpl-float v4, v4, v7

    .line 343
    if-eqz v4, :cond_17

    .line 345
    move v4, v8

    .line 347
    goto :goto_d

    .line 348
    :cond_17
    move v4, v11

    .line 349
    :goto_d
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 350
    :goto_e
    iput v7, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 352
    instance-of v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 354
    if-nez v4, :cond_18

    .line 356
    goto/16 :goto_17

    .line 358
    :cond_18
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 360
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 362
    move-result-object v5

    .line 365
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 366
    if-nez v7, :cond_19

    .line 368
    goto :goto_f

    .line 370
    :cond_19
    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 371
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-result-object v6

    .line 376
    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 377
    :goto_f
    if-nez v6, :cond_1a

    .line 379
    goto/16 :goto_17

    .line 381
    :cond_1a
    sget-object v7, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 383
    check-cast v7, Landroid/view/animation/PathInterpolator;

    .line 385
    invoke-virtual {v7, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 387
    move-result v7

    .line 390
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 391
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 394
    if-eqz v7, :cond_1b

    .line 396
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 398
    if-nez v7, :cond_1b

    .line 400
    move v7, v8

    .line 402
    goto :goto_10

    .line 403
    :cond_1b
    move v7, v11

    .line 404
    :goto_10
    if-nez v7, :cond_1f

    .line 405
    if-eqz v4, :cond_1c

    .line 407
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 409
    if-eqz v4, :cond_1c

    .line 411
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 413
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 415
    if-nez v4, :cond_1f

    .line 417
    :cond_1c
    cmpl-float v4, v2, v9

    .line 419
    if-nez v4, :cond_1d

    .line 421
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    .line 423
    move-result v4

    .line 426
    if-eqz v4, :cond_1f

    .line 427
    :cond_1d
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    .line 429
    move-result v4

    .line 432
    if-nez v4, :cond_1f

    .line 433
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    .line 435
    move-result v4

    .line 438
    if-nez v4, :cond_1f

    .line 439
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    .line 441
    move-result v4

    .line 444
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 445
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    int-to-float v7, v11

    .line 450
    cmpl-float v4, v4, v7

    .line 451
    if-lez v4, :cond_1e

    .line 453
    goto :goto_11

    .line 455
    :cond_1e
    move v4, v11

    .line 456
    goto :goto_12

    .line 457
    :cond_1f
    :goto_11
    move v4, v8

    .line 458
    :goto_12
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 459
    if-eqz v4, :cond_20

    .line 461
    goto :goto_13

    .line 463
    :cond_20
    move v9, v2

    .line 464
    :goto_13
    iput v9, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 465
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 467
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 469
    move-result v2

    .line 472
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 473
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 476
    if-eqz v2, :cond_21

    .line 478
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    .line 480
    if-nez v2, :cond_21

    .line 482
    move v2, v8

    .line 484
    goto :goto_14

    .line 485
    :cond_21
    move v2, v11

    .line 486
    :goto_14
    if-eqz v2, :cond_22

    .line 487
    iput v10, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 489
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 491
    iput-boolean v11, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 494
    :cond_22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    .line 496
    move-result v0

    .line 499
    iget v2, v5, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 500
    if-eq v2, v0, :cond_23

    .line 502
    iput v0, v5, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 504
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 506
    :cond_23
    iget v0, v5, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    .line 509
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    .line 511
    move-result v2

    .line 514
    if-eqz v2, :cond_24

    .line 515
    goto :goto_15

    .line 517
    :cond_24
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfTransformationTarget()Landroid/view/View;

    .line 518
    move-result-object v2

    .line 521
    if-eqz v2, :cond_25

    .line 522
    goto :goto_16

    .line 524
    :cond_25
    :goto_15
    move v8, v11

    .line 525
    :goto_16
    if-eqz v8, :cond_26

    .line 526
    if-eqz v0, :cond_26

    .line 528
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    .line 530
    move-result v1

    .line 533
    iget v2, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 534
    invoke-static {v2, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    .line 536
    move-result v0

    .line 539
    :cond_26
    iput v0, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 540
    :goto_17
    return v3
    .line 542
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

.method public final getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getActualWidth()I

    .line 5
    move-result p2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 15
    sub-int/2addr p0, p2

    .line 17
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 21
    add-int/2addr p0, p2

    .line 23
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 24
    :goto_0
    return-void
    .line 26
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 2
    return-object p0
    .line 4
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

.method public getNotGoneIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 2
    return p0
    .line 4
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 2
    return-object p0
    .line 4
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

.method public isXInView(FFFF)Z
    .locals 0

    .line 1
    sub-float/2addr p3, p2

    .line 2
    cmpg-float p0, p3, p1

    .line 3
    if-gtz p0, :cond_0

    .line 5
    add-float/2addr p4, p2

    .line 7
    cmpg-float p0, p1, p4

    .line 8
    if-gez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public isYInView(FFFF)Z
    .locals 0

    .line 1
    sub-float/2addr p3, p2

    .line 2
    cmpg-float p0, p3, p1

    .line 3
    if-gtz p0, :cond_0

    .line 5
    add-float/2addr p4, p2

    .line 7
    cmpg-float p0, p1, p4

    .line 8
    if-gez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final needsOutline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    .line 36
    sget-object v0, Lcom/android/systemui/statusbar/NotificationShelf;->BASE_VALUE:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    invoke-interface {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources()V

    .line 46
    return-void
    .line 49
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 11
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p0

    .line 19
    const v1, 0x7f1300ba    # @string/accessibility_overflow_action 'See all notifications'

    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const/16 v1, 0x10

    .line 27
    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 13
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 15
    neg-int p3, p1

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 18
    move-result p4

    .line 21
    const/4 p5, 0x0

    .line 22
    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 26
    if-eqz p1, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public final onStateChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->assertRefactorFlagDisabled()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 7
    return-void
    .line 10
.end method

.method public final pointInView(FFF)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getActualWidth()I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    sub-float v2, v0, v1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v0, v1

    .line 29
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 30
    int-to-float v1, v1

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 33
    move-result v3

    .line 36
    int-to-float v3, v3

    .line 37
    invoke-virtual {p0, p1, p3, v2, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->isXInView(FFFF)Z

    .line 38
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0, p2, p3, v1, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->isYInView(FFFF)Z

    .line 44
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    const/4 p0, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    :goto_2
    return p0
    .line 53
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setCanInteract(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string v0, "NotificationShelf"

    .line 6
    const-string v1, "Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is disabled."

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCanInteract:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 20
    return-void
    .line 23
.end method

.method public setCanModifyColorOfNotifications(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string v0, "NotificationShelf"

    .line 6
    const-string v1, "Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is disabled."

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCanModifyColorOfNotifications:Z

    .line 18
    return-void
    .line 20
.end method

.method public setController(Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->assertRefactorFlagDisabled()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 5
    return-void
    .line 7
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    .line 7
    return-void
    .line 10
.end method

.method public setIndexOfFirstViewInShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    .line 14
    return-void

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    throw p0
    .line 18
.end method

.method public setRefactorFlagEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSensitiveRevealAnimEndabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "NotificationShelf(hideBackground="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " notGoneIndex="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " hasItemsInStableShelf="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " statusBarState="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " interactive="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, " animationsEnabled="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " showNotificationShelf="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " indexOfFirstViewInShelf="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    .line 79
    const/16 v1, 0x29

    .line 81
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    return-object p0
    .line 87
.end method

.method public updateActualWidth(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 10
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {p2, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 15
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 20
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    :goto_0
    float-to-int p2, p1

    .line 25
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundWidth(I)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 33
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mActualWidth:F

    .line 36
    return-void
    .line 38
.end method

.method public final updateAppearance()V
    .locals 28

    .line 1
    move-object/from16 v7, p0

    .line 2
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 14
    move-result v8

    .line 17
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 18
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 20
    const/4 v10, -0x1

    .line 22
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 23
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 33
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 35
    if-nez v0, :cond_1

    .line 37
    const/4 v13, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v13, 0x0

    .line 41
    :goto_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 42
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 44
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 46
    int-to-float v2, v2

    .line 48
    cmpl-float v1, v1, v2

    .line 49
    if-gtz v1, :cond_3

    .line 51
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 53
    if-eqz v1, :cond_2

    .line 55
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v0

    .line 62
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 63
    int-to-float v1, v1

    .line 65
    cmpl-float v0, v0, v1

    .line 66
    if-lez v0, :cond_2

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    const/4 v14, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    const/4 v14, 0x1

    .line 73
    :goto_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 74
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 76
    if-eqz v1, :cond_4

    .line 78
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    .line 80
    if-nez v0, :cond_4

    .line 82
    const/4 v15, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    const/4 v15, 0x0

    .line 86
    :goto_3
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    const/16 v16, 0x0

    .line 94
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getHostLayoutChildCount()I

    .line 96
    move-result v6

    .line 99
    const/16 v17, 0x0

    .line 100
    const/16 v10, 0x8

    .line 102
    if-ge v5, v6, :cond_25

    .line 104
    iget-boolean v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 106
    if-nez v6, :cond_24

    .line 108
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 110
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 112
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 114
    move-result-object v6

    .line 117
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 118
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    .line 120
    move-result v18

    .line 123
    if-eqz v18, :cond_23

    .line 124
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 126
    move-result v12

    .line 129
    if-ne v12, v10, :cond_5

    .line 130
    goto/16 :goto_1a

    .line 132
    :cond_5
    sget v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 134
    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 136
    move-result-object v10

    .line 139
    check-cast v10, Landroid/animation/ValueAnimator;

    .line 140
    if-nez v10, :cond_6

    .line 142
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    .line 144
    move-result v10

    .line 147
    goto :goto_5

    .line 148
    :cond_6
    sget v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    .line 149
    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 151
    move-result-object v10

    .line 154
    check-cast v10, Ljava/lang/Float;

    .line 155
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 157
    move-result v10

    .line 160
    :goto_5
    move/from16 v19, v0

    .line 161
    const/4 v12, 0x0

    .line 163
    int-to-float v0, v12

    .line 164
    cmpl-float v0, v10, v0

    .line 165
    if-gtz v0, :cond_8

    .line 167
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 169
    move-result v0

    .line 172
    if-eqz v0, :cond_7

    .line 173
    goto :goto_6

    .line 175
    :cond_7
    const/4 v10, 0x0

    .line 176
    goto :goto_7

    .line 177
    :cond_8
    :goto_6
    const/4 v10, 0x1

    .line 178
    :goto_7
    if-ne v6, v9, :cond_9

    .line 179
    const/4 v12, 0x1

    .line 181
    goto :goto_8

    .line 182
    :cond_9
    const/4 v12, 0x0

    .line 183
    :goto_8
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 184
    move-result v20

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 188
    move-result v0

    .line 191
    move/from16 v21, v1

    .line 192
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 194
    int-to-float v1, v1

    .line 196
    sub-float v22, v0, v1

    .line 197
    move/from16 v1, v19

    .line 199
    move-object/from16 v0, p0

    .line 201
    move-object/from16 v19, v9

    .line 203
    move v9, v1

    .line 205
    move v1, v5

    .line 206
    move/from16 v23, v11

    .line 207
    move v11, v2

    .line 209
    move-object v2, v6

    .line 210
    move/from16 v24, v9

    .line 211
    move v9, v3

    .line 213
    move v3, v14

    .line 214
    move/from16 v25, v14

    .line 215
    move v14, v4

    .line 217
    move v4, v15

    .line 218
    move/from16 v26, v5

    .line 219
    move v5, v12

    .line 221
    move/from16 v27, v15

    .line 222
    move-object v15, v6

    .line 224
    move/from16 v6, v22

    .line 225
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->getAmountInShelf(ILcom/android/systemui/statusbar/notification/row/ExpandableView;ZZZF)F

    .line 227
    move-result v0

    .line 230
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 231
    if-nez v1, :cond_b

    .line 233
    if-eqz v12, :cond_a

    .line 235
    iget-boolean v1, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    .line 237
    if-eqz v1, :cond_c

    .line 239
    :cond_a
    if-nez v13, :cond_c

    .line 241
    :cond_b
    if-eqz v10, :cond_d

    .line 243
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 245
    move-result v1

    .line 248
    int-to-float v1, v1

    .line 249
    add-float/2addr v1, v8

    .line 250
    goto :goto_9

    .line 251
    :cond_d
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 252
    int-to-float v1, v1

    .line 254
    sub-float v1, v8, v1

    .line 255
    :goto_9
    invoke-virtual {v7, v15, v1, v14}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    .line 257
    move-result v2

    .line 260
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    .line 261
    move-result v2

    .line 264
    instance-of v3, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 265
    if-eqz v3, :cond_17

    .line 267
    move-object v6, v15

    .line 269
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 270
    add-float v3, v9, v0

    .line 272
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    .line 274
    move-result v4

    .line 277
    cmpl-float v5, v20, v8

    .line 278
    if-ltz v5, :cond_f

    .line 280
    iget v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 282
    const/4 v9, -0x1

    .line 284
    if-ne v5, v9, :cond_f

    .line 285
    iput v14, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 287
    iget v5, v7, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 289
    move/from16 v11, v24

    .line 291
    if-eq v11, v5, :cond_e

    .line 293
    iput v11, v7, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 295
    const/4 v5, 0x0

    .line 297
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 298
    :cond_e
    move/from16 v5, v21

    .line 301
    move/from16 v9, v23

    .line 303
    invoke-virtual {v7, v5, v9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    .line 305
    move/from16 v21, v1

    .line 308
    move/from16 v22, v2

    .line 310
    goto :goto_a

    .line 312
    :cond_f
    move/from16 v5, v21

    .line 313
    move/from16 v9, v23

    .line 315
    move/from16 v11, v24

    .line 317
    move/from16 v21, v1

    .line 319
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 321
    move/from16 v22, v2

    .line 323
    const/4 v2, -0x1

    .line 325
    if-ne v1, v2, :cond_10

    .line 326
    move v1, v11

    .line 328
    move v11, v0

    .line 329
    goto :goto_b

    .line 330
    :cond_10
    :goto_a
    move v1, v5

    .line 331
    move v11, v9

    .line 332
    :goto_b
    if-eqz v12, :cond_14

    .line 333
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 335
    if-eqz v2, :cond_12

    .line 337
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mCanModifyColorOfNotifications:Z

    .line 339
    if-eqz v2, :cond_11

    .line 341
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 343
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 345
    if-eqz v2, :cond_11

    .line 347
    const/4 v2, 0x1

    .line 349
    goto :goto_c

    .line 350
    :cond_11
    const/4 v2, 0x0

    .line 351
    goto :goto_c

    .line 352
    :cond_12
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 353
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationShelfController;->canModifyColorOfNotifications()Z

    .line 355
    move-result v2

    .line 358
    :goto_c
    if-eqz v2, :cond_14

    .line 359
    if-nez v16, :cond_13

    .line 361
    move v2, v4

    .line 363
    goto :goto_d

    .line 364
    :cond_13
    move/from16 v2, v16

    .line 365
    :goto_d
    invoke-virtual {v6, v2, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    .line 367
    move/from16 v16, v2

    .line 370
    const/4 v0, 0x0

    .line 372
    const/4 v2, 0x0

    .line 373
    goto :goto_e

    .line 374
    :cond_14
    const/4 v0, 0x0

    .line 375
    const/4 v2, 0x0

    .line 376
    invoke-virtual {v6, v2, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    .line 377
    move/from16 v16, v4

    .line 380
    :goto_e
    if-nez v14, :cond_15

    .line 382
    if-nez v10, :cond_16

    .line 384
    :cond_15
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 386
    :cond_16
    add-int/lit8 v2, v14, 0x1

    .line 389
    goto :goto_f

    .line 391
    :cond_17
    move/from16 v22, v2

    .line 392
    move/from16 v5, v21

    .line 394
    move/from16 v6, v23

    .line 396
    move/from16 v11, v24

    .line 398
    const/4 v0, 0x0

    .line 400
    move/from16 v21, v1

    .line 401
    move v1, v5

    .line 403
    move v3, v9

    .line 404
    move v4, v11

    .line 405
    move v2, v14

    .line 406
    move v11, v6

    .line 407
    :goto_f
    instance-of v5, v15, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 408
    if-eqz v5, :cond_22

    .line 410
    move-object v6, v15

    .line 412
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 413
    iget-boolean v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 415
    if-nez v5, :cond_18

    .line 417
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 419
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 421
    move-result v5

    .line 424
    if-eqz v5, :cond_18

    .line 425
    goto :goto_10

    .line 427
    :cond_18
    move/from16 v21, v8

    .line 428
    :goto_10
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 430
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 432
    move-result v5

    .line 435
    if-nez v5, :cond_19

    .line 436
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 438
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 440
    if-nez v5, :cond_19

    .line 442
    instance-of v5, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 444
    if-eqz v5, :cond_19

    .line 446
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isHeadsUp()Z

    .line 448
    move-result v5

    .line 451
    if-eqz v5, :cond_19

    .line 452
    const/4 v12, 0x1

    .line 454
    goto :goto_11

    .line 455
    :cond_19
    const/4 v12, 0x0

    .line 456
    :goto_11
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 457
    iget-boolean v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 459
    if-eqz v9, :cond_1a

    .line 461
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 463
    move-result-object v5

    .line 466
    if-ne v6, v5, :cond_1a

    .line 467
    const/4 v5, 0x1

    .line 469
    goto :goto_12

    .line 470
    :cond_1a
    const/4 v5, 0x0

    .line 471
    :goto_12
    cmpg-float v9, v20, v21

    .line 472
    if-gez v9, :cond_1e

    .line 474
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 476
    if-nez v9, :cond_1d

    .line 478
    iget-object v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 480
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 482
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 484
    if-eq v6, v10, :cond_1c

    .line 486
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    .line 488
    if-eq v6, v10, :cond_1c

    .line 490
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/Roundable;

    .line 492
    if-ne v6, v9, :cond_1b

    .line 494
    goto :goto_13

    .line 496
    :cond_1b
    const/4 v9, 0x0

    .line 497
    goto :goto_14

    .line 498
    :cond_1c
    :goto_13
    const/4 v9, 0x1

    .line 499
    :goto_14
    if-nez v9, :cond_1e

    .line 500
    if-nez v12, :cond_1e

    .line 502
    if-nez v5, :cond_1e

    .line 504
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    .line 506
    move-result v5

    .line 509
    if-nez v5, :cond_1e

    .line 510
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 512
    iget-boolean v9, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    .line 514
    if-nez v9, :cond_1e

    .line 516
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    .line 518
    if-nez v5, :cond_1e

    .line 520
    const/4 v12, 0x1

    .line 522
    goto :goto_15

    .line 523
    :cond_1d
    throw v17

    .line 524
    :cond_1e
    const/4 v12, 0x0

    .line 525
    :goto_15
    if-nez v12, :cond_1f

    .line 526
    goto :goto_18

    .line 528
    :cond_1f
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 529
    move-result v5

    .line 532
    int-to-float v5, v5

    .line 533
    add-float v5, v5, v20

    .line 534
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    .line 536
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 538
    iget v10, v10, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 540
    mul-float/2addr v9, v10

    .line 542
    sub-float v21, v21, v9

    .line 543
    cmpl-float v10, v20, v21

    .line 545
    if-ltz v10, :cond_20

    .line 547
    sub-float v20, v20, v21

    .line 549
    div-float v20, v20, v9

    .line 551
    invoke-static/range {v20 .. v20}, Landroid/util/MathUtils;->saturate(F)F

    .line 553
    move-result v10

    .line 556
    goto :goto_16

    .line 557
    :cond_20
    move v10, v0

    .line 558
    :goto_16
    sget-object v12, Lcom/android/systemui/statusbar/NotificationShelf;->SHELF_SCROLL:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 559
    const/4 v15, 0x0

    .line 561
    invoke-interface {v6, v10, v12, v15}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 562
    cmpl-float v10, v5, v21

    .line 565
    if-ltz v10, :cond_21

    .line 567
    sub-float v5, v5, v21

    .line 569
    div-float/2addr v5, v9

    .line 571
    invoke-static {v5}, Landroid/util/MathUtils;->saturate(F)F

    .line 572
    move-result v5

    .line 575
    goto :goto_17

    .line 576
    :cond_21
    move v5, v0

    .line 577
    :goto_17
    invoke-interface {v6, v5, v12, v15}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    .line 578
    goto :goto_19

    .line 581
    :cond_22
    :goto_18
    const/4 v15, 0x0

    .line 582
    :goto_19
    move v14, v2

    .line 583
    move/from16 v2, v22

    .line 584
    goto :goto_1b

    .line 586
    :cond_23
    :goto_1a
    move v12, v0

    .line 587
    move/from16 v26, v5

    .line 588
    move-object/from16 v19, v9

    .line 590
    move v6, v11

    .line 592
    move/from16 v25, v14

    .line 593
    move/from16 v27, v15

    .line 595
    const/4 v0, 0x0

    .line 597
    const/4 v15, 0x0

    .line 598
    move v5, v1

    .line 599
    move v11, v2

    .line 600
    move v9, v3

    .line 601
    move v14, v4

    .line 602
    move v1, v5

    .line 603
    move v3, v9

    .line 604
    move v2, v11

    .line 605
    move v4, v12

    .line 606
    move v11, v6

    .line 607
    :goto_1b
    add-int/lit8 v5, v26, 0x1

    .line 608
    move v0, v4

    .line 610
    move v4, v14

    .line 611
    move-object/from16 v9, v19

    .line 612
    move/from16 v14, v25

    .line 614
    move/from16 v15, v27

    .line 616
    const/4 v10, -0x1

    .line 618
    goto/16 :goto_4

    .line 619
    :cond_24
    throw v17

    .line 621
    :cond_25
    move v11, v2

    .line 622
    move v9, v3

    .line 623
    move v14, v4

    .line 624
    const/4 v15, 0x0

    .line 625
    move v12, v15

    .line 626
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getHostLayoutTransientViewCount()I

    .line 627
    move-result v0

    .line 630
    if-ge v12, v0, :cond_28

    .line 631
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 633
    if-nez v0, :cond_27

    .line 635
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 637
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 639
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    .line 641
    move-result-object v0

    .line 644
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 645
    if-eqz v1, :cond_26

    .line 647
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 651
    move-result v1

    .line 654
    const/4 v2, -0x1

    .line 655
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    .line 656
    :cond_26
    add-int/lit8 v12, v12, 0x1

    .line 659
    goto :goto_1c

    .line 661
    :cond_27
    throw v17

    .line 662
    :cond_28
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 666
    move-result-object v0

    .line 669
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 670
    if-nez v0, :cond_2a

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 674
    move-result v0

    .line 677
    if-ge v11, v0, :cond_2a

    .line 678
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 680
    if-eqz v0, :cond_2a

    .line 682
    const/high16 v0, 0x3f800000    # 1.0f

    .line 684
    cmpg-float v0, v9, v0

    .line 686
    if-gez v0, :cond_29

    .line 688
    goto :goto_1d

    .line 690
    :cond_29
    move v12, v15

    .line 691
    goto :goto_1e

    .line 692
    :cond_2a
    :goto_1d
    const/4 v12, 0x1

    .line 693
    :goto_1e
    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    .line 694
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 696
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    .line 698
    check-cast v0, Landroid/view/animation/PathInterpolator;

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 702
    move-result v0

    .line 705
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 706
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateWidthFor(F)F

    .line 708
    move-result v1

    .line 711
    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateActualWidth(FF)V

    .line 712
    if-eqz v12, :cond_2b

    .line 715
    const/4 v0, 0x4

    .line 717
    goto :goto_1f

    .line 718
    :cond_2b
    move v0, v15

    .line 719
    :goto_1f
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 720
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getSpeedBumpIndex()I

    .line 725
    move-result v1

    .line 728
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 729
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 732
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    .line 734
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 737
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 739
    move v0, v15

    .line 742
    :goto_20
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getHostLayoutChildCount()I

    .line 743
    move-result v1

    .line 746
    if-ge v0, v1, :cond_32

    .line 747
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 749
    if-nez v1, :cond_31

    .line 751
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 753
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 755
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 757
    move-result-object v1

    .line 760
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 761
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 763
    if-eqz v2, :cond_30

    .line 765
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 767
    move-result v2

    .line 770
    if-ne v2, v10, :cond_2c

    .line 771
    goto :goto_24

    .line 773
    :cond_2c
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 774
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 776
    move-result-object v2

    .line 779
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 780
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 782
    sget v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 784
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 786
    move-result-object v3

    .line 789
    if-eqz v3, :cond_2d

    .line 790
    const/4 v3, 0x1

    .line 792
    goto :goto_21

    .line 793
    :cond_2d
    move v3, v15

    .line 794
    :goto_21
    if-eqz v3, :cond_2e

    .line 795
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 797
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    .line 799
    if-nez v3, :cond_2e

    .line 801
    const/4 v3, 0x1

    .line 803
    goto :goto_22

    .line 804
    :cond_2e
    move v3, v15

    .line 805
    :goto_22
    const v4, 0x7f0a0235    # @id/continuous_clipping_tag

    .line 806
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 809
    move-result-object v5

    .line 812
    if-eqz v5, :cond_2f

    .line 813
    const/4 v5, 0x1

    .line 815
    goto :goto_23

    .line 816
    :cond_2f
    move v5, v15

    .line 817
    :goto_23
    if-eqz v3, :cond_30

    .line 818
    if-nez v5, :cond_30

    .line 820
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 822
    move-result-object v3

    .line 825
    new-instance v5, Lcom/android/systemui/statusbar/NotificationShelf$1;

    .line 826
    invoke-direct {v5, v7, v2, v3, v1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 828
    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 831
    new-instance v1, Lcom/android/systemui/statusbar/NotificationShelf$2;

    .line 834
    invoke-direct {v1, v2, v3, v5}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    .line 836
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 839
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 842
    :cond_30
    :goto_24
    add-int/lit8 v0, v0, 0x1

    .line 845
    goto :goto_20

    .line 847
    :cond_31
    throw v17

    .line 848
    :cond_32
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 849
    if-eq v0, v12, :cond_35

    .line 851
    iput-boolean v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 853
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 855
    if-eqz v0, :cond_33

    .line 857
    goto :goto_26

    .line 859
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->needsOutline()Z

    .line 860
    move-result v0

    .line 863
    if-eqz v0, :cond_34

    .line 864
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    .line 866
    goto :goto_25

    .line 868
    :cond_34
    move-object/from16 v0, v17

    .line 869
    :goto_25
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 871
    :cond_35
    :goto_26
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 874
    const/4 v1, -0x1

    .line 876
    if-ne v0, v1, :cond_36

    .line 877
    iput v14, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 879
    :cond_36
    return-void
    .line 881
.end method

.method public final updateInteractiveness()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCanInteract:Z

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 11
    if-ne v0, v2, :cond_1

    .line 13
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 20
    if-eqz v0, :cond_2

    .line 22
    move v1, v2

    .line 24
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 35
    if-eqz v0, :cond_3

    .line 37
    goto :goto_1

    .line 39
    :cond_3
    const/4 v2, 0x4

    .line 40
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 41
    return-void
    .line 44
.end method

.method public final updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 6
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    add-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v4, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    if-eqz v4, :cond_2

    .line 33
    move-object v4, p1

    .line 35
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 36
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    .line 38
    if-eqz v5, :cond_2

    .line 40
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 42
    move-result-object v4

    .line 45
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    .line 46
    if-eqz v1, :cond_1

    .line 48
    iget-boolean v1, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsAlerting:Z

    .line 50
    if-eqz v1, :cond_1

    .line 52
    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v1, v3

    .line 56
    :goto_0
    if-nez v1, :cond_2

    .line 57
    move v1, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v1, v3

    .line 61
    :goto_1
    if-nez v1, :cond_3

    .line 62
    move v1, v2

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v1, v3

    .line 66
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 67
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 69
    move-result v4

    .line 72
    if-eqz v4, :cond_5

    .line 73
    if-nez p3, :cond_4

    .line 75
    goto :goto_3

    .line 77
    :cond_4
    move v2, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    .line 80
    move-result v2

    .line 83
    :goto_3
    if-nez v1, :cond_8

    .line 84
    cmpl-float p3, v0, p2

    .line 86
    if-lez p3, :cond_7

    .line 88
    if-nez v2, :cond_7

    .line 90
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mEnableNotificationClipping:Z

    .line 92
    if-eqz p3, :cond_6

    .line 94
    sub-float p2, v0, p2

    .line 96
    float-to-int p2, p2

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    move p2, v3

    .line 100
    :goto_4
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 101
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    .line 105
    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 110
    move-result p0

    .line 113
    sub-float/2addr v0, p0

    .line 114
    float-to-int p0, v0

    .line 115
    return p0

    .line 116
    :cond_9
    return v3
    .line 117
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 8
    move-result v1

    .line 11
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 12
    const v1, 0x7f070d93    # @dimen/notification_divider_height '7.27dp'

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v1

    .line 20
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x7f070df9    # @dimen/notification_shelf_height '48.0dp'

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v2

    .line 33
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    if-eq v2, v3, :cond_0

    .line 36
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_0
    const v1, 0x7f07109b    # @dimen/shelf_icon_container_padding '13.0dp'

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 46
    move-result v1

    .line 49
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 53
    const v1, 0x7f071058    # @dimen/scroll_fast_threshold '1500.0dp'

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 59
    move-result v1

    .line 62
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 63
    const v1, 0x7f050059    # @bool/config_showNotificationShelf 'false'

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 68
    move-result v1

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 72
    const v1, 0x7f070d8d    # @dimen/notification_corner_animation_distance '48.0dp'

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result v1

    .line 80
    int-to-float v1, v1

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCornerAnimationDistance:F

    .line 82
    const v1, 0x7f050097    # @bool/notification_enable_clipping 'true'

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 87
    move-result v0

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mEnableNotificationClipping:Z

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 93
    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setInNotificationIconShelf(Z)V

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 99
    if-nez v0, :cond_1

    .line 101
    const/16 v0, 0x8

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 105
    :cond_1
    return-void
    .line 108
.end method

.method public final updateState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 10
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_8

    .line 14
    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 25
    move-result v2

    .line 28
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 29
    int-to-float v2, v4

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 32
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 35
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 37
    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 41
    move-result v2

    .line 44
    if-nez v2, :cond_4

    .line 45
    iget v2, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 47
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 49
    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    .line 53
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    move v5, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v5, v4

    .line 61
    :goto_0
    if-eqz v5, :cond_1

    .line 62
    invoke-static {v2}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    .line 64
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 68
    goto :goto_2

    .line 71
    :cond_1
    iget-boolean v5, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    .line 72
    if-nez v5, :cond_3

    .line 74
    sget-object v5, Lcom/android/systemui/flags/Flags;->LARGE_SHADE_GRANULAR_ALPHA_INTERPOLATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 76
    iget-object v6, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 78
    check-cast v6, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 80
    invoke-virtual {v6, v5}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 82
    move-result v5

    .line 85
    if-nez v5, :cond_2

    .line 86
    goto :goto_1

    .line 88
    :cond_2
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    .line 89
    invoke-interface {v5, v2}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationContentAlpha(F)F

    .line 91
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 95
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    .line 99
    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 103
    goto :goto_2

    .line 106
    :cond_4
    iget v2, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 107
    const/high16 v5, 0x3f800000    # 1.0f

    .line 109
    sub-float/2addr v5, v2

    .line 111
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 112
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getSpeedBumpIndex()I

    .line 115
    move-result v2

    .line 118
    if-nez v2, :cond_5

    .line 119
    move v2, v3

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move v2, v4

    .line 123
    :goto_3
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 124
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 128
    move-result v2

    .line 131
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 132
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 135
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 137
    const/4 v0, 0x0

    .line 139
    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 140
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 142
    const/4 v4, -0x1

    .line 144
    if-eq v2, v4, :cond_6

    .line 145
    iget v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 147
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 149
    move-result v2

    .line 152
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 155
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 157
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 159
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 166
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    .line 168
    iget p1, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 170
    iget p2, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    .line 172
    add-float/2addr p1, p2

    .line 174
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 175
    if-eqz p2, :cond_7

    .line 177
    iget-boolean p2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 179
    if-eqz p2, :cond_7

    .line 181
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 183
    int-to-float p0, p0

    .line 185
    add-float/2addr p1, p0

    .line 186
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 187
    goto :goto_4

    .line 190
    :cond_7
    iget p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 191
    int-to-float p0, p0

    .line 193
    sub-float/2addr p1, p0

    .line 194
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 195
    goto :goto_4

    .line 198
    :cond_8
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 199
    const/16 p0, 0x40

    .line 201
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 203
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    .line 205
    :goto_4
    return-void
    .line 207
.end method
