.class public abstract Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBlockedIcons:Ljava/util/List;

.field public final mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

.field public final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

.field public final mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

.field public final mCollapsedStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;

.field public final mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEndSideContent:Landroid/view/View;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

.field public mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public mNotificationIconAreaInner:Landroid/view/View;

.field public final mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

.field public final mOperatorNameViewControllerFactory:Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final mStartableStates:Ljava/util/Map;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field public mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

.field public final mStatusBarFragmentComponentFactory:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

.field public mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

.field public mTransitionFromLockscreenToDreamStarted:Z

.field public final mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

.field public mWaitingForWindowStateChangeAfterCameraLaunch:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v7, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    move-object v1, v7

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    .line 14
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 19
    const/4 v9, 0x1

    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v12, 0x1

    .line 24
    const/4 v13, 0x1

    .line 25
    move-object v8, v1

    .line 26
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    .line 27
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    .line 37
    new-instance v1, Landroid/util/ArrayMap;

    .line 39
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    .line 44
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    .line 48
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 51
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    .line 53
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    .line 55
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    .line 58
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mWaitingForWindowStateChangeAfterCameraLaunch:Z

    .line 61
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mTransitionFromLockscreenToDreamStarted:Z

    .line 63
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 65
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    .line 67
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 70
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    .line 72
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    .line 74
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    .line 77
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    .line 79
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    .line 81
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    .line 84
    move-object v1, p1

    .line 86
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponentFactory:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;

    .line 87
    move-object/from16 v1, p2

    .line 89
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 91
    move-object/from16 v1, p4

    .line 93
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 95
    move-object/from16 v1, p5

    .line 97
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 99
    move-object/from16 v1, p6

    .line 101
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

    .line 103
    move-object/from16 v1, p7

    .line 105
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;

    .line 107
    move-object/from16 v1, p8

    .line 109
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 111
    move-object/from16 v1, p9

    .line 113
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 115
    move-object/from16 v1, p10

    .line 117
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 119
    move-object/from16 v1, p11

    .line 121
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 123
    move-object/from16 v1, p12

    .line 125
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 127
    move-object/from16 v1, p13

    .line 129
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 131
    move-object/from16 v1, p14

    .line 133
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    .line 135
    move-object/from16 v1, p15

    .line 137
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewControllerFactory:Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    .line 139
    move-object/from16 v1, p16

    .line 141
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 143
    move-object/from16 v1, p17

    .line 145
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 147
    move-object/from16 v1, p18

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 151
    move-object/from16 v1, p19

    .line 153
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 155
    return-void
    .line 157
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 6
    move-result v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 18
    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logDisableFlagChange$2;

    .line 20
    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logDisableFlagChange$2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;)V

    .line 22
    const-string v2, "CollapsedSbFragment"

    .line 25
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 27
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 30
    move-result-object v0

    .line 33
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 34
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 40
    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 43
    const/high16 v0, 0x800000

    .line 45
    and-int/2addr v0, p2

    .line 47
    const/4 v1, 0x1

    .line 48
    const/4 v2, 0x0

    .line 49
    if-nez v0, :cond_1

    .line 50
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v2

    .line 54
    :goto_0
    const/high16 v3, 0x20000

    .line 55
    and-int/2addr v3, p2

    .line 57
    if-nez v3, :cond_2

    .line 58
    move v3, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v3, v2

    .line 62
    :goto_1
    const/high16 v4, 0x4000000

    .line 63
    and-int/2addr v4, p2

    .line 65
    if-nez v4, :cond_3

    .line 66
    move v4, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v4, v2

    .line 70
    :goto_2
    const/high16 v5, 0x100000

    .line 71
    and-int/2addr p2, v5

    .line 73
    if-nez p2, :cond_4

    .line 74
    and-int/lit8 p2, p3, 0x2

    .line 76
    if-nez p2, :cond_4

    .line 78
    move v5, v1

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    move v5, v2

    .line 82
    :goto_3
    const/4 v6, 0x1

    .line 83
    move-object v1, p1

    .line 84
    move v2, v0

    .line 85
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 89
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    .line 91
    return-void
    .line 94
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
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string p0, "StatusBarFragmentComponent is null"

    .line 13
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 15
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStartables()Ljava/util/Set;

    .line 19
    move-result-object p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Startables: "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 30
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 44
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    .line 63
    sget-object v2, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 65
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    check-cast v1, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, ", state: "

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 97
    :goto_1
    return-void
    .line 100
.end method

.method public getBlockedIcons()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract initOperatorName()V
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mWaitingForWindowStateChangeAfterCameraLaunch:Z

    .line 3
    return-void
    .line 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 7
    iget-object p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    .line 9
    check-cast p1, Ljava/util/HashSet;

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    .line 9
    check-cast v0, Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public onDestroyView()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    .line 9
    check-cast v0, Landroid/util/ArraySet;

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    .line 20
    check-cast v0, Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 27
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStartables()Ljava/util/Set;

    .line 29
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    .line 49
    sget-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 51
    check-cast v2, Landroid/util/ArrayMap;

    .line 53
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    .line 58
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 60
    invoke-virtual {v3, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 62
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 65
    invoke-virtual {v3, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    .line 70
    sget-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    .line 72
    check-cast v2, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 90
    return-void
    .line 93
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 10
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    .line 17
    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 19
    return-void
    .line 22
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 10
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    .line 17
    const-string/jumbo v1, "status_bar_show_vibrate_icon"

    .line 19
    const/4 v2, 0x0

    .line 22
    const/4 v3, -0x1

    .line 23
    invoke-interface {v0, v1, v2, p0, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 24
    return-void
    .line 27
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onStateChanged(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSystemEventAnimationBegin()Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onSystemEventAnimationBegin()Landroidx/core/animation/Animator;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 15
    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 20
    const p2, 0x7f0a093e    # @id/system_icons

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 31
    const p2, 0x7f0a01fb    # @id/clock

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 42
    move-object p1, p0

    .line 44
    check-cast p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 45
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponentFactory:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;

    .line 47
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;->create(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 49
    move-result-object p2

    .line 52
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 53
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->init()V

    .line 55
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 58
    const v0, 0x7f0a0734    # @id/privacy_container

    .line 60
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 66
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    .line 67
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 69
    const v0, 0x7f0a0747    # @id/prompt_container

    .line 71
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p2

    .line 77
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPromptContainer:Landroid/view/View;

    .line 78
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 80
    const v0, 0x7f0a0378    # @id/focused_notif_view

    .line 82
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 88
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Landroid/view/View;

    .line 89
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 91
    const v0, 0x7f0a0402    # @id/home_privacy_container

    .line 93
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p2

    .line 99
    check-cast p2, Landroid/widget/LinearLayout;

    .line 100
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mHomePrivacyContainer:Landroid/widget/LinearLayout;

    .line 102
    const-class p2, Lcom/miui/systemui/controller/RegionController;

    .line 104
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 109
    check-cast p2, Lcom/miui/systemui/controller/RegionController;

    .line 110
    invoke-virtual {p2, p1}, Lcom/miui/systemui/controller/RegionController;->addCallback(Lcom/miui/systemui/controller/RegionController$Callback;)V

    .line 112
    const-class p2, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 115
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 120
    check-cast p2, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 121
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    .line 123
    const-class p2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 126
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    move-result-object p2

    .line 131
    check-cast p2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 132
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    .line 134
    check-cast v0, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 138
    move-result v1

    .line 141
    if-nez v1, :cond_0

    .line 142
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->onFocusedNotifVisibilityChanged(Z)V

    .line 149
    :cond_0
    const-class p2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;

    .line 152
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object p2

    .line 157
    check-cast p2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;

    .line 158
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mCallbacks:Ljava/util/List;

    .line 160
    check-cast v0, Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 164
    move-result v1

    .line 167
    if-nez v1, :cond_1

    .line 168
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsHomePrivacyShowing:Z

    .line 173
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsHomeToDot:Z

    .line 175
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->onHomePrivacyVisibilityChanged(ZZ)V

    .line 177
    :cond_1
    sget-boolean p2, Lmiui/os/Build;->IS_TABLET:Z

    .line 180
    if-eqz p2, :cond_2

    .line 182
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 184
    const v0, 0x7f0a06df    # @id/pad_clock

    .line 186
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object p2

    .line 192
    if-eqz p2, :cond_2

    .line 193
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 195
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 197
    move-result-object p2

    .line 200
    check-cast p2, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 201
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 203
    :cond_2
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 205
    iget-boolean v0, p2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 207
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    .line 209
    iget-object p2, p2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    .line 211
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    .line 216
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 219
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    .line 222
    invoke-virtual {p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 224
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPromptContainer:Landroid/view/View;

    .line 227
    invoke-virtual {p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->showClock(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->initOperatorName()V

    .line 235
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 238
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 240
    iput-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 242
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 244
    instance-of v2, v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    .line 246
    if-eqz v2, :cond_3

    .line 248
    check-cast v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    .line 250
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setNotificationIconAreaInnner(Landroid/view/View;)V

    .line 252
    :cond_3
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 255
    const/4 v1, 0x1

    .line 257
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 258
    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

    .line 261
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 265
    move-result-object v0

    .line 268
    invoke-direct {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventAnimator;

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 274
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 276
    iget-object p1, p1, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    .line 278
    check-cast p1, Landroid/util/ArraySet;

    .line 280
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 285
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    .line 287
    iget-object p1, p1, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    .line 289
    check-cast p1, Landroid/util/ArraySet;

    .line 291
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;

    .line 296
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    invoke-static {p2, v0, p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;->bind(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;)V

    .line 307
    return-void
    .line 310
.end method

.method public abstract showClock(Z)V
.end method

.method public updateBlockedIcons()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateStatusBarVisibilities(Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 6
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 8
    move-object v12, v0

    .line 10
    check-cast v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 11
    iget-object v4, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 13
    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 15
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    .line 19
    move-result v4

    .line 22
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    .line 23
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 25
    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    .line 27
    const/4 v13, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    if-eqz v7, :cond_0

    .line 31
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->isOngoing:Z

    .line 33
    if-ne v7, v13, :cond_0

    .line 35
    move v7, v13

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v7, v8

    .line 39
    :goto_0
    if-eqz v7, :cond_1

    .line 40
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;

    .line 42
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallAppUidObserver;->isCallAppVisible:Z

    .line 44
    if-nez v6, :cond_1

    .line 46
    move v6, v13

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v6, v8

    .line 50
    :goto_1
    if-eqz v6, :cond_2

    .line 51
    if-nez v4, :cond_2

    .line 53
    move v6, v13

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v6, v8

    .line 57
    :goto_2
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 58
    iget v7, v7, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 60
    if-nez v7, :cond_3

    .line 62
    move v7, v13

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v7, v8

    .line 66
    :goto_3
    if-nez v7, :cond_6

    .line 67
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    .line 69
    check-cast v7, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 71
    iget-boolean v9, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchAnimationRunning:Z

    .line 73
    if-eqz v9, :cond_4

    .line 75
    iget-boolean v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 77
    goto :goto_4

    .line 79
    :cond_4
    iget-object v9, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 80
    if-eqz v9, :cond_5

    .line 82
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    .line 84
    move-result v9

    .line 87
    if-eqz v9, :cond_5

    .line 88
    move v7, v8

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    iget-boolean v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 92
    xor-int/2addr v7, v13

    .line 94
    :goto_4
    if-eqz v7, :cond_6

    .line 95
    goto/16 :goto_8

    .line 97
    :cond_6
    iget-boolean v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mWaitingForWindowStateChangeAfterCameraLaunch:Z

    .line 99
    if-nez v7, :cond_8

    .line 101
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 103
    iget v7, v7, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    .line 105
    if-nez v7, :cond_7

    .line 107
    move v7, v13

    .line 109
    goto :goto_5

    .line 110
    :cond_7
    move v7, v8

    .line 111
    :goto_5
    if-nez v7, :cond_9

    .line 112
    :cond_8
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 114
    iget-boolean v7, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 116
    if-eqz v7, :cond_9

    .line 118
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 120
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 122
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 124
    if-eqz v7, :cond_9

    .line 126
    move v7, v13

    .line 128
    goto :goto_6

    .line 129
    :cond_9
    move v7, v8

    .line 130
    :goto_6
    if-eqz v7, :cond_a

    .line 131
    goto :goto_8

    .line 133
    :cond_a
    iget-boolean v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mTransitionFromLockscreenToDreamStarted:Z

    .line 134
    if-eqz v7, :cond_b

    .line 136
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 138
    iget-boolean v7, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 140
    if-eqz v7, :cond_b

    .line 142
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 144
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 146
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 148
    if-eqz v7, :cond_b

    .line 150
    move v7, v13

    .line 152
    goto :goto_7

    .line 153
    :cond_b
    move v7, v8

    .line 154
    :goto_7
    if-eqz v7, :cond_c

    .line 155
    goto :goto_8

    .line 157
    :cond_c
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

    .line 158
    check-cast v7, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModelImpl;

    .line 160
    iget-object v7, v7, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModelImpl;->isTransitioningFromLockscreenToOccluded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 162
    invoke-virtual {v7}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 164
    move-result-object v7

    .line 167
    check-cast v7, Ljava/lang/Boolean;

    .line 168
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    move-result v7

    .line 173
    if-eqz v7, :cond_d

    .line 174
    goto :goto_8

    .line 176
    :cond_d
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 177
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->hideIconsForBouncer:Z

    .line 179
    if-nez v9, :cond_f

    .line 181
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    .line 183
    if-eqz v7, :cond_e

    .line 185
    goto :goto_8

    .line 187
    :cond_e
    move v7, v8

    .line 188
    goto :goto_9

    .line 189
    :cond_f
    :goto_8
    move v7, v13

    .line 190
    :goto_9
    if-eqz v7, :cond_11

    .line 191
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 193
    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 195
    move-result v7

    .line 198
    if-ne v7, v13, :cond_10

    .line 199
    if-nez v4, :cond_11

    .line 201
    :cond_10
    iput-boolean v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 203
    move v3, v8

    .line 205
    move v4, v3

    .line 206
    move v5, v4

    .line 207
    move v6, v5

    .line 208
    move v7, v6

    .line 209
    goto :goto_a

    .line 210
    :cond_11
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    .line 211
    iget-boolean v7, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    .line 213
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    .line 215
    :goto_a
    iget-boolean v9, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    .line 217
    if-eqz v9, :cond_12

    .line 219
    iput-boolean v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 221
    move v7, v8

    .line 223
    move/from16 v19, v7

    .line 224
    goto :goto_b

    .line 226
    :cond_12
    move/from16 v19, v3

    .line 227
    :goto_b
    iget-boolean v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsMinimalismModeOn:Z

    .line 229
    if-eqz v3, :cond_13

    .line 231
    move v4, v8

    .line 233
    goto :goto_c

    .line 234
    :cond_13
    iget-boolean v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    .line 235
    if-eqz v3, :cond_14

    .line 237
    move v4, v8

    .line 239
    move v5, v4

    .line 240
    :cond_14
    :goto_c
    iget-boolean v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 241
    if-eqz v3, :cond_15

    .line 243
    move v7, v8

    .line 245
    :cond_15
    const-class v3, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 246
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 251
    check-cast v3, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 252
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->tracking:Z

    .line 254
    if-nez v9, :cond_16

    .line 256
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimRunning:Z

    .line 258
    if-eqz v3, :cond_17

    .line 260
    :cond_16
    move v5, v8

    .line 262
    :cond_17
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 265
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 268
    const-string v9, "ShadeExpansionState = "

    .line 270
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 275
    iget v9, v9, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 277
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 282
    const-string v9, " mHideIconsForBouncer = "

    .line 284
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 289
    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->hideIconsForBouncer:Z

    .line 291
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 296
    const-string v9, " mWereIconsJustHidden = "

    .line 298
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 303
    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    .line 305
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 310
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 312
    move-result-object v3

    .line 315
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    const-string v10, ", mWakeUpCoordinator.getNotificationsFullyHidden = "

    .line 321
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 326
    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    .line 328
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 330
    const-string v10, ", mIsExpanded = "

    .line 333
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->isExpanded()Z

    .line 338
    move-result v10

    .line 341
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    const-string v10, ", mBypassController.getBypassEnabled = "

    .line 345
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 350
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 352
    move-result v10

    .line 355
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 356
    const-string v10, ", mStatusBarStateController.getState() = "

    .line 359
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 364
    invoke-interface {v10}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 366
    move-result v10

    .line 369
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v10, ", mKeyguardStateController.isKeyguardGoingAway() = "

    .line 373
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 378
    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 380
    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 382
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 384
    const-string v10, ", mHeadsUpManager.hasPinnedHeadsUp = "

    .line 387
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 392
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 394
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 396
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 399
    const-string v9, ", mControlPanelExpand = "

    .line 401
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-boolean v9, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    .line 406
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    .line 411
    const-string v9, "adjustDisableFlags: "

    .line 413
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    move-result-object v3

    .line 426
    const-string v9, "CollapsedStatusBarFragment"

    .line 427
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 432
    move-object v14, v3

    .line 434
    move v15, v5

    .line 435
    move/from16 v16, v4

    .line 436
    move/from16 v17, v6

    .line 438
    move/from16 v18, v7

    .line 440
    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    .line 442
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    .line 445
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    sget-object v10, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 450
    sget-object v11, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logVisibilityModel$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logVisibilityModel$2;

    .line 452
    const/4 v14, 0x0

    .line 454
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 455
    const-string v15, "CollapsedSbFragment"

    .line 457
    invoke-virtual {v9, v15, v10, v11, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 459
    move-result-object v10

    .line 462
    invoke-interface {v10, v5}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 463
    invoke-interface {v10, v4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 466
    invoke-interface {v10, v6}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 469
    invoke-interface {v10, v7}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 472
    invoke-virtual {v9, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 475
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 478
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    .line 480
    if-eq v7, v3, :cond_19

    .line 482
    if-eqz v7, :cond_18

    .line 484
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    .line 486
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 488
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    .line 491
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 493
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPromptContainer:Landroid/view/View;

    .line 496
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 498
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 501
    if-eqz v3, :cond_19

    .line 503
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 505
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 507
    goto :goto_d

    .line 510
    :cond_18
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    .line 511
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 513
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    .line 516
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 518
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPromptContainer:Landroid/view/View;

    .line 521
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 523
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 526
    if-eqz v3, :cond_19

    .line 528
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 530
    invoke-virtual {v12, v3, v1, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 532
    :cond_19
    :goto_d
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    .line 535
    if-ne v4, v3, :cond_1a

    .line 537
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    .line 539
    if-eq v6, v3, :cond_1c

    .line 541
    :cond_1a
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 543
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    .line 545
    xor-int/2addr v3, v13

    .line 547
    if-eqz v3, :cond_1b

    .line 548
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 550
    invoke-virtual {v12, v3, v1, v13}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 552
    goto :goto_e

    .line 555
    :cond_1b
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 556
    invoke-virtual {v12, v3, v1, v13}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 558
    :cond_1c
    :goto_e
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    .line 561
    const/16 v3, 0x8

    .line 563
    const/4 v4, 0x4

    .line 565
    const/high16 v6, 0x800000

    .line 566
    if-ne v5, v2, :cond_1e

    .line 568
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 570
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    .line 572
    move-result v2

    .line 575
    if-eqz v2, :cond_23

    .line 576
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 578
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    .line 580
    move-result v2

    .line 583
    iget v7, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 584
    and-int/2addr v7, v6

    .line 586
    if-eqz v7, :cond_1d

    .line 587
    move v7, v3

    .line 589
    goto :goto_f

    .line 590
    :cond_1d
    move v7, v4

    .line 591
    :goto_f
    if-eq v2, v7, :cond_23

    .line 592
    :cond_1e
    if-eqz v5, :cond_1f

    .line 594
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->showClock(Z)V

    .line 596
    goto :goto_11

    .line 599
    :cond_1f
    iget v0, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 600
    and-int/2addr v0, v6

    .line 602
    if-eqz v0, :cond_20

    .line 603
    goto :goto_10

    .line 605
    :cond_20
    move v3, v4

    .line 606
    :goto_10
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 607
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 609
    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 613
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 616
    if-eqz v0, :cond_21

    .line 618
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 620
    move-result-object v0

    .line 623
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 624
    :cond_21
    if-nez v1, :cond_22

    .line 627
    iget-boolean v0, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 629
    if-nez v0, :cond_22

    .line 631
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 633
    const/4 v1, 0x0

    .line 635
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 636
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 639
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 641
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 644
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 646
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 649
    if-eqz v0, :cond_23

    .line 651
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 653
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 656
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 658
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 661
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 663
    goto :goto_11

    .line 666
    :cond_22
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 667
    const/4 v0, 0x0

    .line 669
    const-wide/16 v1, 0xa0

    .line 670
    sget-object v14, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 672
    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    .line 674
    invoke-direct {v10, v12, v3, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;II)V

    .line 676
    const/4 v15, 0x1

    .line 679
    const/4 v6, 0x0

    .line 680
    const/4 v11, 0x1

    .line 681
    move-object v4, v12

    .line 682
    move-wide v7, v1

    .line 683
    move-object v9, v14

    .line 684
    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    .line 685
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 688
    const-wide/16 v7, 0xa0

    .line 690
    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    .line 692
    invoke-direct {v10, v12, v3, v13}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;II)V

    .line 694
    move v6, v0

    .line 697
    move v11, v15

    .line 698
    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    .line 699
    :cond_23
    :goto_11
    return-void
    .line 702
.end method
