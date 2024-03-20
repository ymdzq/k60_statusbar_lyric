.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;


# static fields
.field protected static final COVER_MENU_DELAY:J = 0xfa0L

.field public static final SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public final mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field public mCurrMenuRowRef:Ljava/lang/ref/WeakReference;

.field public final mFalsingCheck:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

.field public mIsExpanded:Z

.field public mMenuExposedView:Landroid/view/View;

.field public final mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field public final mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public mPulsing:Z

.field public mTranslatingParentView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 2
    const-string v1, "SwipeDismiss"

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p5

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/SwipeHelper;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 8
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 15
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mFalsingCheck:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

    .line 22
    return-void
    .line 24
.end method

.method public static isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    .line 10
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 13
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v1

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 22
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 27
    move-result p1

    .line 30
    float-to-int p1, p1

    .line 31
    const/4 v3, 0x2

    .line 32
    new-array v3, v3, [I

    .line 33
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 35
    aget v0, v3, v0

    .line 38
    const/4 v4, 0x1

    .line 40
    aget v3, v3, v4

    .line 41
    new-instance v4, Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result p0

    .line 48
    add-int/2addr p0, v0

    .line 49
    add-int/2addr v1, v3

    .line 50
    invoke-direct {v4, v0, v3, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    invoke-virtual {v4, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 54
    move-result p0

    .line 57
    return p0
    .line 58
.end method


# virtual methods
.method public createTranslationAnimation(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 2

    .line 1
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 2
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v1, 0x0

    .line 7
    aput p2, v0, v1

    .line 8
    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    :cond_0
    return-object p0
    .line 19
.end method

.method public final dismiss(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFastEnough()Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superDismissChild(Landroid/view/View;FZ)V

    .line 8
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 11
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->shouldDismissQuickly()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->handleChildViewDismissed(Landroid/view/View;)V

    .line 19
    :cond_0
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDismiss()V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    .line 25
    return-void
    .line 28
.end method

.method public final getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRowRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 12
    return-object p0
    .line 14
.end method

.method public getEscapeVelocity()F
    .locals 1

    .line 1
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 2
    iget p0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 4
    mul-float/2addr p0, v0

    .line 6
    return p0
    .line 7
.end method

.method public getFalsingCheck()Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mFalsingCheck:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$$ExternalSyntheticLambda0;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTranslation(Landroid/view/View;)F
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->getTranslation()F

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 8
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 17
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->createTranslationAnimation(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 22
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
    .line 26
.end method

.method public handleMenuCoveredOrDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    .line 11
    :cond_0
    return-void
    .line 13
.end method

.method public handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 9

    .line 1
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowMenu()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 18
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    .line 21
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isSnappedAndOnSameSide()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    .line 31
    move-result p1

    .line 34
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isWithinSnapMenuThreshold()Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    if-nez p1, :cond_2

    .line 41
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    .line 43
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    .line 46
    move-result p1

    .line 49
    int-to-float p1, p1

    .line 50
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 51
    goto/16 :goto_e

    .line 54
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldSnapBack()Z

    .line 58
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 64
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    .line 67
    goto/16 :goto_e

    .line 70
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 72
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    .line 75
    goto/16 :goto_e

    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    .line 80
    move-result v0

    .line 83
    invoke-interface {p4, p3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isTowardsMenu(F)Z

    .line 84
    move-result v1

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getEscapeVelocity()F

    .line 88
    move-result v2

    .line 91
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 92
    move-result v3

    .line 95
    cmpg-float v2, v2, v3

    .line 96
    const/4 v3, 0x1

    .line 98
    const/4 v4, 0x0

    .line 99
    if-gtz v2, :cond_5

    .line 100
    move v2, v3

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move v2, v4

    .line 104
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 105
    move-result-wide v5

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 109
    move-result-wide v7

    .line 112
    sub-long/2addr v5, v7

    .line 113
    long-to-double v5, v5

    .line 114
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->canBeDismissed()Z

    .line 115
    move-result p1

    .line 118
    if-nez p1, :cond_6

    .line 119
    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    .line 121
    cmpl-double p1, v5, v7

    .line 123
    if-ltz p1, :cond_6

    .line 125
    move p1, v3

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    move p1, v4

    .line 129
    :goto_2
    if-eqz v1, :cond_7

    .line 130
    if-nez v0, :cond_7

    .line 132
    move v5, v3

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move v5, v4

    .line 136
    :goto_3
    if-eqz v2, :cond_9

    .line 137
    if-eqz p1, :cond_8

    .line 139
    goto :goto_4

    .line 141
    :cond_8
    move p1, v4

    .line 142
    goto :goto_5

    .line 143
    :cond_9
    :goto_4
    move p1, v3

    .line 144
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->swipedFarEnough()Z

    .line 145
    move-result v6

    .line 148
    if-nez v6, :cond_a

    .line 149
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isSwipedEnoughToShowMenu()Z

    .line 151
    move-result v6

    .line 154
    if-eqz v6, :cond_a

    .line 155
    move v6, v3

    .line 157
    goto :goto_6

    .line 158
    :cond_a
    move v6, v4

    .line 159
    :goto_6
    if-eqz v6, :cond_b

    .line 160
    if-eqz p1, :cond_b

    .line 162
    move p1, v3

    .line 164
    goto :goto_7

    .line 165
    :cond_b
    move p1, v4

    .line 166
    :goto_7
    if-eqz v2, :cond_c

    .line 167
    if-nez v1, :cond_c

    .line 169
    if-nez v0, :cond_c

    .line 171
    move v2, v3

    .line 173
    goto :goto_8

    .line 174
    :cond_c
    move v2, v4

    .line 175
    :goto_8
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowGutsOnSnapOpen()Z

    .line 176
    move-result v6

    .line 179
    if-nez v6, :cond_e

    .line 180
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mIsExpanded:Z

    .line 182
    if-eqz v6, :cond_d

    .line 184
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mPulsing:Z

    .line 186
    if-nez v6, :cond_d

    .line 188
    goto :goto_9

    .line 190
    :cond_d
    move v6, v4

    .line 191
    goto :goto_a

    .line 192
    :cond_e
    :goto_9
    move v6, v3

    .line 193
    :goto_a
    if-nez p1, :cond_10

    .line 194
    if-eqz v2, :cond_f

    .line 196
    if-eqz v6, :cond_f

    .line 198
    goto :goto_b

    .line 200
    :cond_f
    move p1, v4

    .line 201
    goto :goto_c

    .line 202
    :cond_10
    :goto_b
    move p1, v3

    .line 203
    :goto_c
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    .line 204
    move-result v2

    .line 207
    if-eqz p1, :cond_11

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->isFalseGesture()Z

    .line 210
    move-result p1

    .line 213
    if-nez p1, :cond_11

    .line 214
    goto :goto_d

    .line 216
    :cond_11
    move v3, v4

    .line 217
    :goto_d
    if-nez v5, :cond_12

    .line 218
    if-eqz v3, :cond_13

    .line 220
    :cond_12
    if-eqz v2, :cond_13

    .line 222
    int-to-float p1, v2

    .line 224
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 225
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    .line 228
    goto :goto_e

    .line 231
    :cond_13
    if-eqz v0, :cond_14

    .line 232
    if-nez v1, :cond_14

    .line 234
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 236
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    .line 239
    goto :goto_e

    .line 242
    :cond_14
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 243
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    .line 246
    :goto_e
    return-void
    .line 249
.end method

.method public initializeRow(Lcom/android/systemui/statusbar/notification/stack/SwipeableView;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->hasFinishedInitialization()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    .line 12
    if-eqz p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 17
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchStart()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onChildSnappedBack(FLandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onChildSnappedBack(FLandroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 7
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 13
    cmpl-float p1, p1, v0

    .line 14
    if-nez p1, :cond_0

    .line 16
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 18
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 25
    move-result-object p0

    .line 28
    const/4 p1, 0x4

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 30
    return-void
    .line 33
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 4
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 18
    invoke-interface {v1, v2, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 20
    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v3, 0x0

    .line 32
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mPerformLongPress:Lcom/android/systemui/SwipeHelper$1;

    .line 33
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 35
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 37
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    if-eqz v1, :cond_8

    .line 41
    if-eq v1, v7, :cond_5

    .line 43
    const/4 v9, 0x2

    .line 45
    if-eq v1, v9, :cond_1

    .line 46
    const/4 p1, 0x3

    .line 48
    if-eq v1, p1, :cond_5

    .line 49
    goto/16 :goto_3

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 53
    if-eqz v1, :cond_b

    .line 55
    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 57
    if-nez v1, :cond_b

    .line 59
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 64
    move-result v1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 68
    move-result v5

    .line 71
    iget v10, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 72
    sub-float/2addr v1, v10

    .line 74
    iget v10, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 75
    sub-float/2addr v5, v10

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 78
    move-result v10

    .line 81
    if-ne v10, v7, :cond_2

    .line 82
    iget v10, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 84
    iget v11, p0, Lcom/android/systemui/SwipeHelper;->mSlopMultiplier:F

    .line 86
    mul-float/2addr v10, v11

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget v10, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 90
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 92
    move-result v11

    .line 95
    cmpl-float v10, v11, v10

    .line 96
    if-lez v10, :cond_4

    .line 98
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 100
    move-result v10

    .line 103
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 104
    move-result v5

    .line 107
    cmpl-float v5, v10, v5

    .line 108
    if-lez v5, :cond_4

    .line 110
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 112
    neg-float v1, v1

    .line 114
    float-to-int v1, v1

    .line 115
    invoke-interface {v6, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDragged(ILandroid/view/View;)Z

    .line 116
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 122
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 124
    invoke-interface {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onBeginDrag(Landroid/view/View;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 129
    move-result p1

    .line 132
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 133
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 137
    move-result p1

    .line 140
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 143
    goto/16 :goto_3

    .line 146
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 148
    move-result p1

    .line 151
    if-ne p1, v9, :cond_b

    .line 152
    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 154
    move-result p1

    .line 157
    if-eqz p1, :cond_b

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 160
    invoke-virtual {v4}, Lcom/android/systemui/SwipeHelper$1;->run()V

    .line 163
    goto/16 :goto_3

    .line 166
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 168
    if-nez p1, :cond_7

    .line 170
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 172
    if-nez p1, :cond_7

    .line 174
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 176
    if-eqz p1, :cond_6

    .line 178
    goto :goto_1

    .line 180
    :cond_6
    move p1, v8

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    :goto_1
    move p1, v7

    .line 183
    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 184
    invoke-interface {v6, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onLongPressSent(Landroid/view/View;)V

    .line 186
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 189
    invoke-virtual {p0, v8}, Lcom/android/systemui/SwipeHelper;->resetSwipeStates(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 194
    if-eqz p1, :cond_b

    .line 197
    goto/16 :goto_4

    .line 199
    :cond_8
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 201
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 203
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 205
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 207
    invoke-interface {v6, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onLongPressSent(Landroid/view/View;)V

    .line 209
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 215
    invoke-interface {v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 218
    move-result-object v1

    .line 221
    iput-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 222
    if-eqz v1, :cond_b

    .line 224
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 228
    move-result-object v9

    .line 231
    if-eqz v9, :cond_9

    .line 232
    invoke-interface {v9}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchStart()V

    .line 234
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getHandler()Landroid/os/Handler;

    .line 240
    move-result-object v9

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getFalsingCheck()Ljava/lang/Runnable;

    .line 244
    move-result-object v10

    .line 247
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 251
    instance-of v9, v1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 254
    if-eqz v9, :cond_a

    .line 256
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->initializeRow(Lcom/android/systemui/statusbar/notification/stack/SwipeableView;)V

    .line 260
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 263
    invoke-interface {v6, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissed(Landroid/view/View;)Z

    .line 265
    move-result v1

    .line 268
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 269
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 274
    move-result v1

    .line 277
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 280
    move-result v1

    .line 283
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 284
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 288
    move-result v1

    .line 291
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 294
    move-result v1

    .line 297
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mDownLocation:[F

    .line 298
    aput v1, v5, v8

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 302
    move-result p1

    .line 305
    aput p1, v5, v7

    .line 306
    iget-wide v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 308
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    :cond_b
    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 313
    if-nez p1, :cond_d

    .line 315
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 317
    if-nez p1, :cond_d

    .line 319
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 321
    if-eqz p1, :cond_c

    .line 323
    goto :goto_4

    .line 325
    :cond_c
    move v7, v8

    .line 326
    :cond_d
    :goto_4
    iget-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 327
    if-eqz p1, :cond_e

    .line 329
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 331
    :cond_e
    if-nez v0, :cond_f

    .line 333
    if-eqz v3, :cond_f

    .line 335
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 337
    move-result-object p0

    .line 340
    const/4 p1, 0x4

    .line 341
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 342
    :cond_f
    return v7
    .line 345
.end method

.method public final resetExposedMenuView(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->shouldResetMenu(Z)Z

    .line 2
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    .line 9
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    .line 15
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    instance-of p1, p2, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 25
    if-eqz p1, :cond_2

    .line 27
    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 29
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->isRemoved()Z

    .line 31
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;->resetTranslation()V

    .line 37
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    .line 40
    return-void
    .line 42
.end method

.method public setCurrentMenuRow(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCurrMenuRowRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
    .line 13
.end method

.method public setTranslatingParentView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 2
    return-void
    .line 4
.end method

.method public shouldResetMenu(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mMenuExposedView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 8
    if-ne v0, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public final snapChild(Landroid/view/View;FF)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/SwipeableView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->superSnapChild(Landroid/view/View;FF)V

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 9
    invoke-interface {p3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onDragCancelled(Landroid/view/View;)V

    .line 11
    const/4 p1, 0x0

    .line 14
    cmpl-float p1, p2, p1

    .line 15
    if-nez p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->handleMenuCoveredOrDismissed()V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public snapClosed(Landroid/view/View;F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 3
    return-void
    .line 6
.end method

.method public final snapOpen(Landroid/view/View;IF)V
    .locals 0

    .line 1
    int-to-float p2, p2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 3
    return-void
    .line 6
.end method

.method public final snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onSnooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 4
    return-void
    .line 7
.end method

.method public superDismissChild(Landroid/view/View;FZ)V
    .locals 10

    .line 1
    const/4 v3, 0x0

    .line 2
    const-wide/16 v4, 0x0

    .line 3
    const-wide/16 v7, 0x0

    .line 5
    const/4 v9, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move v6, p3

    .line 11
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/util/function/Consumer;JZJZ)V

    .line 12
    return-void
    .line 15
.end method

.method public superSnapChild(Landroid/view/View;FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->canChildBeDismissed(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 7
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 19
    :cond_0
    sget-object v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 22
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 28
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mSnapBackSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 33
    if-eqz v1, :cond_1

    .line 35
    move-object v1, p1

    .line 37
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 38
    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 40
    move-result-object v1

    .line 43
    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->TRANSLATE_CONTENT:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;

    .line 44
    new-instance v4, Landroidx/dynamicanimation/animation/FloatPropertyCompat$1;

    .line 46
    invoke-virtual {v3}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    .line 48
    invoke-direct {v4, v3}, Landroidx/dynamicanimation/animation/FloatPropertyCompat$1;-><init>(Landroid/util/FloatProperty;)V

    .line 51
    invoke-virtual {v1, v4, p2, p3, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 58
    move-result-object v1

    .line 61
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 62
    invoke-virtual {v1, v3, p2, p3, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 64
    :goto_0
    new-instance p3, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;

    .line 67
    invoke-direct {p3, p0, v0}, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/SwipeHelper;Z)V

    .line 69
    iget-object v2, v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance p3, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;

    .line 77
    invoke-direct {p3, p0, p1, v0, p2}, Lcom/android/systemui/SwipeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    .line 79
    iget-object p1, v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 88
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 90
    return-void
    .line 93
.end method

.method public swipedFarEnough()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 4
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    move-result p0

    .line 17
    int-to-float p0, p0

    .line 18
    const v1, 0x3f19999a    # 0.6f

    .line 19
    mul-float/2addr p0, v1

    .line 22
    cmpl-float p0, v0, p0

    .line 23
    if-lez p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

.method public swipedFastEnough()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    .line 10
    move-result v1

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result v2

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getEscapeVelocity()F

    .line 18
    move-result p0

    .line 21
    cmpl-float p0, v2, p0

    .line 22
    const/4 v2, 0x0

    .line 24
    if-lez p0, :cond_2

    .line 25
    const/4 p0, 0x0

    .line 27
    cmpl-float v0, v0, p0

    .line 28
    const/4 v3, 0x1

    .line 30
    if-lez v0, :cond_0

    .line 31
    move v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v2

    .line 35
    :goto_0
    cmpl-float p0, v1, p0

    .line 36
    if-lez p0, :cond_1

    .line 38
    move p0, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move p0, v2

    .line 42
    :goto_1
    if-ne v0, p0, :cond_2

    .line 43
    move v2, v3

    .line 45
    :cond_2
    return v2
    .line 46
.end method
