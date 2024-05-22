.class public abstract Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field public mCanCurrViewBeDimissed:Z

.field public mDensityScale:F

.field public final mDismissPendingMap:Landroid/util/ArrayMap;

.field public final mDownLocation:[F

.field public final mFadeDependingOnAmountSwiped:Z

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFalsingThreshold:I

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialTouchPos:F

.field public mIsSwiping:Z

.field public mLongPressSent:Z

.field public final mLongPressTimeout:J

.field public mMenuRowIntercepting:Z

.field public mPagingTouchSlop:F

.field public final mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

.field public mPerpendicularInitialTouchPos:F

.field public final mSlopMultiplier:F

.field public final mSnapBackSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public mSnappingChild:Z

.field public mTouchAboveFalsingThreshold:Z

.field public final mTouchSlop:I

.field public final mTouchSlopMultiplier:F

.field public mTouchedView:Landroid/view/View;

.field public mTranslation:F

.field public final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 5
    const/high16 v1, 0x43480000    # 200.0f

    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mSnapBackSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 14
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 17
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [F

    .line 20
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDownLocation:[F

    .line 22
    new-instance v0, Lcom/android/systemui/SwipeHelper$1;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;)V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    .line 31
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 38
    new-instance p1, Landroid/os/Handler;

    .line 40
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 47
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 53
    move-result p1

    .line 56
    int-to-float p1, p1

    .line 57
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 58
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    .line 60
    move-result p1

    .line 63
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSlopMultiplier:F

    .line 64
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 66
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlop:I

    .line 70
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    .line 72
    move-result p1

    .line 75
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlopMultiplier:F

    .line 76
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 78
    move-result p1

    .line 81
    int-to-float p1, p1

    .line 82
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 83
    mul-float/2addr p1, p3

    .line 85
    float-to-long v0, p1

    .line 86
    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 87
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 89
    move-result-object p1

    .line 92
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 93
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 95
    const p1, 0x7f0711eb    # @dimen/swipe_helper_falsing_threshold '70.0dp'

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    move-result p1

    .line 103
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 104
    const p1, 0x7f050031    # @bool/config_fadeDependingOnAmountSwiped 'true'

    .line 106
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 109
    move-result p1

    .line 112
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    .line 113
    iput-object p4, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 115
    iput-object p5, p0, Lcom/android/systemui/SwipeHelper;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 117
    new-instance p1, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 119
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 121
    move-result-object p2

    .line 124
    const-wide/16 p3, 0x190

    .line 125
    long-to-float p3, p3

    .line 127
    const/high16 p4, 0x447a0000    # 1000.0f

    .line 128
    div-float/2addr p3, p4

    .line 130
    invoke-direct {p1, p3, p2}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(FLandroid/util/DisplayMetrics;)V

    .line 131
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 134
    return-void
    .line 136
.end method


# virtual methods
.method public final cancelLongPress()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    return-void
    .line 9
.end method

.method public final dismissChild(Landroid/view/View;FLjava/util/function/Consumer;JZJZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-wide/from16 v8, p4

    .line 4
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 6
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissed(Landroid/view/View;)Z

    .line 8
    move-result v10

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    const/4 v5, 0x0

    .line 23
    cmpl-float v6, p2, v5

    .line 24
    if-nez v6, :cond_2

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 28
    move-result v7

    .line 31
    cmpl-float v7, v7, v5

    .line 32
    if-eqz v7, :cond_1

    .line 34
    if-eqz p9, :cond_2

    .line 36
    :cond_1
    if-eqz v2, :cond_2

    .line 38
    move v2, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v3

    .line 42
    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 43
    move-result v7

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    .line 47
    move-result v11

    .line 50
    cmpl-float v7, v7, v11

    .line 51
    if-lez v7, :cond_3

    .line 53
    cmpg-float v7, p2, v5

    .line 55
    if-ltz v7, :cond_4

    .line 57
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 59
    move-result v7

    .line 62
    cmpg-float v5, v7, v5

    .line 63
    if-gez v5, :cond_5

    .line 65
    if-nez p9, :cond_5

    .line 67
    :cond_4
    move v3, v4

    .line 69
    :cond_5
    if-nez v3, :cond_7

    .line 70
    if-eqz v2, :cond_6

    .line 72
    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 83
    move-result-object v2

    .line 86
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    goto :goto_3

    .line 89
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 98
    move-result-object v2

    .line 101
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    neg-int v2, v2

    .line 104
    :goto_3
    int-to-float v5, v2

    .line 105
    const-wide/16 v11, 0x0

    .line 106
    cmp-long v2, p7, v11

    .line 108
    if-nez v2, :cond_9

    .line 110
    if-eqz v6, :cond_8

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 114
    move-result v2

    .line 117
    sub-float v2, v5, v2

    .line 118
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 120
    move-result v2

    .line 123
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 124
    mul-float/2addr v2, v3

    .line 126
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 127
    move-result v3

    .line 130
    div-float/2addr v2, v3

    .line 131
    float-to-int v2, v2

    .line 132
    int-to-long v2, v2

    .line 133
    const-wide/16 v6, 0x190

    .line 134
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 136
    move-result-wide v2

    .line 139
    goto :goto_4

    .line 140
    :cond_8
    const-wide/16 v2, 0xc8

    .line 141
    goto :goto_4

    .line 143
    :cond_9
    move-wide/from16 v2, p7

    .line 144
    :goto_4
    const/4 v4, 0x2

    .line 146
    const/4 v6, 0x0

    .line 147
    invoke-virtual {p1, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 148
    new-instance v4, Lcom/android/systemui/SwipeHelper$2;

    .line 151
    invoke-direct {v4, p0, p1, v10}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 153
    invoke-virtual {p0, p1, v5, v4}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 156
    move-result-object v13

    .line 159
    if-nez v13, :cond_a

    .line 160
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 162
    move-result-object v0

    .line 165
    const/4 v1, 0x4

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 167
    return-void

    .line 170
    :cond_a
    if-eqz p6, :cond_b

    .line 171
    sget-object v4, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 173
    invoke-virtual {v13, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    invoke-virtual {v13, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 178
    goto :goto_5

    .line 181
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 184
    move-result v4

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 188
    move-result v3

    .line 191
    int-to-float v7, v3

    .line 192
    move-object v3, v13

    .line 193
    move/from16 v6, p2

    .line 194
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 196
    :goto_5
    cmp-long v2, v8, v11

    .line 199
    if-lez v2, :cond_c

    .line 201
    invoke-virtual {v13, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 203
    :cond_c
    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    .line 206
    move-object/from16 v3, p3

    .line 208
    invoke-direct {v2, p0, p1, v10, v3}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/util/function/Consumer;)V

    .line 210
    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    move-object v2, v0

    .line 216
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 217
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 219
    if-eqz v3, :cond_d

    .line 221
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 223
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mIsClearAllInProgress:Z

    .line 225
    if-eqz v2, :cond_d

    .line 227
    move-object v2, v1

    .line 229
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 230
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;

    .line 232
    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 234
    invoke-virtual {v13, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    :cond_d
    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 240
    invoke-virtual {v0, p1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v13}, Landroid/animation/Animator;->start()V

    .line 245
    return-void
    .line 248
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "mTouchedView="

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 13
    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    if-eqz p2, :cond_1

    .line 17
    const-string p2, " key="

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 21
    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    if-nez v0, :cond_0

    .line 29
    const-string v0, "null"

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 46
    :goto_1
    const-string p2, "mIsSwiping="

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 51
    move-result-object p2

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 55
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 57
    const-string p2, "mSnappingChild="

    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 62
    move-result-object p2

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 68
    const-string p2, "mLongPressSent="

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 73
    move-result-object p2

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 77
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    const-string p2, "mInitialTouchPos="

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 84
    move-result-object p2

    .line 87
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 90
    const-string p2, "mTranslation="

    .line 93
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 95
    move-result-object p2

    .line 98
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 99
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 101
    const-string p2, "mCanCurrViewBeDimissed="

    .line 104
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 106
    move-result-object p2

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 110
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 112
    const-string p2, "mMenuRowIntercepting="

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 117
    move-result-object p2

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 121
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 123
    const-string p2, "mDisableHwLayers="

    .line 126
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 128
    move-result-object p2

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 133
    const-string p2, "mDismissPendingMap: "

    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 138
    move-result-object p2

    .line 141
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 142
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 144
    move-result v0

    .line 147
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 148
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 151
    move-result p2

    .line 154
    if-nez p2, :cond_2

    .line 155
    new-instance p2, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda0;

    .line 157
    invoke-direct {p2, p1}, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 159
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 162
    :cond_2
    return-void
    .line 165
.end method

.method public abstract getEscapeVelocity()F
.end method

.method public getMinDismissVelocity()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getSwipeAlpha(F)F
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sub-float/2addr v1, p1

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const p0, 0x3f19999a    # 0.6f

    .line 15
    div-float/2addr p1, p0

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 19
    move-result p0

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 23
    move-result p0

    .line 26
    sub-float/2addr v1, p0

    .line 27
    return v1
    .line 28
.end method

.method public abstract getTranslation(Landroid/view/View;)F
.end method

.method public abstract getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
.end method

.method public final isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 14
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->isFalseGesture()Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    .line 28
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 42
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissedInDirection(Landroid/view/View;)Z

    .line 44
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
    .line 52
.end method

.method public final isFalseGesture()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->isAntiFalsingNeeded()Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 8
    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    .line 10
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    :goto_0
    move v3, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    iget-boolean p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 30
    if-nez p0, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return v3
    .line 35
.end method

.method public abstract onChildSnappedBack(FLandroid/view/View;)V
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 5
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 14
    if-nez v0, :cond_1

    .line 16
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    return v3

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 34
    return v1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eq v4, v3, :cond_d

    .line 48
    const/4 v6, 0x2

    .line 50
    if-eq v4, v6, :cond_2

    .line 51
    const/4 v6, 0x3

    .line 53
    if-eq v4, v6, :cond_d

    .line 54
    const/4 v0, 0x4

    .line 56
    if-eq v4, v0, :cond_2

    .line 57
    goto/16 :goto_5

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 61
    if-eqz v0, :cond_13

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 65
    move-result v0

    .line 68
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 69
    sub-float/2addr v0, v4

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 72
    move-result v4

    .line 75
    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getFalsingThresholdFactor()F

    .line 76
    move-result v6

    .line 79
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 80
    int-to-float v7, v7

    .line 82
    mul-float/2addr v7, v6

    .line 83
    float-to-int v6, v7

    .line 84
    int-to-float v6, v6

    .line 85
    cmpl-float v6, v4, v6

    .line 86
    if-ltz v6, :cond_3

    .line 88
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 90
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 92
    if-eqz v6, :cond_5

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 96
    move-result v0

    .line 99
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlop:I

    .line 100
    if-ne v0, v3, :cond_4

    .line 102
    int-to-float v0, v1

    .line 104
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchSlopMultiplier:F

    .line 105
    mul-float/2addr v0, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    int-to-float v0, v1

    .line 109
    :goto_0
    cmpl-float v0, v4, v0

    .line 110
    if-ltz v0, :cond_13

    .line 112
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 114
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 116
    if-eqz v0, :cond_13

    .line 118
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 122
    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 126
    move-result p1

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    .line 130
    if-eqz v1, :cond_13

    .line 132
    new-instance v1, Landroid/graphics/Point;

    .line 134
    float-to-int v0, v0

    .line 136
    float-to-int p1, p1

    .line 137
    invoke-direct {v1, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 138
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mTargetPoint:Landroid/graphics/Point;

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    .line 143
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->startDragAndDrop(Landroid/view/View;)V

    .line 145
    goto/16 :goto_5

    .line 148
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 150
    cmpl-float v7, v0, v5

    .line 152
    invoke-interface {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissedInDirection(Landroid/view/View;)Z

    .line 154
    move-result v6

    .line 157
    if-nez v6, :cond_8

    .line 158
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    move-result v6

    .line 165
    int-to-float v6, v6

    .line 166
    const v8, 0x3e99999a    # 0.3f

    .line 167
    mul-float/2addr v8, v6

    .line 170
    cmpl-float v9, v4, v6

    .line 171
    if-ltz v9, :cond_7

    .line 173
    if-lez v7, :cond_6

    .line 175
    move v0, v8

    .line 177
    goto :goto_1

    .line 178
    :cond_6
    neg-float v0, v8

    .line 179
    goto :goto_1

    .line 180
    :cond_7
    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getConstrainSwipeStartPosition()I

    .line 181
    move-result v7

    .line 184
    int-to-float v7, v7

    .line 185
    cmpl-float v4, v4, v7

    .line 186
    if-lez v4, :cond_8

    .line 188
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 190
    move-result v4

    .line 193
    mul-float/2addr v4, v7

    .line 194
    float-to-int v4, v4

    .line 195
    int-to-float v4, v4

    .line 196
    sub-float/2addr v0, v4

    .line 197
    div-float/2addr v0, v6

    .line 198
    float-to-double v6, v0

    .line 199
    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 200
    mul-double/2addr v6, v9

    .line 205
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 206
    move-result-wide v6

    .line 209
    double-to-float v0, v6

    .line 210
    mul-float/2addr v8, v0

    .line 211
    add-float v0, v8, v4

    .line 212
    :cond_8
    :goto_1
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 214
    add-float/2addr v4, v0

    .line 216
    cmpl-float v4, v4, v5

    .line 217
    if-eqz v4, :cond_b

    .line 219
    if-lez v4, :cond_9

    .line 221
    move v4, v3

    .line 223
    goto :goto_2

    .line 224
    :cond_9
    const/4 v4, -0x1

    .line 225
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 226
    neg-int v4, v4

    .line 228
    invoke-interface {v2, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDragged(ILandroid/view/View;)Z

    .line 229
    move-result v2

    .line 232
    if-nez v2, :cond_b

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 235
    move-result p1

    .line 238
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 239
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 241
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 243
    if-eqz v0, :cond_a

    .line 245
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 247
    invoke-interface {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->setTranslation(F)V

    .line 249
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 254
    move-result p1

    .line 257
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 258
    return v1

    .line 260
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 261
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 263
    add-float/2addr v1, v0

    .line 265
    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 266
    if-eqz v2, :cond_c

    .line 268
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 270
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->setTranslation(F)V

    .line 272
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 275
    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 279
    move-result v2

    .line 282
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    .line 283
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    .line 288
    move-result-object p1

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    .line 292
    move-result-object v1

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 299
    move-result-object p0

    .line 302
    if-eqz p0, :cond_13

    .line 303
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchMove(F)V

    .line 305
    goto :goto_5

    .line 308
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 309
    if-nez v4, :cond_e

    .line 311
    goto :goto_5

    .line 313
    :cond_e
    const/high16 v4, 0x457a0000    # 4000.0f

    .line 314
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 316
    mul-float/2addr v6, v4

    .line 318
    const/16 v4, 0x3e8

    .line 319
    invoke-virtual {v0, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 321
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 324
    move-result v0

    .line 327
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 328
    invoke-virtual {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 330
    move-object v6, p0

    .line 333
    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 334
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 336
    move-result-object v7

    .line 339
    if-eqz v7, :cond_f

    .line 340
    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEnd()V

    .line 342
    invoke-virtual {v6, p1, v4, v0, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    .line 345
    move v4, v3

    .line 348
    goto :goto_3

    .line 349
    :cond_f
    move v4, v1

    .line 350
    :goto_3
    if-nez v4, :cond_12

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    .line 353
    move-result p1

    .line 356
    if-eqz p1, :cond_11

    .line 357
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    .line 361
    move-result v2

    .line 364
    xor-int/2addr v2, v3

    .line 365
    invoke-virtual {v6, p1, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superDismissChild(Landroid/view/View;FZ)V

    .line 366
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 369
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->shouldDismissQuickly()Z

    .line 371
    move-result v2

    .line 374
    if-eqz v2, :cond_10

    .line 375
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->handleChildViewDismissed(Landroid/view/View;)V

    .line 377
    :cond_10
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDismiss()V

    .line 380
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    .line 383
    goto :goto_4

    .line 386
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 387
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDragCancelled(Landroid/view/View;)V

    .line 389
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 392
    invoke-virtual {p0, p1, v5, v0}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 394
    :goto_4
    const/4 p1, 0x0

    .line 397
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 398
    :cond_12
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 400
    :cond_13
    :goto_5
    return v3
    .line 402
.end method

.method public final resetSwipeStates(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 6
    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 9
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 12
    or-int/2addr p1, v2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    if-eqz v1, :cond_2

    .line 24
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move v1, v3

    .line 28
    :goto_0
    if-eqz v1, :cond_4

    .line 29
    instance-of v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    if-eqz v4, :cond_3

    .line 33
    move-object v4, v0

    .line 35
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 36
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 38
    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 42
    :cond_3
    sget-object v4, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 45
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 47
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 51
    :cond_4
    const/4 v4, 0x0

    .line 54
    if-eqz p1, :cond_5

    .line 55
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/systemui/SwipeHelper;->snapChildIfNeeded(Landroid/view/View;FZ)V

    .line 57
    :cond_5
    if-nez v2, :cond_6

    .line 60
    if-eqz v1, :cond_7

    .line 62
    :cond_6
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/SwipeHelper;->onChildSnappedBack(FLandroid/view/View;)V

    .line 64
    :cond_7
    return-void
    .line 67
.end method

.method public abstract snapChild(Landroid/view/View;FF)V
.end method

.method public final snapChildIfNeeded(Landroid/view/View;FZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 6
    if-eq v0, p1, :cond_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 10
    if-eqz v0, :cond_2

    .line 12
    :cond_1
    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/animation/Animator;

    .line 21
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 26
    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 30
    move-result v0

    .line 33
    cmpl-float v0, v0, v1

    .line 34
    if-eqz v0, :cond_4

    .line 36
    :goto_0
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_4
    const/4 v0, 0x0

    .line 40
    :goto_1
    if-eqz v0, :cond_7

    .line 41
    if-eqz p3, :cond_5

    .line 43
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 45
    goto :goto_2

    .line 48
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 49
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissed(Landroid/view/View;)Z

    .line 51
    move-result p2

    .line 54
    instance-of p3, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 55
    if-eqz p3, :cond_6

    .line 57
    move-object p3, p1

    .line 59
    check-cast p3, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 60
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->setTranslation(F)V

    .line 62
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 65
    move-result p3

    .line 68
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;FZ)V

    .line 69
    :cond_7
    :goto_2
    return-void
    .line 72
.end method

.method public abstract swipedFarEnough()Z
.end method

.method public abstract swipedFastEnough()Z
.end method

.method public final updateSwipeProgressFromOffset(Landroid/view/View;FZ)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    div-float/2addr p2, v0

    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 13
    move-result p2

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    .line 19
    move-result p2

    .line 22
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 23
    invoke-interface {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->updateSwipeProgress(Landroid/view/View;FZ)Z

    .line 25
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    if-eqz p3, :cond_2

    .line 31
    cmpl-float p3, p2, v0

    .line 33
    const/4 v0, 0x0

    .line 35
    if-eqz p3, :cond_0

    .line 36
    cmpl-float p3, p2, v1

    .line 38
    if-eqz p3, :cond_0

    .line 40
    const/4 p3, 0x2

    .line 42
    invoke-virtual {p1, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    const/4 p3, 0x0

    .line 47
    invoke-virtual {p1, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    .line 51
    move-result p0

    .line 54
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 55
    if-eqz p2, :cond_1

    .line 57
    move-object p2, p1

    .line 59
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentAlpha(F)V

    .line 62
    :cond_1
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 65
    if-eqz p0, :cond_2

    .line 67
    move-object p0, p1

    .line 69
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 76
    move-result p2

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 80
    :cond_2
    const-string p0, "SwipeHelper.invalidateGlobalRegion"

    .line 83
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 85
    new-instance p0, Landroid/graphics/RectF;

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 90
    move-result p2

    .line 93
    int-to-float p2, p2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 95
    move-result p3

    .line 98
    int-to-float p3, p3

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 100
    move-result v0

    .line 103
    int-to-float v0, v0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 105
    move-result v1

    .line 108
    int-to-float v1, v1

    .line 109
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 113
    move-result-object p2

    .line 116
    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 119
    move-result-object p2

    .line 122
    instance-of p2, p2, Landroid/view/View;

    .line 123
    if-eqz p2, :cond_3

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 127
    move-result-object p1

    .line 130
    check-cast p1, Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 133
    move-result-object p2

    .line 136
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 137
    iget p2, p0, Landroid/graphics/RectF;->left:F

    .line 140
    float-to-double p2, p2

    .line 142
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    .line 143
    move-result-wide p2

    .line 146
    double-to-int p2, p2

    .line 147
    iget p3, p0, Landroid/graphics/RectF;->top:F

    .line 148
    float-to-double v0, p3

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 151
    move-result-wide v0

    .line 154
    double-to-int p3, v0

    .line 155
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 156
    float-to-double v0, v0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 159
    move-result-wide v0

    .line 162
    double-to-int v0, v0

    .line 163
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 164
    float-to-double v1, v1

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 167
    move-result-wide v1

    .line 170
    double-to-int v1, v1

    .line 171
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 172
    goto :goto_1

    .line 175
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 176
    return-void
    .line 179
.end method
