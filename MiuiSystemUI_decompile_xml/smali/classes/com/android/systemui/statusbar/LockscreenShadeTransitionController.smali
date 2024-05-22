.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

.field public final callbacks:Ljava/util/List;

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final context:Landroid/content/Context;

.field public dragDownAmount:F

.field public dragDownAnimator:Landroid/animation/ValueAnimator;

.field public draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public forceApplyAmount:Z

.field public fractionToShade:F

.field public fullTransitionDistance:I

.field public fullTransitionDistanceByTap:I

.field public isWakingToShadeLocked:Z

.field public final keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final keyguardTransitionControllerFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;

.field public final lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

.field public mUdfpsKeyguardViewControllerLegacy:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

.field public final mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

.field public nextHideKeyguardNeedsNoAnimation:Z

.field public notificationShelfTransitionDistance:I

.field public nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final phoneShadeOverScroller$delegate:Lkotlin/Lazy;

.field public pulseHeight:F

.field public pulseHeightAnimator:Landroid/animation/ValueAnimator;

.field public qS:Lcom/android/systemui/plugins/qs/QS;

.field public final qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final singleShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;

.field public final splitShadeOverScroller$delegate:Lkotlin/Lazy;

.field public final splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public statusBarTransitionDistance:I

.field public final touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field public udfpsTransitionDistance:I

.field public useSplitShade:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;Landroid/content/Context;Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController$Factory;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p5

    .line 4
    move-object v3, p9

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    move-object v4, p2

    .line 11
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 12
    move-object v4, p3

    .line 14
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 15
    move-object v4, p4

    .line 17
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 18
    iput-object v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 20
    move-object v4, p6

    .line 22
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 23
    move-object v4, p7

    .line 25
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 26
    move-object v4, p8

    .line 28
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardTransitionControllerFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;

    .line 29
    iput-object v3, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    .line 31
    move-object/from16 v4, p10

    .line 33
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;

    .line 35
    move-object/from16 v4, p11

    .line 37
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->singleShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;

    .line 39
    move-object/from16 v4, p12

    .line 41
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 43
    move-object/from16 v4, p18

    .line 45
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 47
    new-instance v4, Lcom/android/systemui/statusbar/DragDownHelper;

    .line 49
    move-object/from16 v5, p15

    .line 51
    invoke-direct {v4, v5, p5, p0, p9}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Landroid/content/Context;)V

    .line 53
    iput-object v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 56
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$splitShadeOverScroller$2;

    .line 58
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$splitShadeOverScroller$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 60
    invoke-static {v2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    move-result-object v2

    .line 66
    iput-object v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScroller$delegate:Lkotlin/Lazy;

    .line 67
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$phoneShadeOverScroller$2;

    .line 69
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$phoneShadeOverScroller$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 71
    invoke-static {v2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    move-result-object v2

    .line 77
    iput-object v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->phoneShadeOverScroller$delegate:Lkotlin/Lazy;

    .line 78
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;

    .line 80
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 82
    invoke-static {v2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$qsTransitionController$1;

    .line 88
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$qsTransitionController$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 90
    move-object/from16 v3, p17

    .line 93
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController$Factory;->create(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 95
    move-result-object v2

    .line 98
    iput-object v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iput-object v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->updateResources()V

    .line 108
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$1;

    .line 111
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 113
    move-object/from16 v3, p14

    .line 116
    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 118
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 120
    move-object/from16 v2, p16

    .line 123
    invoke-virtual {v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 125
    new-instance v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;

    .line 128
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 130
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 135
    new-instance v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$3;

    .line 138
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$3;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 140
    move-object/from16 v0, p13

    .line 143
    iget-object v0, v0, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
    .line 150
.end method

.method public static synthetic getDragDownAnimator$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getPulseHeightAnimator$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final canDragDown$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 12
    if-nez v0, :cond_0

    .line 14
    move-object v0, v1

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    move-object v1, v0

    .line 29
    :cond_2
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->isFullyCollapsed()Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    .line 36
    if-eqz p0, :cond_3

    .line 38
    goto :goto_0

    .line 40
    :cond_3
    const/4 v2, 0x0

    .line 41
    :cond_4
    :goto_0
    return v2
    .line 42
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "LSShadeTransitionController:"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "pulseHeight: "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    .line 36
    const-string/jumbo v0, "useSplitShade: "

    .line 38
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 41
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "dragDownAmount: "

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    .line 63
    move-result p1

    .line 66
    const-string v0, "isDragDownAnywhereEnabled: "

    .line 67
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 72
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 74
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 76
    const/4 v0, 0x0

    .line 78
    const/4 v1, 0x1

    .line 79
    if-ne p1, v1, :cond_0

    .line 80
    move p1, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move p1, v0

    .line 84
    :goto_0
    const-string v2, "isFalsingCheckNeeded: "

    .line 85
    invoke-static {v2, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 87
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    .line 90
    const-string v2, "isWakingToShadeLocked: "

    .line 92
    invoke-static {v2, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    .line 97
    if-eqz p0, :cond_1

    .line 99
    move v0, v1

    .line 101
    :cond_1
    const-string p0, "hasPendingHandlerOnKeyguardDismiss: "

    .line 102
    invoke-static {p0, v0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 104
    return-void
    .line 107
.end method

.method public final finishPulseAnimation(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logPulseExpansionFinished(Z)V

    .line 4
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    .line 11
    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    .line 15
    check-cast p1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;

    .line 33
    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 35
    iput-boolean v0, v2, Lcom/android/systemui/shade/QuickSettingsController;->mAnimateNextNotificationBounds:Z

    .line 37
    const-wide/16 v3, 0x1c0

    .line 39
    iput-wide v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDuration:J

    .line 41
    const-wide/16 v3, 0x0

    .line 43
    iput-wide v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationBoundsAnimationDelay:J

    .line 45
    iput-boolean v0, v2, Lcom/android/systemui/shade/QuickSettingsController;->mIsPulseExpansionResettingAnimator:Z

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    .line 51
    :goto_1
    return-void
    .line 54
.end method

.method public final getFractionToShade()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    .line 2
    return p0
    .line 4
.end method

.method public final getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final goToLockedShade(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logTryGoToLockedShade(Z)V

    .line 15
    if-eqz v1, :cond_3

    .line 18
    const/4 v0, 0x0

    .line 20
    if-nez p2, :cond_2

    .line 21
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    .line 23
    if-eqz p2, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;

    .line 28
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 30
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    move-object p2, v0

    .line 34
    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    .line 35
    :cond_3
    return-void
    .line 38
.end method

.method public final goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 9
    iget v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisabled2:I

    .line 11
    and-int/lit8 v0, v0, 0x4

    .line 13
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    move v0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v3

    .line 21
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 22
    if-eqz v0, :cond_3

    .line 24
    if-eqz p3, :cond_2

    .line 26
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;->run()V

    .line 28
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logShadeDisabledOnGoToLockedShade()V

    .line 31
    return-void

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isStatusBarExpandable()Z

    .line 41
    move-result v5

    .line 44
    if-eqz v5, :cond_8

    .line 45
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 47
    iget-object v5, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 49
    if-eqz v5, :cond_5

    .line 51
    iget v5, v5, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 53
    if-nez v5, :cond_4

    .line 55
    move v5, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move v5, v3

    .line 59
    :goto_2
    if-ne v5, v2, :cond_5

    .line 60
    move v5, v2

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    move v5, v3

    .line 64
    :goto_3
    if-nez v5, :cond_7

    .line 65
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 67
    if-nez v0, :cond_6

    .line 69
    move-object v0, v1

    .line 71
    :cond_6
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 72
    move-result v0

    .line 75
    if-nez v0, :cond_7

    .line 76
    move v0, v2

    .line 78
    goto :goto_4

    .line 79
    :cond_7
    move v0, v3

    .line 80
    :goto_4
    if-eqz v0, :cond_8

    .line 81
    move v0, v2

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    move v0, v3

    .line 85
    :goto_5
    if-nez v0, :cond_a

    .line 86
    if-eqz p3, :cond_9

    .line 88
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;->run()V

    .line 90
    :cond_9
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logShadeDisabledOnGoToLockedShade()V

    .line 93
    return-void

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 97
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 99
    iget v5, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 101
    instance-of v6, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 103
    if-eqz v6, :cond_d

    .line 105
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 109
    move-result-object p1

    .line 112
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 113
    if-eqz v5, :cond_b

    .line 115
    invoke-virtual {v5, v2, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 117
    :cond_b
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 120
    if-eqz v5, :cond_c

    .line 122
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 124
    :cond_c
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 127
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 129
    move-result v5

    .line 132
    goto :goto_6

    .line 133
    :cond_d
    move-object p1, v1

    .line 134
    :goto_6
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 135
    if-eqz v6, :cond_e

    .line 137
    iget-object v6, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    move v6, v3

    .line 144
    goto :goto_7

    .line 145
    :cond_e
    move v6, v2

    .line 146
    :goto_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 147
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 149
    move-result v7

    .line 152
    if-eqz v7, :cond_f

    .line 153
    move v6, v3

    .line 155
    :cond_f
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 156
    move-result v0

    .line 159
    const/4 v5, 0x2

    .line 160
    iget-object v7, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 161
    if-eqz v0, :cond_14

    .line 163
    if-eqz v6, :cond_14

    .line 165
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 167
    iput-boolean v2, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 169
    if-eqz p2, :cond_10

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$1;

    .line 173
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lkotlin/jvm/functions/Function1;)V

    .line 175
    goto :goto_8

    .line 178
    :cond_10
    move-object v0, v1

    .line 179
    :goto_8
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;

    .line 180
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    .line 182
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logShowBouncerOnGoToLockedShade()V

    .line 185
    iget-object p3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 188
    if-eqz p3, :cond_11

    .line 190
    goto :goto_9

    .line 192
    :cond_11
    move-object p3, v1

    .line 193
    :goto_9
    check-cast p3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 194
    iget v4, p3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 196
    if-eq v4, v2, :cond_12

    .line 198
    if-ne v4, v5, :cond_13

    .line 200
    :cond_12
    iget-object v2, p3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 202
    iget-boolean v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 204
    if-nez v2, :cond_13

    .line 206
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 208
    invoke-virtual {p3, v0, p2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 210
    goto :goto_a

    .line 213
    :cond_13
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;->run()V

    .line 214
    :goto_a
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 217
    goto :goto_c

    .line 219
    :cond_14
    if-eqz p2, :cond_15

    .line 220
    move p1, v2

    .line 222
    goto :goto_b

    .line 223
    :cond_15
    move p1, v3

    .line 224
    :goto_b
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logGoingToLockedShade(Z)V

    .line 225
    move-object p1, v7

    .line 228
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 229
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 231
    if-eqz p1, :cond_16

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    .line 235
    :cond_16
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 240
    invoke-virtual {v7, v5, v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setState(IZ)Z

    .line 242
    const-wide/16 v0, 0x0

    .line 245
    if-eqz p2, :cond_17

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    move-result-object p0

    .line 252
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    goto :goto_c

    .line 256
    :cond_17
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->performDefaultGoToFullShadeAnimation(J)V

    .line 257
    :goto_c
    return-void
    .line 260
.end method

.method public final isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isFullyCollapsed()Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    .line 31
    if-eqz p0, :cond_2

    .line 33
    :cond_1
    invoke-static {}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->isDefaultKeyguardNotTheme()Z

    .line 35
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_1
    return v1
    .line 43
.end method

.method public final isDragDownEnabledForView$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 10
    if-nez p0, :cond_1

    .line 12
    const/4 p0, 0x0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_3

    .line 21
    if-nez p1, :cond_2

    .line 23
    return v1

    .line 25
    :cond_2
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    if-eqz p0, :cond_3

    .line 28
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 30
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 32
    move-result-object p0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 36
    return p0

    .line 38
    :cond_3
    const/4 p0, 0x0

    .line 39
    return p0
    .line 40
.end method

.method public final performDefaultGoToFullShadeAnimation(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDefaultGoToFullShadeAnimation(J)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->transitionToExpandedShade(J)V

    .line 13
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V

    .line 21
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistanceByTap:I

    .line 24
    int-to-float v0, v0

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$animateAppear$1;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$animateAppear$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    .line 29
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V

    .line 32
    return-void
    .line 35
.end method

.method public final setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 2
    cmpg-float v0, v0, p1

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    .line 15
    if-eqz v0, :cond_c

    .line 17
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 21
    const/4 v3, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    move-object v0, v3

    .line 26
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 35
    const/4 v4, 0x0

    .line 37
    cmpg-float v0, v0, v4

    .line 38
    if-nez v0, :cond_3

    .line 40
    move v0, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v0, v2

    .line 44
    :goto_1
    if-nez v0, :cond_4

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    .line 47
    if-eqz v0, :cond_c

    .line 49
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 51
    iget v4, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    .line 53
    int-to-float v4, v4

    .line 55
    div-float/2addr v0, v4

    .line 56
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    .line 57
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    .line 61
    iget-object v4, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 63
    if-nez v4, :cond_5

    .line 65
    goto :goto_2

    .line 67
    :cond_5
    move-object v3, v4

    .line 68
    :goto_2
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 69
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFractionToShade(F)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    .line 74
    iget v3, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    .line 76
    cmpg-float v3, p1, v3

    .line 78
    if-nez v3, :cond_6

    .line 80
    move v3, v1

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    move v3, v2

    .line 84
    :goto_3
    if-eqz v3, :cond_7

    .line 85
    goto :goto_4

    .line 87
    :cond_7
    iput p1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->onDragDownAmountChanged(F)V

    .line 90
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 93
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 95
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 97
    if-eq p1, v1, :cond_8

    .line 99
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    .line 101
    check-cast p1, Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p1

    .line 108
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v0

    .line 112
    if-eqz v0, :cond_8

    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 118
    check-cast v0, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;

    .line 119
    iget v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 121
    const-wide/16 v4, 0x0

    .line 123
    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/android/systemui/shade/QuickSettingsController$LockscreenShadeTransitionCallback;->setTransitionToFullShadeAmount(FZJ)V

    .line 125
    goto :goto_5

    .line 128
    :cond_8
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 131
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->distanceForFullShadeTransition:I

    .line 133
    int-to-float v3, v3

    .line 135
    div-float/2addr p1, v3

    .line 136
    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    .line 137
    move-result p1

    .line 140
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullShadeTransitionProgress:F

    .line 141
    cmpg-float v3, v3, p1

    .line 143
    if-nez v3, :cond_9

    .line 145
    goto :goto_6

    .line 147
    :cond_9
    move v1, v2

    .line 148
    :goto_6
    if-eqz v1, :cond_a

    .line 149
    goto :goto_7

    .line 151
    :cond_a
    iput p1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullShadeTransitionProgress:F

    .line 152
    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 156
    :goto_7
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->transitionToShadeAmountCommon(F)V

    .line 161
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    .line 164
    if-eqz p1, :cond_b

    .line 166
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScroller$delegate:Lkotlin/Lazy;

    .line 168
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 173
    check-cast p1, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;

    .line 174
    goto :goto_8

    .line 176
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->phoneShadeOverScroller$delegate:Lkotlin/Lazy;

    .line 177
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 182
    check-cast p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;

    .line 183
    :goto_8
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 185
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/LockScreenShadeOverScroller;->setExpansionDragDownAmount(F)V

    .line 187
    :cond_c
    return-void
    .line 190
.end method

.method public final setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAnimation(F)V

    .line 4
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    const/4 v1, 0x0

    .line 10
    iget v2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    .line 11
    aput v2, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 15
    aput p1, v0, v1

    .line 16
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    move-result-object p1

    .line 21
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 22
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    const-wide/16 v2, 0x177

    .line 27
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    const-wide/16 v0, 0x0

    .line 40
    cmp-long v0, p2, v0

    .line 42
    if-lez v0, :cond_0

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 46
    :cond_0
    if-eqz p4, :cond_1

    .line 49
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$2;

    .line 51
    invoke-direct {p2, p4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    .line 62
    return-void
    .line 64
.end method

.method public final setPulseHeight(FZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    const/4 p2, 0x2

    .line 5
    new-array p2, p2, [F

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    .line 8
    const/4 v2, 0x0

    .line 10
    aput v1, p2, v2

    .line 11
    aput p1, p2, v0

    .line 13
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object p1

    .line 18
    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 19
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    const-wide/16 v0, 0x177

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;

    .line 29
    invoke-direct {p2, p0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    .line 31
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeightAnimator:Landroid/animation/ValueAnimator;

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    .line 43
    iget-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 45
    if-nez p2, :cond_1

    .line 47
    const/4 p2, 0x0

    .line 49
    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 50
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    .line 52
    move-result p2

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 60
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 62
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 64
    move-result v2

    .line 67
    int-to-float v2, v2

    .line 68
    div-float/2addr p2, v2

    .line 69
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 70
    const/high16 v2, -0x3f800000    # -4.0f

    .line 72
    mul-float/2addr p2, v2

    .line 74
    float-to-double v2, p2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    .line 76
    move-result-wide v2

    .line 79
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 80
    sub-double/2addr v4, v2

    .line 82
    double-to-float p2, v4

    .line 83
    const/4 v2, 0x0

    .line 84
    cmpl-float v3, v2, p2

    .line 85
    if-lez v3, :cond_2

    .line 87
    move p2, v2

    .line 89
    :cond_2
    iget v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    .line 90
    int-to-float v3, v3

    .line 92
    mul-float/2addr p2, v3

    .line 93
    iput p2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    .line 94
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 96
    iget-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 99
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 101
    move-result p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    goto :goto_0

    .line 107
    :cond_3
    move p1, v2

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->transitionToShadeAmountCommon(F)V

    .line 109
    :goto_1
    return-void
    .line 112
.end method

.method public final transitionToShadeAmountCommon(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsTransitionDistance:I

    .line 2
    int-to-float v0, v0

    .line 4
    div-float v0, p1, v0

    .line 5
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 11
    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_udfpsTransitionToFullShadeProgress:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mUdfpsKeyguardViewControllerLegacy:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iput v0, v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->transitionToFullShadeProgress:F

    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->updateAlpha()V

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarTransitionDistance:I

    .line 33
    int-to-float v0, v0

    .line 35
    div-float/2addr p1, v0

    .line 36
    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    .line 37
    move-result p1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 41
    if-eqz p0, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    .line 49
    return-void
    .line 51
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f07062d    # @dimen/lockscreen_shade_full_transition_distance '80.0dp'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistance:I

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x7f07063c    # @dimen/lockscreen_shade_transition_by_tap_distance '200.0dp'

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistanceByTap:I

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 33
    const v2, 0x7f070632    # @dimen/lockscreen_shade_notif_shelf_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v1

    .line 46
    const v2, 0x7f07062c    # @dimen/lockscreen_shade_depth_controller_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v1

    .line 56
    const v2, 0x7f07063d    # @dimen/lockscreen_shade_udfps_keyguard_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v1

    .line 63
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsTransitionDistance:I

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v1

    .line 69
    const v2, 0x7f07063b    # @dimen/lockscreen_shade_status_bar_transition_distance '@dimen/lockscreen_shade_full_transition_distance'

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v1

    .line 76
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarTransitionDistance:I

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 83
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    .line 87
    return-void
    .line 89
.end method
