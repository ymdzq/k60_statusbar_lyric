.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public bouncerShowing:Z

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public isExpanding:Z

.field public leavingLockscreen:Z

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPulsing:Z

.field public mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final mTemp2:[I

.field public pulseExpandAbortListener:Ljava/lang/Runnable;

.field public qsExpanded:Z

.field public stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public touchSlop:F

.field public velocityTracker:Landroid/view/VelocityTracker;

.field public final wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 13
    iput-object p9, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 15
    iput-object p10, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 17
    const/4 p2, 0x2

    .line 19
    new-array p2, p2, [I

    .line 20
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p2

    .line 27
    const p3, 0x7f07046c    # @dimen/keyguard_drag_down_min_distance '100.0dp'

    .line 28
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 34
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 38
    move-result p2

    .line 41
    int-to-float p2, p2

    .line 42
    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->touchSlop:F

    .line 43
    new-instance p2, Lcom/android/systemui/statusbar/PulseExpansionHandler$1;

    .line 45
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Landroid/content/Context;)V

    .line 47
    check-cast p5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 50
    invoke-virtual {p5, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 52
    new-instance p2, Lcom/android/systemui/statusbar/PulseExpansionHandler$2;

    .line 55
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler$2;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    .line 57
    invoke-virtual {p8, p2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 60
    const-class p2, Landroid/os/PowerManager;

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 68
    check-cast p1, Landroid/os/PowerManager;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 71
    invoke-virtual {p11, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 73
    return-void
    .line 76
.end method


# virtual methods
.method public final cancelExpansion()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    const/16 v2, 0x177

    .line 18
    int-to-long v2, v2

    .line 20
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;J)V

    .line 21
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 27
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->finishPulseAnimation(Z)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 33
    invoke-virtual {p0, v0, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 35
    return-void
    .line 38
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "PulseExpansionHandler:"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 17
    const-string v0, "isExpanding: "

    .line 19
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 21
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 24
    const-string v0, "leavingLockscreen: "

    .line 26
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 28
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    .line 31
    const-string v0, "mPulsing: "

    .line 33
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 35
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    .line 38
    const-string v0, "qsExpanded: "

    .line 40
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 42
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    .line 45
    const-string p1, "bouncerShowing: "

    .line 47
    invoke-static {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 49
    return-void
    .line 52
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->startExpansion(Landroid/view/MotionEvent;)Z

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_1
    return v1
    .line 33
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v0, v3, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v0

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 24
    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    .line 28
    move-result v4

    .line 31
    if-ne v4, v2, :cond_2

    .line 32
    move v4, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v4, v1

    .line 36
    :goto_1
    if-nez v4, :cond_4

    .line 37
    iget-object v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 39
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move v4, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    :goto_2
    move v4, v2

    .line 50
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 51
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    .line 53
    move-result v6

    .line 56
    if-eqz v6, :cond_5

    .line 57
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    .line 59
    if-nez v6, :cond_5

    .line 61
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    .line 63
    if-nez v6, :cond_5

    .line 65
    move v6, v2

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    move v6, v1

    .line 69
    :goto_4
    if-eqz v6, :cond_6

    .line 70
    if-nez v4, :cond_7

    .line 72
    :cond_6
    if-nez v0, :cond_7

    .line 74
    return v1

    .line 76
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 77
    if-eqz v0, :cond_18

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 81
    if-eqz v0, :cond_18

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 85
    move-result v0

    .line 88
    if-nez v0, :cond_8

    .line 89
    goto/16 :goto_b

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 93
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 101
    move-result v0

    .line 104
    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 105
    sub-float/2addr v0, v4

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 108
    move-result p1

    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v6, 0x0

    .line 113
    iget-object v7, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 114
    const/4 v8, 0x2

    .line 116
    if-eq p1, v2, :cond_e

    .line 117
    if-eq p1, v8, :cond_b

    .line 119
    if-eq p1, v3, :cond_9

    .line 121
    goto/16 :goto_a

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 128
    if-eqz p1, :cond_a

    .line 130
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 132
    :cond_a
    iput-object v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 135
    goto/16 :goto_a

    .line 137
    :cond_b
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    .line 139
    move-result p1

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 143
    if-eqz v3, :cond_c

    .line 145
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 147
    move-result v0

    .line 150
    int-to-float v0, v0

    .line 151
    add-float/2addr v0, p1

    .line 152
    float-to-int v0, v0

    .line 153
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 154
    move-result v2

    .line 157
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 158
    move-result v0

    .line 161
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 162
    goto :goto_6

    .line 165
    :cond_c
    iget v3, v7, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistance:I

    .line 166
    int-to-float v3, v3

    .line 168
    cmpl-float v0, v0, v3

    .line 169
    if-lez v0, :cond_d

    .line 171
    move v0, v2

    .line 173
    goto :goto_5

    .line 174
    :cond_d
    move v0, v1

    .line 175
    :goto_5
    invoke-virtual {v5, v0, v2, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 176
    :goto_6
    invoke-virtual {v7, p1, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    .line 179
    goto/16 :goto_a

    .line 182
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 184
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    const/16 v3, 0x3e8

    .line 189
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 191
    cmpl-float p1, v0, v4

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 196
    if-lez p1, :cond_f

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 200
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 205
    move-result p1

    .line 208
    const/high16 v3, -0x3b860000    # -1000.0f

    .line 209
    cmpl-float p1, p1, v3

    .line 211
    if-lez p1, :cond_f

    .line 213
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 215
    move-result p1

    .line 218
    if-eqz p1, :cond_f

    .line 219
    move p1, v2

    .line 221
    goto :goto_7

    .line 222
    :cond_f
    move p1, v1

    .line 223
    :goto_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 224
    invoke-interface {v3}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 226
    move-result v9

    .line 229
    if-nez v9, :cond_15

    .line 230
    invoke-interface {v3, v8}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 232
    move-result v3

    .line 235
    if-nez v3, :cond_15

    .line 236
    if-eqz p1, :cond_15

    .line 238
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 240
    if-eqz p1, :cond_11

    .line 242
    instance-of v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 244
    if-eqz v3, :cond_10

    .line 246
    move-object v3, p1

    .line 248
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 249
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 251
    :cond_10
    iput-object v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 254
    :cond_11
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 256
    move-result v0

    .line 259
    if-eqz v0, :cond_14

    .line 260
    iget v0, v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 262
    cmpg-float v0, v0, v4

    .line 264
    if-nez v0, :cond_12

    .line 266
    move v0, v2

    .line 268
    goto :goto_8

    .line 269
    :cond_12
    move v0, v1

    .line 270
    :goto_8
    if-nez v0, :cond_13

    .line 271
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    .line 273
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 275
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 280
    move-result-wide v3

    .line 283
    const/4 v5, 0x4

    .line 284
    const-string v8, "com.android.systemui:PULSEDRAG"

    .line 285
    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 287
    :cond_14
    invoke-virtual {v7, p1, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    .line 290
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->finishPulseAnimation(Z)V

    .line 293
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 298
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 301
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 303
    if-eqz v0, :cond_16

    .line 305
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 307
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 312
    goto :goto_9

    .line 315
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 316
    :cond_16
    :goto_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 319
    if-eqz p1, :cond_17

    .line 321
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 323
    :cond_17
    iput-object v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 326
    :goto_a
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 328
    return p0

    .line 330
    :cond_18
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->startExpansion(Landroid/view/MotionEvent;)Z

    .line 331
    move-result p0

    .line 334
    return p0
    .line 335
.end method

.method public final reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 6
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 19
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 23
    move-result v0

    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 27
    move-result v1

    .line 30
    filled-new-array {v0, v1}, [I

    .line 31
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 35
    move-result-object v0

    .line 38
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 39
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    new-instance p2, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;

    .line 47
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 49
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    new-instance p2, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;

    .line 55
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 57
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    return-void
    .line 66
.end method

.method public final setExpanding(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 11
    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 13
    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    .line 15
    if-eqz v0, :cond_3

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 21
    iget-object v0, p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logPulseExpansionStarted()V

    .line 25
    iget-object p1, p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeightAnimator:Landroid/animation/ValueAnimator;

    .line 28
    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logAnimationCancelled(Z)V

    .line 38
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 45
    if-nez p1, :cond_2

    .line 47
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    .line 52
    if-eqz p1, :cond_2

    .line 54
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 56
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)Z

    .line 61
    :cond_3
    return-void
    .line 64
.end method

.method public final startExpansion(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result v1

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 28
    move-result p1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz p1, :cond_a

    .line 34
    const/4 v4, 0x1

    .line 36
    if-eq p1, v4, :cond_8

    .line 37
    const/4 v5, 0x2

    .line 39
    if-eq p1, v5, :cond_3

    .line 40
    const/4 v0, 0x3

    .line 42
    if-eq p1, v0, :cond_1

    .line 43
    goto/16 :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 47
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 51
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 54
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 56
    goto/16 :goto_0

    .line 59
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 61
    sub-float p1, v1, p1

    .line 63
    iget v5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->touchSlop:F

    .line 65
    cmpl-float v5, p1, v5

    .line 67
    if-lez v5, :cond_b

    .line 69
    iget v5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 71
    sub-float v5, v0, v5

    .line 73
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 75
    move-result v5

    .line 78
    cmpl-float p1, p1, v5

    .line 79
    if-lez p1, :cond_b

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 88
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 91
    iget v5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 93
    iget-object v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 95
    if-nez v6, :cond_7

    .line 97
    iget-object v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 99
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 101
    move-result v6

    .line 104
    if-nez v6, :cond_7

    .line 105
    iget-object v6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 107
    if-nez v6, :cond_4

    .line 109
    move-object v6, v2

    .line 111
    :cond_4
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 112
    iget-object v7, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    .line 114
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 116
    aget v3, v7, v3

    .line 119
    int-to-float v3, v3

    .line 121
    add-float/2addr p1, v3

    .line 122
    aget v3, v7, v4

    .line 123
    int-to-float v3, v3

    .line 125
    add-float/2addr v5, v3

    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 127
    if-nez v3, :cond_5

    .line 129
    move-object v3, v2

    .line 131
    :cond_5
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 132
    invoke-virtual {v3, p1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 134
    move-result-object p1

    .line 137
    if-eqz p1, :cond_6

    .line 138
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    .line 140
    move-result v3

    .line 143
    if-eqz v3, :cond_6

    .line 144
    move-object v2, p1

    .line 146
    :cond_6
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 147
    if-eqz v2, :cond_7

    .line 149
    instance-of p1, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 151
    if-eqz p1, :cond_7

    .line 153
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 155
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 157
    :cond_7
    iput v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 160
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 162
    return v4

    .line 164
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 165
    if-eqz p1, :cond_9

    .line 167
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 169
    :cond_9
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 174
    goto :goto_0

    .line 177
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 178
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 181
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 183
    iput v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 185
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 187
    :cond_b
    :goto_0
    return v3
    .line 189
.end method
