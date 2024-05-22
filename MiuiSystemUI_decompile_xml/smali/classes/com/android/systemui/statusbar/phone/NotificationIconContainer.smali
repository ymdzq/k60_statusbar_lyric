.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

.field public static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

.field public static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

.field public static final UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

.field public static final UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

.field public static final sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;


# instance fields
.field public final mAbsolutePosition:[I

.field public mActualLayoutWidth:I

.field public mActualPaddingEnd:F

.field public mActualPaddingStart:F

.field public mAddAnimationStartIndex:I

.field public mAggregatedVisible:Z

.field public mAnimationsEnabled:Z

.field public mCannedAnimationStartIndex:I

.field public mChangingViewPositions:Z

.field public mDisallowNextAnimation:Z

.field public mDotPadding:F

.field public mDozing:Z

.field public mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field public mIconSize:I

.field public final mIconStates:Ljava/util/HashMap;

.field public mInNotificationIconShelf:Z

.field public mIsShowingOverflowDot:Z

.field public mIsStaticLayout:Z

.field public mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public mIsolatedIconForAnimation:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field public final mMaxIconsOnAod:I

.field public mMaxIconsOnLockscreen:I

.field public mMaxStaticIcons:I

.field public mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

.field public mNotificationPaddingEnd:I

.field public mOnLockScreen:Z

.field public mReplacingIcons:Landroidx/collection/ArrayMap;

.field public mSpeedBumpIndex:I

.field public mStaticDotDiameter:I

.field public final mTempChildLocation:[I

.field public mThemedTextColorPrimary:I

.field public final mViewLocation:[I

.field public mVisualOverflowStart:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>(I)V

    .line 5
    const-wide/16 v1, 0xc8

    .line 8
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>(I)V

    .line 17
    const-wide/16 v3, 0x64

    .line 20
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 22
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 26
    const/4 v3, 0x2

    .line 28
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>(I)V

    .line 29
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 34
    const/4 v3, 0x3

    .line 36
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>(I)V

    .line 37
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 40
    const-wide/16 v1, 0x32

    .line 42
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 44
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 48
    const/4 v1, 0x4

    .line 50
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>(I)V

    .line 51
    const-wide/16 v1, 0x6e

    .line 54
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 56
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 60
    const/4 v3, 0x5

    .line 62
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>(I)V

    .line 63
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 66
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnAod:I

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnLockscreen:I

    .line 8
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 13
    new-instance p2, Ljava/util/HashMap;

    .line 15
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 20
    const/high16 p2, -0x80000000

    .line 22
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 24
    const/high16 p2, -0x31000000

    .line 26
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 28
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 30
    const/4 p2, -0x1

    .line 32
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 33
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 35
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 39
    const/4 p2, 0x2

    .line 41
    new-array v0, p2, [I

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    .line 44
    new-array v0, p2, [I

    .line 46
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mViewLocation:[I

    .line 48
    new-array p2, p2, [I

    .line 50
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempChildLocation:[I

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initResources()V

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 57
    return-void
    .line 60
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 2
    const/high16 v1, -0x31000000

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 10
    move-result p0

    .line 13
    int-to-float p0, p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
    .line 16
.end method

.method private getLayoutEnd()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    .line 7
    move-result p0

    .line 10
    sub-float/2addr v0, p0

    .line 11
    return v0
    .line 12
.end method


# virtual methods
.method public final applyIconStates()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 31
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 35
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 38
    return-void
    .line 40
.end method

.method public final calculateIconXTranslations()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOnLockScreen:Z

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnAod:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    .line 25
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 30
    const/4 v4, 0x0

    .line 32
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 33
    const/4 v4, -0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    move v7, v4

    .line 37
    move v6, v5

    .line 38
    :goto_1
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x2

    .line 40
    if-ge v6, v1, :cond_a

    .line 41
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    move-result-object v10

    .line 46
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v11

    .line 52
    check-cast v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 53
    iget v12, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 55
    const/high16 v13, 0x3f800000    # 1.0f

    .line 57
    cmpl-float v12, v12, v13

    .line 59
    if-nez v12, :cond_2

    .line 61
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 63
    :cond_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 66
    if-nez v12, :cond_3

    .line 68
    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 70
    :cond_3
    iget-boolean v12, v11, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 72
    if-eqz v12, :cond_4

    .line 74
    goto :goto_2

    .line 76
    :cond_4
    move v9, v5

    .line 77
    :goto_2
    iput v9, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 78
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 80
    iget v12, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 82
    invoke-virtual {p0, v6, v9, v12, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->shouldForceOverflow(IIFI)Z

    .line 84
    move-result v9

    .line 87
    if-nez v9, :cond_6

    .line 88
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 90
    int-to-float v9, v9

    .line 92
    sub-float v9, v3, v9

    .line 93
    cmpl-float v9, v0, v9

    .line 95
    if-lez v9, :cond_5

    .line 97
    goto :goto_3

    .line 99
    :cond_5
    move v8, v5

    .line 100
    :cond_6
    :goto_3
    if-ne v7, v4, :cond_8

    .line 101
    if-eqz v8, :cond_8

    .line 103
    if-eqz v2, :cond_7

    .line 105
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNotificationPaddingEnd:I

    .line 107
    int-to-float v7, v7

    .line 109
    sub-float v7, v0, v7

    .line 110
    goto :goto_4

    .line 112
    :cond_7
    move v7, v0

    .line 113
    :goto_4
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 114
    move v7, v6

    .line 116
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOnLockScreen:Z

    .line 117
    if-eqz v8, :cond_9

    .line 119
    instance-of v8, v10, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 121
    if-eqz v8, :cond_9

    .line 123
    move-object v8, v10

    .line 125
    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 126
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleIncreased()F

    .line 128
    move-result v13

    .line 131
    :cond_9
    iget v8, v11, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 132
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 134
    move-result v9

    .line 137
    int-to-float v9, v9

    .line 138
    invoke-static {v8, v9, v13, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 139
    move-result v0

    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    goto :goto_1

    .line 145
    :cond_a
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 146
    if-eq v7, v4, :cond_c

    .line 148
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 150
    move v2, v7

    .line 152
    :goto_5
    if-ge v2, v1, :cond_d

    .line 153
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 155
    move-result-object v4

    .line 158
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 159
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-result-object v4

    .line 164
    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 165
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    .line 167
    int-to-float v6, v6

    .line 169
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:F

    .line 170
    add-float/2addr v6, v10

    .line 172
    const/high16 v10, 0x40400000    # 3.0f

    .line 173
    mul-float/2addr v6, v10

    .line 175
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 176
    if-eqz v7, :cond_b

    .line 179
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 181
    if-nez v10, :cond_b

    .line 183
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 185
    div-int/2addr v10, v9

    .line 187
    int-to-float v10, v10

    .line 188
    add-float/2addr v10, v0

    .line 189
    add-float/2addr v10, v6

    .line 190
    cmpg-float v10, v10, v3

    .line 191
    if-gez v10, :cond_b

    .line 193
    iput v8, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 195
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 197
    iget v10, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 199
    mul-float/2addr v6, v10

    .line 201
    add-float/2addr v6, v0

    .line 202
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 203
    move v0, v6

    .line 205
    goto :goto_6

    .line 206
    :cond_b
    iput v9, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 207
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 209
    goto :goto_5

    .line 211
    :cond_c
    if-lez v1, :cond_d

    .line 212
    add-int/lit8 v0, v1, -0x1

    .line 214
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 216
    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 220
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 225
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 226
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 230
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 232
    move-result-object v2

    .line 235
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    move-result-object v0

    .line 239
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 240
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 242
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 244
    move-result v0

    .line 247
    if-eqz v0, :cond_e

    .line 248
    move v0, v5

    .line 250
    :goto_7
    if-ge v0, v1, :cond_e

    .line 251
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 253
    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 257
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-result-object v3

    .line 262
    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 265
    move-result v4

    .line 268
    int-to-float v4, v4

    .line 269
    iget v6, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 270
    sub-float/2addr v4, v6

    .line 272
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 273
    move-result v2

    .line 276
    int-to-float v2, v2

    .line 277
    sub-float/2addr v4, v2

    .line 278
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 282
    goto :goto_7

    .line 284
    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 285
    move-result v0

    .line 288
    const/16 v2, 0x8

    .line 289
    if-eq v0, v2, :cond_10

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 293
    if-eqz v0, :cond_10

    .line 295
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    .line 297
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->hasDots()Z

    .line 299
    move-result v2

    .line 302
    if-eqz v2, :cond_10

    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mViewLocation:[I

    .line 305
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 307
    move v2, v5

    .line 310
    :goto_8
    if-ge v2, v1, :cond_10

    .line 311
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 313
    move-result-object v3

    .line 316
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 317
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-result-object v4

    .line 322
    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 323
    if-eqz v4, :cond_f

    .line 325
    iget v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 327
    if-eq v6, v9, :cond_f

    .line 329
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempChildLocation:[I

    .line 331
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mViewLocation:[I

    .line 333
    aget v7, v7, v5

    .line 335
    int-to-float v7, v7

    .line 337
    iget v10, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 338
    add-float/2addr v7, v10

    .line 340
    float-to-int v7, v7

    .line 341
    aput v7, v6, v5

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 344
    move-result v3

    .line 347
    add-int/2addr v3, v7

    .line 348
    aput v3, v6, v8

    .line 349
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempChildLocation:[I

    .line 351
    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->overlapArea([I)Z

    .line 353
    move-result v3

    .line 356
    if-eqz v3, :cond_f

    .line 357
    iput v9, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 359
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 361
    goto :goto_8

    .line 363
    :cond_10
    return-void
    .line 364
.end method

.method public final calculateWidthFor(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    if-nez v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 8
    int-to-float v0, v0

    .line 10
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnLockscreen:I

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 13
    int-to-float v1, v1

    .line 15
    invoke-static {p1, v1}, Landroid/util/MathUtils;->min(FF)F

    .line 16
    move-result p1

    .line 19
    mul-float/2addr p1, v0

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 21
    move-result v0

    .line 24
    add-float/2addr v0, p1

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    .line 26
    move-result p0

    .line 29
    add-float/2addr v0, p0

    .line 30
    return v0
    .line 31
.end method

.method public getActualPaddingStart()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 2
    const/high16 v1, -0x31000000

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 10
    move-result p0

    .line 13
    int-to-float p0, p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
    .line 16
.end method

.method public getActualWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 2
    const/high16 v1, -0x80000000

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0
    .line 13
.end method

.method public getFinalTranslationX()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 14
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 19
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 21
    sub-float/2addr v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 25
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 27
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 29
    int-to-float v1, v1

    .line 31
    add-float/2addr v0, v1

    .line 32
    :goto_0
    float-to-int v0, v0

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 34
    move-result p0

    .line 37
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result p0

    .line 41
    return p0
    .line 42
.end method

.method public getIconSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 2
    return p0
    .line 4
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final initResources()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070dcf    # @dimen/notification_overflow_icon_dot_padding '2.3dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:F

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f0710ee    # @dimen/status_bar_notification_padding_end '4.0dp'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNotificationPaddingEnd:I

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 31
    const v1, 0x7f070e38    # @dimen/overflow_dot_radius '1.0dp'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v0

    .line 38
    mul-int/lit8 v0, v0, 0x2

    .line 39
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    .line 41
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 48
    const v2, 0x10302e3    # @android:style/Theme.DeviceDefault.DayNight

    .line 49
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 52
    const v1, 0x1010036    # @android:attr/textColorPrimary

    .line 55
    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 62
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mThemedTextColorPrimary:I

    .line 66
    return-void
    .line 68
.end method

.method public isOverflowing(ZFFF)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    sub-float/2addr p3, p4

    .line 5
    :goto_0
    cmpl-float p0, p2, p3

    .line 6
    if-ltz p0, :cond_1

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    const/4 p0, 0x0

    .line 12
    :goto_1
    return p0
    .line 13
.end method

.method public final isReplacingIcon(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 8
    if-nez v0, :cond_1

    .line 10
    return v1

    .line 12
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    .line 27
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    if-eqz p0, :cond_2

    .line 35
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 41
    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 43
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_2
    return v1
    .line 53
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initResources()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    new-instance v5, Landroid/graphics/Paint;

    .line 5
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 7
    const/high16 v0, -0x10000

    .line 10
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 15
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    .line 25
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 29
    move-result p0

    .line 32
    int-to-float v4, p0

    .line 33
    move-object v0, p1

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 35
    return-void
    .line 38
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

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
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 11
    move p4, p3

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result p5

    .line 17
    if-ge p4, p5, :cond_1

    .line 18
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object p5

    .line 23
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    move-result v1

    .line 31
    int-to-float v2, v1

    .line 32
    div-float/2addr v2, p2

    .line 33
    sub-float v2, p1, v2

    .line 34
    float-to-int v2, v2

    .line 36
    add-int/2addr v1, v2

    .line 37
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 38
    if-nez p4, :cond_0

    .line 41
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 43
    move-result p5

    .line 46
    invoke-virtual {p0, p5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    .line 47
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 55
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 58
    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 68
    :cond_2
    return-void
    .line 71
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOnLockScreen:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnAod:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 13
    if-eqz v1, :cond_1

    .line 15
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    move v1, v0

    .line 20
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    .line 30
    move-result v4

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    .line 34
    move-result v5

    .line 37
    add-float/2addr v4, v5

    .line 38
    float-to-int v4, v4

    .line 39
    :goto_1
    if-ge v3, v0, :cond_3

    .line 40
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v5

    .line 45
    invoke-virtual {p0, v5, v2, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 46
    if-gt v3, v1, :cond_2

    .line 49
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result v5

    .line 54
    add-int/2addr v5, v4

    .line 55
    move v4, v5

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {v4, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    .line 60
    move-result p1

    .line 63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    move-result p2

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 68
    return-void
    .line 71
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    .line 5
    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 9
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 15
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V

    .line 17
    if-eqz v0, :cond_0

    .line 20
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 22
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result v4

    .line 38
    sub-int/2addr v4, v3

    .line 39
    if-ge v1, v4, :cond_3

    .line 40
    if-nez v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 44
    add-int/lit8 v3, v1, 0x1

    .line 46
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 56
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 58
    const/4 v3, 0x0

    .line 60
    cmpl-float v0, v0, v3

    .line 61
    if-lez v0, :cond_3

    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 65
    if-gez v0, :cond_2

    .line 67
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result v0

    .line 75
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 76
    :cond_3
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 78
    if-eqz v0, :cond_4

    .line 80
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDozing:Z

    .line 84
    const-wide/16 v0, 0x0

    .line 86
    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDozing(ZZJ)V

    .line 88
    :cond_4
    return-void
    .line 91
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    .line 9
    move-result v0

    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 16
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v2, :cond_1

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 22
    if-ne v1, v2, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v2, v4

    .line 29
    :goto_1
    if-eqz v2, :cond_5

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    .line 32
    move-result v2

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq v2, v5, :cond_5

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 39
    move-result v2

    .line 42
    if-nez v2, :cond_5

    .line 43
    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    .line 47
    move-result v2

    .line 50
    move v5, v3

    .line 51
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    move-result v6

    .line 55
    if-ge v5, v6, :cond_3

    .line 56
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 62
    move-result v6

    .line 65
    cmpl-float v6, v6, v2

    .line 66
    if-lez v6, :cond_2

    .line 68
    goto :goto_3

    .line 70
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 71
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    move-result v5

    .line 77
    :goto_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 78
    if-gez v2, :cond_4

    .line 80
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 82
    goto :goto_4

    .line 84
    :cond_4
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 85
    move-result v2

    .line 88
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 89
    :cond_5
    :goto_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 91
    if-nez v2, :cond_a

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 95
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 100
    if-nez v2, :cond_7

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 104
    if-ne v1, v2, :cond_6

    .line 106
    goto :goto_5

    .line 108
    :cond_6
    move v2, v3

    .line 109
    goto :goto_6

    .line 110
    :cond_7
    :goto_5
    move v2, v4

    .line 111
    :goto_6
    if-eqz v2, :cond_a

    .line 112
    if-nez v0, :cond_a

    .line 114
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 119
    if-ne p1, v0, :cond_8

    .line 121
    move v3, v4

    .line 123
    :cond_8
    const/4 v2, 0x2

    .line 124
    const/4 p1, 0x1

    .line 125
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;

    .line 126
    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 128
    if-eqz v3, :cond_9

    .line 131
    const-wide/16 v5, 0x6e

    .line 133
    goto :goto_7

    .line 135
    :cond_9
    const-wide/16 v5, 0x0

    .line 136
    :goto_7
    move v3, p1

    .line 138
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    .line 139
    :cond_a
    return-void
    .line 142
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAggregatedVisible:Z

    .line 5
    return-void
    .line 7
.end method

.method public final resetViewStates()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v2

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 20
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 27
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    return-void
    .line 35
.end method

.method public setActualLayoutWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 2
    return-void
    .line 4
.end method

.method public setActualPaddingEnd(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 2
    return-void
    .line 4
.end method

.method public setActualPaddingStart(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 2
    return-void
    .line 4
.end method

.method public setAnimationsEnabled(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 4
    if-eqz v0, :cond_1

    .line 6
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 25
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 29
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 38
    return-void
    .line 40
.end method

.method public setChangingViewPositions(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 2
    return-void
    .line 4
.end method

.method public setDozing(ZZJ)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDozing:Z

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 4
    xor-int/lit8 v1, p2, 0x1

    .line 6
    or-int/2addr v0, v1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 9
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 21
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 22
    if-eqz v2, :cond_0

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 26
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDozing(ZZJ)V

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public setIconSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 2
    return-void
    .line 4
.end method

.method public setInNotificationIconShelf(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInNotificationIconShelf:Z

    .line 2
    return-void
    .line 4
.end method

.method public setIsStaticLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 2
    return-void
    .line 4
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setMultiTaskStatusBarDotsAreaControllerFactory(Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMultiTaskStatusBarDotsAreaControllerFactory:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 2
    return-void
    .line 4
.end method

.method public setOnLockScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOnLockScreen:Z

    .line 2
    return-void
    .line 4
.end method

.method public setReplacingIcons(Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    .line 2
    return-void
    .line 4
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 2
    return-void
    .line 4
.end method

.method public shouldForceOverflow(IIFI)Z
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eq p2, p0, :cond_0

    .line 3
    if-lt p1, p2, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 7
    cmpl-float p0, p3, p0

    .line 8
    if-gtz p0, :cond_1

    .line 10
    :cond_0
    if-lt p1, p4, :cond_2

    .line 12
    :cond_1
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_2
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "NotificationIconContainer(dozing="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDozing:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " onLockScreen="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOnLockScreen:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " inNotificationIconShelf="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mInNotificationIconShelf:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " speedBumpIndex="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " themedTextColorPrimary=#"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mThemedTextColorPrimary:I

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/16 p0, 0x29

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0
    .line 67
.end method
