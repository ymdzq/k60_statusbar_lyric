.class public final Lcom/android/systemui/statusbar/notification/modal/ModalController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public isAnimating:Z

.field public isModal:Z

.field public mDownEventInjected:Z

.field public mFromView:Landroid/view/View;

.field public mIsMiPlayModal:Z

.field public mShowMenu:Z

.field public mStatusBarState:Ljava/lang/Integer;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public modalRowInflater:Lcom/android/systemui/statusbar/notification/modal/ModalRowInflater;

.field public final modalWindowManager:Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;

.field public modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

.field public final onModalChangeListeners:Ljava/util/ArrayList;

.field public final pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowManager:Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->onModalChangeListeners:Ljava/util/ArrayList;

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object p2

    .line 25
    const p5, 0x7f0d01bf    # @layout/miui_modal_window 'res/layout/miui_modal_window.xml'

    .line 26
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 33
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 34
    move-result p5

    .line 37
    if-eqz p5, :cond_0

    .line 38
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->clearContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 44
    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalController$enterModal$1;

    .line 47
    const/4 p5, 0x1

    .line 49
    invoke-direct {p1, p0, p5}, Lcom/android/systemui/statusbar/notification/modal/ModalController$enterModal$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;I)V

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-boolean p1, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->added:Z

    .line 56
    if-eqz p1, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 61
    const/4 v1, -0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    const/16 v5, 0x7e1

    .line 67
    const v6, -0x7e7afed8

    .line 69
    const/4 v7, -0x3

    .line 72
    move-object v0, p1

    .line 73
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 74
    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 77
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 79
    or-int/lit8 v0, v0, 0x40

    .line 81
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 83
    const-string v0, "NotificationModalWindowManager"

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 90
    const/16 v0, 0x700

    .line 92
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 94
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 96
    const v1, 0x8000

    .line 98
    or-int/2addr v0, v1

    .line 101
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 102
    const/4 v0, 0x3

    .line 104
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 105
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 108
    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 111
    iget-object v0, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 113
    invoke-interface {v0, p2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 118
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 120
    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 123
    iget-object v0, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 127
    iput-object p2, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    .line 130
    iput-boolean p5, p4, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->added:Z

    .line 132
    :goto_1
    const p1, 0x7f0a0616    # @id/modal_window_view

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p1

    .line 140
    check-cast p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 143
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;

    .line 145
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalLifetimeExtender;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;)V

    .line 147
    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 150
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalController$1;

    .line 153
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalController$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;)V

    .line 155
    invoke-interface {p3, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 158
    return-void
    .line 161
.end method

.method public static synthetic animExitModal$default(Lcom/android/systemui/statusbar/notification/modal/ModalController;JLjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v3, 0x1

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-object v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(JZLjava/lang/String;Z)V

    .line 7
    return-void
    .line 10
.end method

.method public static startAnimator(Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;Landroid/animation/Animator$AnimatorListener;J)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance p2, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 15
    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    .line 17
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 36
.end method


# virtual methods
.method public final animExitModal(JZLjava/lang/String;Z)V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeModalDialogImmediately()V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    .line 4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_3

    .line 5
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_4

    move v5, v0

    goto :goto_1

    :cond_4
    move v5, v2

    .line 6
    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->exitModal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 7
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowManager:Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 8
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->apply()V

    .line 10
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mIsMiPlayModal:Z

    if-eqz v3, :cond_9

    .line 11
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mStatusBarState:Ljava/lang/Integer;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "notification"

    goto :goto_3

    :cond_7
    :goto_2
    const-string v3, "keyguard"

    .line 12
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    if-nez v4, :cond_8

    move-object v4, v1

    :cond_8
    invoke-virtual {v4, v1, v3, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->showMiPlay(Landroid/view/View;Ljava/lang/String;Z)V

    .line 13
    :cond_9
    new-instance v3, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;I)V

    .line 14
    new-instance v5, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;

    invoke-direct {v5, p0, p4}, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$animatorListener$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;Ljava/lang/String;)V

    if-eqz p3, :cond_a

    move-object v1, v5

    .line 15
    :cond_a
    invoke-static {v3, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->startAnimator(Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;Landroid/animation/Animator$AnimatorListener;J)V

    if-nez p5, :cond_b

    new-array p3, v4, [F

    .line 16
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 p4, 0x96

    sub-long/2addr p1, p4

    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 18
    invoke-virtual {p3, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    new-instance p1, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalController$animExitModal$1$1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;I)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 22
    :cond_b
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    :cond_c
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final animExitModal(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v1, 0x12c

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(JZLjava/lang/String;Z)V

    return-void
.end method

.method public final exitModal(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v2, Lcom/miui/systemui/events/ExitModalEvent;

    .line 19
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 21
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 27
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    invoke-direct {v2, v3, v4, v1, p1}, Lcom/miui/systemui/events/ExitModalEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 38
    invoke-interface {p1, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mIsMiPlayModal:Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowManager:Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;

    .line 48
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    .line 50
    const/16 v2, 0x8

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 57
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    or-int/2addr v2, v3

    .line 63
    const v3, -0x20001

    .line 64
    and-int/2addr v2, v3

    .line 67
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->apply()V

    .line 70
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->onModalChangeListeners:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p0

    .line 83
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/systemui/statusbar/notification/modal/ModalController$OnModalChangeListener;

    .line 94
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalController$OnModalChangeListener;->onChange(Z)V

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    return-void
    .line 100
.end method

.method public final exitModalImmediately()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 7
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    move-object v1, v2

    .line 12
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 13
    if-eqz v3, :cond_2

    .line 15
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 17
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    move-result-object v2

    .line 22
    :cond_2
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_3

    .line 24
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    move v2, v3

    .line 28
    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->exitModal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 29
    sget-object v0, Lcom/miui/systemui/events/ModalExitMode;->DOWNPULL:Lcom/miui/systemui/events/ModalExitMode;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->exitModal(Ljava/lang/String;)V

    .line 38
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isAnimating:Z

    .line 41
    return-void
    .line 43
.end method

.method public final maybeDispatchMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->isModal:Z

    .line 2
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mDownEventInjected:Z

    .line 9
    const/4 v4, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 18
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 21
    if-nez v5, :cond_0

    .line 23
    move-object v5, v4

    .line 25
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 29
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mDownEventInjected:Z

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 34
    move-result v0

    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 40
    if-nez v0, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    move-object v4, v0

    .line 45
    :goto_0
    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    goto :goto_2

    .line 49
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 54
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 57
    if-nez v5, :cond_4

    .line 59
    goto :goto_1

    .line 61
    :cond_4
    move-object v4, v5

    .line 62
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 66
    :goto_2
    move v0, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move v0, v3

    .line 71
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 72
    move-result v4

    .line 75
    if-eq v4, v2, :cond_6

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 78
    move-result p1

    .line 81
    if-ne p1, v1, :cond_7

    .line 82
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mDownEventInjected:Z

    .line 84
    :cond_7
    return v0
    .line 86
.end method
