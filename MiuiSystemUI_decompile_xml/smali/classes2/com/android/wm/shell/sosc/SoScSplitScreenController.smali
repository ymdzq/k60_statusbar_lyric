.class public Lcom/android/wm/shell/sosc/SoScSplitScreenController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$SplitScreenListener;


# static fields
.field public static final ENTER_REASON_DRAG:I = 0x2

.field public static final ENTER_REASON_LAUNCHER:I = 0x3

.field public static final ENTER_REASON_MULTI_INSTANCE:I = 0x1

.field public static final ENTER_REASON_UNKNOWN:I = 0x0

.field public static final EXIT_REASON_APP_DOES_NOT_SUPPORT_MULTIWINDOW:I = 0x1

.field public static final EXIT_REASON_APP_FINISHED:I = 0x2

.field public static final EXIT_REASON_CHILD_TASK_ENTER_PIP:I = 0x9

.field public static final EXIT_REASON_DEVICE_FOLDED:I = 0x3

.field public static final EXIT_REASON_DRAG_DIVIDER:I = 0x4

.field public static final EXIT_REASON_FULLSCREEN_SHORTCUT:I = 0xb

.field public static final EXIT_REASON_RECREATE_SPLIT:I = 0xa

.field public static final EXIT_REASON_RETURN_HOME:I = 0x5

.field public static final EXIT_REASON_ROOT_TASK_VANISHED:I = 0x6

.field public static final EXIT_REASON_SCREEN_LOCKED:I = 0x7

.field public static final EXIT_REASON_SCREEN_LOCKED_SHOW_ON_TOP:I = 0x8

.field public static final EXIT_REASON_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SoScSplitScreenController"

.field static instanceId:Lcom/android/internal/logging/InstanceId;

.field private static final mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

.field private static final mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;


# instance fields
.field private final mAppsSupportMultiInstances:[Ljava/lang/String;

.field private mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mDragAndDropController:Ljava/util/Optional;

.field private mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mImpl:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

.field private final mRecentTasksOptional:Ljava/util/Optional;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mSplitScreenShellCommandHandler:Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;

.field mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field private mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$86Vy8rj20UBI3Di3B7iqBRezb40(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$startIntentInSoScFor3rd$5(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$APpJqwCVom2EbbrFBSvI-LGxnNs(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$FEinF7JQ-g-WJdEWqc853yaMPm4(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$getUserId$2(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$VBrA4bmjaykPm2poB3kRfNfLr0c(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$getPackageName$1(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$WStK6xG2vZXncqE9x7PmCwx8R8Y([ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/android/wm/shell/recents/RecentTasksController;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$startSplitWithIntentsForMiui$6([ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/android/wm/shell/recents/RecentTasksController;)Ljava/lang/Boolean;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$go1MCqbHPO4OHfQTCzl_czFijqk(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$startMultipleTaskForHome$3(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$gsKNJRhFyrzlMkjnSb2QEtsDl6k(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$startIntentInSoScForMiui$4(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$yC1PcQY_ZoEhkbImLn3fuXPsb1o(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->lambda$startIntent$0(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mstartIntentAndTask(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mstartIntentAndTaskWithLegacyTransition(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mstartIntents(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mstartIntentsWithLegacyTransition(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    .line 3
    move-result-object v0

    .line 6
    sput-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 7
    invoke-static {}, Lcom/miui/analytics/MiuiSoScTrackStub;->getInstance()Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 9
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 13
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 15
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 19
    return-void
    .line 21
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V
    .locals 5

    move-object v0, p0

    move-object v1, p5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;I)V

    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mImpl:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    move-object v2, p3

    .line 30
    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v2, p4

    .line 31
    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 32
    iput-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p6

    .line 33
    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v2, p1

    .line 34
    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    move-object v3, p7

    .line 35
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v3, p16

    .line 36
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v3, p8

    .line 37
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v3, p9

    .line 38
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v3, p10

    .line 39
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 40
    invoke-static/range {p11 .. p11}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v3, p12

    .line 41
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v3, p13

    .line 42
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v3, p14

    .line 43
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 44
    invoke-static/range {p15 .. p15}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    move-object/from16 v3, p17

    .line 45
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 46
    new-instance v3, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;

    .line 47
    new-instance v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;-><init>(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    move-object v4, p2

    invoke-virtual {p2, p0, v3}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030040    # @array/config_appsSupportMultiInstancesSplit

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    .line 50
    iget-object v1, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mSplitScreenListener:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object/from16 v3, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;I)V

    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mImpl:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    move-object v4, p3

    .line 3
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v4, p4

    .line 4
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 5
    iput-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v4, p6

    .line 6
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 7
    iput-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    move-object v4, p7

    .line 8
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v4, p16

    .line 9
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v4, p8

    .line 10
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v4, p9

    .line 11
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v4, p10

    .line 12
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v4, p11

    .line 13
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v4, p12

    .line 14
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v4, p13

    .line 15
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v4, p14

    .line 16
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v4, p15

    .line 17
    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 18
    new-instance v4, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;

    .line 19
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    new-instance v4, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;

    invoke-direct {v4, v5, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda5;-><init>(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    move-object v5, p2

    invoke-virtual {p2, p0, v4}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030040    # @array/config_appsSupportMultiInstancesSplit

    .line 22
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/miui/analytics/MiuiTrackManagerStub;->getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/miui/analytics/MiuiTrackManagerStub;->init(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 24
    iget-object v2, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mSplitScreenListener:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iput-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 27
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    invoke-virtual {v0, v3, p1}, Lcom/miui/analytics/MiuiSoScTrackStub;->init(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)V

    return-void
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static exitReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const-string/jumbo v0, "unknown reason, reason int = "

    .line 5
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :pswitch_0
    const-string p0, "RECREATE_SPLIT"

    .line 13
    return-object p0

    .line 15
    :pswitch_1
    const-string p0, "CHILD_TASK_ENTER_PIP"

    .line 16
    return-object p0

    .line 18
    :pswitch_2
    const-string p0, "SCREEN_LOCKED_SHOW_ON_TOP"

    .line 19
    return-object p0

    .line 21
    :pswitch_3
    const-string p0, "SCREEN_LOCKED"

    .line 22
    return-object p0

    .line 24
    :pswitch_4
    const-string p0, "ROOT_TASK_VANISHED"

    .line 25
    return-object p0

    .line 27
    :pswitch_5
    const-string p0, "RETURN_HOME"

    .line 28
    return-object p0

    .line 30
    :pswitch_6
    const-string p0, "DRAG_DIVIDER"

    .line 31
    return-object p0

    .line 33
    :pswitch_7
    const-string p0, "DEVICE_FOLDED"

    .line 34
    return-object p0

    .line 36
    :pswitch_8
    const-string p0, "APP_FINISHED"

    .line 37
    return-object p0

    .line 39
    :pswitch_9
    const-string p0, "APP_DOES_NOT_SUPPORT_MULTIWINDOW"

    .line 40
    return-object p0

    .line 42
    :pswitch_a
    const-string p0, "UNKNOWN_EXIT"

    .line 43
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 46
.end method

.method private findSameComponentInRunningTask(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 10
    move-result p0

    .line 13
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 14
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v2

    .line 22
    if-ge v1, v2, :cond_2

    .line 23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 31
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 33
    move-result-object v3

    .line 36
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 43
    if-ne p2, v3, :cond_1

    .line 45
    return-object v2

    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
    .line 51
.end method

.method private findSameComponentInTopTask(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 19
    if-ge v1, v2, :cond_3

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 28
    if-nez v3, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 33
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    move-result-object v3

    .line 38
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 45
    if-ne p2, v3, :cond_2

    .line 47
    return-object v2

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    return-object p0
    .line 53
.end method

.method private getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of p0, p1, Landroid/app/PendingIntent;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    check-cast p1, Landroid/app/PendingIntent;

    .line 7
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of p0, p1, Landroid/content/Intent;

    .line 14
    if-eqz p0, :cond_1

    .line 16
    move-object p0, p1

    .line 18
    check-cast p0, Landroid/content/Intent;

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    instance-of p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    if-eqz p0, :cond_2

    .line 24
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    move-object p0, v0

    .line 31
    :goto_0
    if-nez p0, :cond_3

    .line 32
    return-object v0

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    move-result-object p1

    .line 38
    if-nez p1, :cond_4

    .line 39
    return-object v0

    .line 41
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    return-object p0
    .line 50
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 14
    new-instance p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda3;

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    return-object v1

    .line 38
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 41
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    :cond_2
    return-object v1
    .line 47
.end method

.method private getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 37
    move-result v4

    .line 40
    if-eq v4, v1, :cond_1

    .line 41
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 43
    move-result v4

    .line 46
    const/4 v5, 0x2

    .line 47
    if-eq v4, v5, :cond_1

    .line 48
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 50
    move-result v4

    .line 53
    const/4 v5, 0x6

    .line 54
    if-eq v4, v5, :cond_1

    .line 55
    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 57
    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 61
    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isRootOrStageRoot(I)Z

    .line 65
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    move-object v2, v3

    .line 72
    :cond_3
    :goto_1
    return-object v2
    .line 73
.end method

.method private getTopTaskCanEnterSoSc(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_4

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 37
    move-result v2

    .line 40
    const/4 v3, 0x5

    .line 41
    if-eq v2, v3, :cond_1

    .line 42
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 44
    move-result v2

    .line 47
    const/4 v3, 0x2

    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 51
    move-result v2

    .line 54
    const/4 v4, 0x6

    .line 55
    if-eq v2, v4, :cond_1

    .line 56
    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 58
    if-eqz v2, :cond_1

    .line 60
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 62
    if-eq p1, v2, :cond_1

    .line 64
    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 66
    if-nez v2, :cond_2

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 71
    move-result p0

    .line 74
    if-eq p0, v3, :cond_4

    .line 75
    const/4 p1, 0x3

    .line 77
    if-ne p0, p1, :cond_3

    .line 78
    goto :goto_1

    .line 80
    :cond_3
    move-object v0, v1

    .line 81
    :cond_4
    :goto_1
    return-object v0
    .line 82
.end method

.method private getUserId(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 14
    new-instance p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda3;

    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 22
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 33
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    return v1

    .line 39
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 40
    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 42
    :cond_2
    return v1
    .line 44
.end method

.method private isHomeOrRecent(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 p0, 0x3

    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
    .line 12
.end method

.method private static synthetic lambda$getPackageName$1(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->getTopRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private static synthetic lambda$getUserId$2(Lcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->getTopRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private static synthetic lambda$startIntent$0(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskInBackground(ILandroid/content/ComponentName;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method private static synthetic lambda$startIntentInSoScFor3rd$5(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskInBackground(ILandroid/content/ComponentName;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private static synthetic lambda$startIntentInSoScForMiui$4(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskInBackground(ILandroid/content/ComponentName;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private static synthetic lambda$startMultipleTaskForHome$3(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskInBackground(ILandroid/content/ComponentName;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private static synthetic lambda$startSplitWithIntentsForMiui$6([ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/android/wm/shell/recents/RecentTasksController;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->findTaskIdsForMiui([ILandroid/content/ComponentName;Landroid/content/ComponentName;)Z

    .line 2
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method private moveToStage(IILandroid/window/WindowContainerTransaction;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSplitScreen(I)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    return v1

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 19
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->moveToStage(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)Z

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method private reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    new-instance v1, Landroid/view/SurfaceSession;

    .line 4
    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 6
    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 9
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "RecentsAnimationSplitTasks"

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 18
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 27
    move-result-object p3

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 31
    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 33
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 36
    move-result-object p3

    .line 39
    :goto_0
    array-length v0, p1

    .line 40
    if-ge v1, v0, :cond_1

    .line 41
    aget-object v0, p1, v1

    .line 43
    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 45
    invoke-virtual {p2, v2, p3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 47
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 50
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 52
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    .line 58
    iget-object v3, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 60
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 62
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 65
    invoke-virtual {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMinimizedPoint()Landroid/graphics/Point;

    .line 67
    move-result-object v3

    .line 70
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 71
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 73
    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMinimizedPoint()Landroid/graphics/Point;

    .line 75
    move-result-object v4

    .line 78
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 79
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 81
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 84
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 86
    int-to-float v3, v3

    .line 88
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 89
    int-to-float v2, v2

    .line 91
    invoke-virtual {p2, v0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 92
    goto :goto_1

    .line 95
    :cond_0
    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 96
    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 98
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 100
    int-to-float v3, v3

    .line 102
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 103
    int-to-float v0, v0

    .line 105
    invoke-virtual {p2, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 106
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    return-object p3
    .line 112
.end method

.method private sameClass(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    if-ne p3, p4, :cond_0

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

.method public static samePackageInSoSc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method private startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p4

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 5
    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 9
    invoke-static {v1, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 14
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 15
    invoke-static {v1, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    .line 17
    move-result v4

    .line 20
    move/from16 v5, p2

    .line 21
    invoke-static {v2, v5, v4, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 23
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    new-instance v4, Landroid/content/Intent;

    .line 37
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 39
    const/high16 v2, 0x8000000

    .line 42
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 47
    const-string v5, "Adding MULTIPLE_TASK"

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    invoke-static {v2, v5, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 57
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 59
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 65
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 70
    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 71
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 73
    :cond_1
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 76
    const-string v2, "Cancel entering split as not supporting multi-instances"

    .line 78
    new-array v5, v3, [Ljava/lang/Object;

    .line 80
    invoke-static {v1, v2, v5}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 85
    const v2, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 87
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    const/4 v1, -0x1

    .line 97
    :cond_2
    :goto_0
    move v9, v1

    .line 98
    move-object v7, v4

    .line 99
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 100
    move-object/from16 v6, p1

    .line 102
    move-object/from16 v8, p3

    .line 104
    move-object/from16 v10, p5

    .line 106
    move/from16 v11, p6

    .line 108
    move/from16 v12, p7

    .line 110
    move-object/from16 v13, p8

    .line 112
    move-object/from16 v14, p9

    .line 114
    invoke-virtual/range {v5 .. v14}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 116
    return-void
    .line 119
.end method

.method private startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p4

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 5
    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 9
    invoke-static {v1, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 14
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 15
    invoke-static {v1, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    .line 17
    move-result v4

    .line 20
    move/from16 v5, p2

    .line 21
    invoke-static {v2, v5, v4, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 23
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    new-instance v4, Landroid/content/Intent;

    .line 37
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 39
    const/high16 v2, 0x8000000

    .line 42
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 47
    const-string v5, "Adding MULTIPLE_TASK"

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    invoke-static {v2, v5, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 57
    const-string v2, "Cancel entering split as not supporting multi-instances"

    .line 59
    new-array v5, v3, [Ljava/lang/Object;

    .line 61
    invoke-static {v1, v2, v5}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 66
    const v2, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 68
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 75
    const/4 v1, -0x1

    .line 78
    :cond_1
    :goto_0
    move v9, v1

    .line 79
    move-object v7, v4

    .line 80
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 81
    move-object/from16 v6, p1

    .line 83
    move-object/from16 v8, p3

    .line 85
    move-object/from16 v10, p5

    .line 87
    move/from16 v11, p6

    .line 89
    move/from16 v12, p7

    .line 91
    move-object/from16 v13, p8

    .line 93
    move-object/from16 v14, p9

    .line 95
    invoke-virtual/range {v5 .. v14}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 97
    return-void
    .line 100
.end method

.method private startIntentInSoSc(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    move v1, p2

    goto :goto_0

    .line 9
    :cond_2
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 10
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-direct {p0, v2, v3, p2, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->sameClass(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    .line 13
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 15
    :goto_1
    invoke-static {v3, p2, v1, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 16
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isFold()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentInSoScFor3rd(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 18
    :cond_5
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentInSoScForMiui(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private startIntentInSoScFor3rd(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 4
    move-result v0

    .line 7
    if-nez p3, :cond_0

    .line 8
    new-instance p3, Landroid/content/Intent;

    .line 10
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 12
    :cond_0
    const/high16 v1, 0x40000

    .line 15
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    const/high16 v1, 0x8000000

    .line 20
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 29
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 33
    new-instance v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;

    .line 35
    const/4 v4, 0x1

    .line 37
    invoke-direct {v3, v1, p2, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;-><init>(Landroid/os/Parcelable;II)V

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 41
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 50
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    move-result-object v3

    .line 55
    const-string v4, " to sosc"

    .line 56
    if-eqz v0, :cond_2

    .line 58
    if-eqz v2, :cond_1

    .line 60
    iget p1, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 62
    const/4 p2, -0x1

    .line 64
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 65
    goto/16 :goto_1

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 70
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 72
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    const-string p2, "3rd SoScActive startIntentInSoSc:"

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto/16 :goto_1

    .line 97
    :cond_2
    if-eqz v3, :cond_5

    .line 99
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 101
    move-result v0

    .line 104
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isHomeOrRecent(I)Z

    .line 105
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->findSameComponentInRunningTask(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    move-result-object p2

    .line 115
    const-string v0, " and task "

    .line 116
    if-eqz p2, :cond_4

    .line 118
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 120
    const/4 p3, 0x0

    .line 122
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToSideStage(II)Z

    .line 123
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    const-string p3, "3rd Move same component task:"

    .line 130
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget p2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 152
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto :goto_1

    .line 156
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 157
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 159
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    const-string p2, "3rd StartIntent:"

    .line 166
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget p2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    goto :goto_1

    .line 192
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 193
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 195
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    const-string p2, "3rd Top is home, start "

    .line 202
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p1

    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_1
    return-void
    .line 220
.end method

.method private startIntentInSoScForMiui(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 12
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 14
    move-result v5

    .line 17
    if-nez p3, :cond_0

    .line 18
    new-instance v6, Landroid/content/Intent;

    .line 20
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    move-object/from16 v6, p3

    .line 26
    :goto_0
    const/high16 v7, 0x40000

    .line 28
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    const-string v7, "com.xiaomi.aiasst.vision"

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 35
    move-result-object v8

    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v7

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x1

    .line 44
    if-eqz v7, :cond_1

    .line 45
    const/high16 v7, 0x8000000

    .line 47
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    move v7, v8

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v7, v9

    .line 54
    :goto_1
    iget-object v10, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 55
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 57
    move-result v10

    .line 60
    if-eqz v10, :cond_4

    .line 61
    iget-object v10, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 63
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getActiveStageInSingleMode()Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 65
    move-result-object v11

    .line 68
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isStageAtTopOrLeft(Lcom/android/wm/shell/sosc/SoScStageTaskListener;)Z

    .line 69
    move-result v10

    .line 72
    if-eqz v10, :cond_2

    .line 73
    if-eqz v3, :cond_3

    .line 75
    :cond_2
    iget-object v10, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 77
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getActiveStageInSingleMode()Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 79
    move-result-object v11

    .line 82
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isStageAtTopOrLeft(Lcom/android/wm/shell/sosc/SoScStageTaskListener;)Z

    .line 83
    move-result v10

    .line 86
    if-nez v10, :cond_4

    .line 87
    if-ne v3, v9, :cond_4

    .line 89
    :cond_3
    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 91
    move-result v3

    .line 94
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 95
    move-result-object v10

    .line 98
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 99
    move-result-object v10

    .line 102
    iget-object v11, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 103
    new-instance v12, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;

    .line 105
    const/4 v13, 0x2

    .line 107
    invoke-direct {v12, v10, v2, v13}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;-><init>(Landroid/os/Parcelable;II)V

    .line 108
    invoke-virtual {v11, v12}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 111
    move-result-object v11

    .line 114
    const/4 v12, 0x0

    .line 115
    invoke-virtual {v11, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v11

    .line 119
    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 120
    if-nez v7, :cond_5

    .line 122
    goto :goto_2

    .line 124
    :cond_5
    move-object v12, v11

    .line 125
    :goto_2
    invoke-direct {v0, v10, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->findSameComponentInTopTask(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    move-result-object v11

    .line 129
    const-string v13, " task, do noting."

    .line 130
    const-string v14, "Get error wdmode:"

    .line 132
    const-string v15, " to sosc"

    .line 134
    if-nez v5, :cond_12

    .line 136
    if-eqz v11, :cond_6

    .line 138
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 140
    move-result v5

    .line 143
    if-ne v5, v9, :cond_6

    .line 144
    move-object v5, v11

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    move-result-object v5

    .line 151
    :goto_3
    if-eqz v5, :cond_7

    .line 152
    iget-boolean v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 154
    if-nez v9, :cond_7

    .line 156
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 158
    const v1, 0x7f1303a2    # @string/dock_non_resizeble_failed_to_dock_text 'App does not support split screen'

    .line 160
    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 163
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void

    .line 170
    :cond_7
    const/4 v8, -0x1

    .line 171
    if-eqz v11, :cond_d

    .line 172
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 174
    move-result v1

    .line 177
    const-string v2, " to sosc."

    .line 178
    const/4 v6, 0x1

    .line 180
    if-ne v1, v6, :cond_9

    .line 181
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 183
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->isWideScreen()Z

    .line 187
    move-result v1

    .line 190
    if-nez v1, :cond_8

    .line 191
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 193
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isLandscape()Z

    .line 195
    move-result v1

    .line 198
    if-eqz v1, :cond_8

    .line 199
    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 201
    invoke-virtual {v0, v1, v8, v3, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 203
    goto :goto_4

    .line 206
    :cond_8
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 207
    invoke-virtual {v0, v11, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->switchFullToSingleOpen(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 209
    :goto_4
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    const-string v3, "Start fullscreen task "

    .line 216
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    iget v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 236
    :cond_9
    const/4 v4, 0x5

    .line 237
    if-ne v1, v4, :cond_c

    .line 238
    const-string v1, "Move freeform task "

    .line 240
    if-eqz v5, :cond_b

    .line 242
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 244
    move-result v4

    .line 247
    invoke-direct {v0, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isHomeOrRecent(I)Z

    .line 248
    move-result v4

    .line 251
    if-eqz v4, :cond_a

    .line 252
    goto :goto_5

    .line 254
    :cond_a
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 255
    invoke-virtual {v0, v11, v5, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->switchFreeformToSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 257
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 267
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, " topFullScreenTask:"

    .line 272
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 290
    :cond_b
    :goto_5
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 291
    invoke-virtual {v0, v11, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->switchFreeformToSingleOpen(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 293
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 303
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v1

    .line 314
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 318
    :cond_c
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    .line 321
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 335
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 339
    :cond_d
    if-eqz v5, :cond_11

    .line 340
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 342
    move-result v9

    .line 345
    invoke-direct {v0, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isHomeOrRecent(I)Z

    .line 346
    move-result v9

    .line 349
    if-eqz v9, :cond_f

    .line 350
    if-eqz v12, :cond_e

    .line 352
    iget v1, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 354
    invoke-virtual {v0, v1, v8, v3, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 356
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 361
    const-string v2, "Start bg task"

    .line 363
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    iget v2, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, " tos sosc."

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 385
    :cond_e
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 386
    invoke-virtual {v0, v1, v6, v3, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 388
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    .line 393
    const-string v2, "Just startIntentInSoSc:"

    .line 395
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object v1

    .line 409
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_f
    invoke-direct {v0, v10, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->findSameComponentInRunningTask(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 414
    move-result-object v2

    .line 417
    const-string v8, " and task "

    .line 418
    if-eqz v2, :cond_10

    .line 420
    if-eqz v7, :cond_10

    .line 422
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 424
    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToSideStage(II)Z

    .line 426
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    const-string v3, "Move same component task:"

    .line 433
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    move-result-object v1

    .line 455
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    goto :goto_6

    .line 459
    :cond_10
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 460
    invoke-virtual {v0, v1, v6, v3, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 462
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    const-string v2, "StartIntent:"

    .line 469
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v1

    .line 491
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_11
    :goto_6
    return-void

    .line 495
    :cond_12
    if-eqz v11, :cond_13

    .line 496
    goto :goto_7

    .line 498
    :cond_13
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 499
    invoke-virtual {v5, v10, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->findTaskInSoSc(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 501
    move-result-object v11

    .line 504
    :goto_7
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 505
    invoke-virtual {v5, v11}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 507
    move-result-object v5

    .line 510
    if-eqz v5, :cond_14

    .line 511
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 515
    const-string/jumbo v3, "startIntentInSoScForMiui targetComponent:"

    .line 517
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v3, "with userId:"

    .line 526
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    const-string v2, " has running in sosc."

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void

    .line 547
    :cond_14
    if-eqz v11, :cond_18

    .line 548
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 550
    move-result v1

    .line 553
    const/4 v2, 0x5

    .line 554
    if-ne v1, v2, :cond_17

    .line 555
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 557
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 559
    move-result v1

    .line 562
    if-eqz v1, :cond_15

    .line 563
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 565
    invoke-virtual {v0, v11, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->startFreeformFillSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 567
    goto :goto_8

    .line 570
    :cond_15
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 571
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 573
    move-result v1

    .line 576
    if-eqz v1, :cond_16

    .line 577
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 579
    invoke-virtual {v0, v11, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->startFreeformReplaceSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 581
    :cond_16
    :goto_8
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    const-string v2, "Get same component, it is in freeform move task "

    .line 588
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    move-result-object v1

    .line 604
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void

    .line 608
    :cond_17
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    .line 611
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    move-result-object v1

    .line 625
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 629
    :cond_18
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 630
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resetRootTaskFocusable()V

    .line 632
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 635
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 637
    move-result v2

    .line 640
    if-eqz v2, :cond_19

    .line 641
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 643
    const/4 v5, 0x1

    .line 645
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resetSoScMinimized(Z)V

    .line 646
    :cond_19
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 649
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 651
    move-result v2

    .line 654
    if-eqz v2, :cond_1a

    .line 655
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 657
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onPreEnterFullSoScState()V

    .line 659
    :cond_1a
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 662
    invoke-virtual {v0, v1, v6, v3, v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 664
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    .line 669
    const-string v2, "SoScActive startIntentInSoSc:"

    .line 671
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    move-result-object v1

    .line 685
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
    .line 689
.end method

.method private startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-static/range {p5 .. p5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    move/from16 v3, p2

    .line 12
    move/from16 v4, p6

    .line 14
    invoke-static {v1, v3, v4, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    new-instance v3, Landroid/content/Intent;

    .line 30
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 32
    const/high16 v1, 0x8000000

    .line 35
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    new-instance v4, Landroid/content/Intent;

    .line 40
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 42
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 48
    const-string v5, "Adding MULTIPLE_TASK"

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v1, v5, v2}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    move-object/from16 v9, p5

    .line 57
    move-object v6, v3

    .line 59
    move-object v10, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 62
    const-string v4, "Cancel entering split as not supporting multi-instances"

    .line 64
    new-array v5, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v4, v5}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 71
    const v4, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 73
    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    move-object v6, v3

    .line 83
    move-object v9, v6

    .line 84
    move-object v10, v9

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object/from16 v9, p5

    .line 87
    move-object v6, v3

    .line 89
    move-object v10, v6

    .line 90
    :goto_0
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 91
    move-object/from16 v5, p1

    .line 93
    move-object/from16 v7, p3

    .line 95
    move-object/from16 v8, p4

    .line 97
    move-object/from16 v11, p7

    .line 99
    move-object/from16 v12, p8

    .line 101
    move/from16 v13, p9

    .line 103
    move/from16 v14, p10

    .line 105
    move-object/from16 v15, p11

    .line 107
    move-object/from16 v16, p12

    .line 109
    invoke-virtual/range {v4 .. v16}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntents(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 111
    return-void
    .line 114
.end method

.method private startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-static/range {p5 .. p5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    move/from16 v3, p2

    .line 12
    move/from16 v4, p6

    .line 14
    invoke-static {v1, v3, v4, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    new-instance v3, Landroid/content/Intent;

    .line 30
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 32
    const/high16 v1, 0x8000000

    .line 35
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    new-instance v4, Landroid/content/Intent;

    .line 40
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 42
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 48
    const-string v5, "Adding MULTIPLE_TASK"

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v1, v5, v2}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    move-object/from16 v9, p5

    .line 57
    move-object v6, v3

    .line 59
    move-object v10, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 62
    const-string v4, "Cancel entering split as not supporting multi-instances"

    .line 64
    new-array v5, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v4, v5}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 71
    const v4, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 73
    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    move-object v6, v3

    .line 83
    move-object v9, v6

    .line 84
    move-object v10, v9

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object/from16 v9, p5

    .line 87
    move-object v6, v3

    .line 89
    move-object v10, v6

    .line 90
    :goto_0
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 91
    move-object/from16 v5, p1

    .line 93
    move-object/from16 v7, p3

    .line 95
    move-object/from16 v8, p4

    .line 97
    move-object/from16 v11, p7

    .line 99
    move-object/from16 v12, p8

    .line 101
    move/from16 v13, p9

    .line 103
    move/from16 v14, p10

    .line 105
    move-object/from16 v15, p11

    .line 107
    move-object/from16 v16, p12

    .line 109
    invoke-virtual/range {v4 .. v16}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 111
    return-void
    .line 114
.end method

.method private startTaskFromHome(IILandroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 14
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resolveStartStageForSoSc(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 18
    move-result-object p3

    .line 21
    :try_start_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 22
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 27
    invoke-virtual {v1, p2, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEvictChildTasks(ILandroid/window/WindowContainerTransaction;)V

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 32
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resetRootTaskFocusable()V

    .line 34
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 37
    move-result-object p2

    .line 40
    invoke-interface {p2, p1, p3}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 p2, 0x2

    .line 47
    if-ne p1, p2, :cond_1

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    sget-object p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 57
    const-string p2, "Failed to launch task"

    .line 59
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_1
    :goto_0
    return-void
    .line 64
.end method


# virtual methods
.method public asSplitScreen()Lcom/android/wm/shell/sosc/SoScSplitScreen;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mImpl:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public continueUpdateSoScState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 4
    return-void
    .line 7
.end method

.method public createStageCoordinator()Lcom/android/wm/shell/sosc/SoScStageCoordinator;
    .locals 14

    .line 1
    new-instance v13, Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 7
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 9
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 11
    iget-object v6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 13
    iget-object v7, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 15
    iget-object v8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 17
    iget-object v9, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 19
    iget-object v10, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 21
    iget-object v11, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 23
    iget-object v12, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 25
    move-object v0, v13

    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;-><init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V

    .line 28
    return-object v13
    .line 31
.end method

.method public deferUpdateSoScState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->deferUpdateSoScState()V

    .line 4
    return-void
    .line 7
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScUtils;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 22
    return-void
    .line 25
.end method

.method public ensureSoScMinimized()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->ensureSoScMinimized()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public enterSplitScreen(IZ)V
    .locals 1

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->enterSplitScreen(IZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public enterSplitScreen(IZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)Z

    return-void
.end method

.method public bridge synthetic enterSplitScreenForMiui(IZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public exitSoSc(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 12
    const-string p1, "SoSc is disabled"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    const/4 v0, -0x1

    .line 28
    const/4 v1, 0x4

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSplitScreen(II)V

    .line 32
    goto :goto_1

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 36
    if-nez p1, :cond_2

    .line 38
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->flingDividerToDismiss(ZI)V

    .line 43
    :cond_3
    :goto_1
    return-void
    .line 46
.end method

.method public bridge synthetic exitSplitScreen(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public exitSplitScreen(II)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->exitSplitScreen(II)V

    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->exitSplitScreenOnHide(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public findTaskIdsForSoSc([ILandroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 6

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_9

    .line 3
    if-eqz p3, :cond_9

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 16
    move-result v2

    .line 19
    const v3, 0x7fffffff

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    return v2

    .line 34
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    move v3, p0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v4

    .line 44
    if-ge v3, v4, :cond_5

    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 51
    iget-boolean v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    .line 53
    if-eqz v5, :cond_2

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 61
    if-nez v5, :cond_3

    .line 62
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 64
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 66
    move-result-object v5

    .line 69
    invoke-virtual {p2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v4

    .line 81
    invoke-virtual {v1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 89
    if-nez v5, :cond_4

    .line 90
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 92
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 94
    move-result-object v5

    .line 97
    invoke-virtual {p3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v5

    .line 101
    if-eqz v5, :cond_4

    .line 102
    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v4

    .line 109
    invoke-virtual {v1, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    check-cast v0, Ljava/lang/Integer;

    .line 120
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Integer;

    .line 126
    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    move-result v0

    .line 133
    aput v0, p1, p0

    .line 134
    :cond_6
    if-eqz v1, :cond_7

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    move-result v0

    .line 141
    aput v0, p1, v2

    .line 142
    :cond_7
    invoke-virtual {p2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result p2

    .line 147
    if-eqz p2, :cond_8

    .line 148
    aget p0, p1, p0

    .line 150
    aget p2, p1, v2

    .line 152
    if-ne p0, p2, :cond_8

    .line 154
    const/4 p0, -0x1

    .line 156
    aput p0, p1, v2

    .line 157
    :cond_8
    return v2

    .line 159
    :cond_9
    :goto_2
    return p0
    .line 160
.end method

.method public finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScExit()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 26
    return-void

    .line 29
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->sendExitStateIfNeeded()V

    .line 32
    return-void
    .line 35
.end method

.method public finishExitSoSc(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->finishExitSoSc(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public finishRemoveTaskFromSoSc()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->finishRemoveTaskFromSoSc()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public finishSwapTasks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->finishSwapTasks()V

    .line 9
    return-void
    .line 12
.end method

.method public getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDividerLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
    .line 12
.end method

.method public getDividerTouchBottom()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->getTouchBottom()I

    .line 16
    move-result p0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getDividerSize()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p0

    .line 18
    const v0, 0x7f0710be    # @dimen/split_divider_bar_width '10.0dp'

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getMainStageRoot()Landroid/window/WindowContainerToken;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getSideStageRoot()Landroid/window/WindowContainerToken;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getSoScSplitInfo()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScSplitInfo()Landroid/os/Bundle;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
    .line 12
.end method

.method public getSoScState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScState()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, -0x1

    .line 11
    return p0
    .line 12
.end method

.method public getSplitPosition(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSplitPosition(I)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public getStageLeash(I)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageLeash(I)Landroid/view/SurfaceControl;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public getStageOfTask(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTaskId(I)I

    .line 14
    move-result p1

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0
    .line 26
.end method

.method public getTaskLeash(I)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTaskLeash(I)Landroid/view/SurfaceControl;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getTopRoot()Landroid/window/WindowContainerToken;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTopRoot()Landroid/window/WindowContainerToken;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getTransitionHandler()Lcom/android/wm/shell/sosc/SoScStageCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    return-object p0
    .line 4
.end method

.method public goToFullscreenFromSplit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->goToFullscreenFromSplit()V

    .line 4
    return-void
    .line 7
.end method

.method public isInSoScFullMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isIsOpenPairs()Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 21
    :cond_1
    return v1
    .line 22
.end method

.method public isLaunchToSplit(Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isLaunchToSplit(Landroid/app/TaskInfo;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isSplitScreenVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isTaskInSoScLeftOrTopScreen(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isTaskInSoScRightOrBottomScreen(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isTaskInSplitScreen(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 4
    move-result p0

    .line 7
    const/4 p1, -0x1

    .line 8
    if-eq p0, p1, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public isTaskInSplitScreenForeground(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSplitScreen(I)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public isTaskRootOrStageRoot(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isRootOrStageRoot(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public moveTaskToFullscreen(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->moveTaskToFullscreen(I)V

    .line 4
    return-void
    .line 7
.end method

.method public moveToSideStage(II)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)Z

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    .line 4
    return-void
    .line 7
.end method

.method public onFinishedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onFinishedWakingUp()V

    .line 4
    return-void
    .line 7
.end method

.method public onGestureEnd(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onGestureEnd(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onGestureStart(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onGestureStart(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 16
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEvictInvisibleChildTasks(Landroid/window/WindowContainerTransaction;)V

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 31
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 33
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 41
    :cond_1
    const-string v1, "SplitScreenController#onGoingToRecentsLegacy"

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    .line 46
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

    .line 50
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 52
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 55
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 57
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 60
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    .line 62
    move-result-object p0

    .line 65
    filled-new-array {p0}, [Landroid/view/RemoteAnimationTarget;

    .line 66
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_2
    return-object v1
    .line 71
.end method

.method public onInit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 12
    const-string v1, "SoScSplitScreen"

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;

    .line 16
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 26
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda2;

    .line 28
    invoke-direct {v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 30
    const-string v2, "extra_shell_sosc_split_screen"

    .line 33
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 38
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScUtils;->init(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 47
    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->createStageCoordinator()Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 51
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 55
    :cond_0
    return-void
    .line 57
.end method

.method public bridge synthetic onKeyguardDismissAnimationFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onKeyguardVisibilityChanged(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public onMultiWindowSwitchEnd()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onMultiWindowSwitchEnd()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onMultiWindowSwitchStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onMultiWindowSwitchStart()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    array-length v4, p1

    .line 11
    if-ge v2, v4, :cond_2

    .line 12
    aget-object v4, p1, v2

    .line 14
    iget v4, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 16
    if-nez v4, :cond_1

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    const/4 v2, 0x2

    .line 25
    if-ge v3, v2, :cond_3

    .line 26
    return-object v1

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 29
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 31
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    .line 35
    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 39
    :cond_4
    const-string v2, "SplitScreenController#onStartingSplitLegacy"

    .line 42
    invoke-direct {p0, p1, v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;

    .line 44
    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

    .line 48
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 53
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    const/4 v1, 0x1

    .line 58
    :try_start_0
    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 61
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    .line 63
    move-result-object p0

    .line 66
    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    array-length p0, p1

    .line 69
    :goto_1
    if-ge v0, p0, :cond_6

    .line 70
    aget-object v2, p1, v0

    .line 72
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 74
    if-eqz v2, :cond_5

    .line 76
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 78
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_1

    .line 83
    :cond_6
    return-object v1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    array-length v1, p1

    .line 86
    :goto_2
    if-ge v0, v1, :cond_8

    .line 87
    aget-object v2, p1, v0

    .line 89
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 91
    if-eqz v2, :cond_7

    .line 93
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 95
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 98
    goto :goto_2

    .line 100
    :cond_8
    throw p0
    .line 101
.end method

.method public prepareDragDropIntentToSoSc(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;II)V
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 2
    move-result-object v3

    .line 5
    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 6
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getPackageName(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getPackageName(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    :cond_0
    move-object v2, v0

    .line 20
    invoke-static {v3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->samePackageInSoSc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 34
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    const/high16 v4, 0x40000

    .line 39
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    const/high16 v4, 0x8000000

    .line 44
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    move-object v8, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v8, v1

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 52
    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 56
    move-result v0

    .line 59
    const/4 v4, -0x1

    .line 60
    if-nez v0, :cond_2

    .line 61
    invoke-direct {p0, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopTaskCanEnterSoSc(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    move-result-object v1

    .line 66
    :cond_2
    move-object v10, v1

    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 68
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    if-nez v10, :cond_3

    .line 76
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 78
    const-string v1, "action_enter_single"

    .line 80
    const/4 v4, 0x0

    .line 82
    move-object v2, v3

    .line 83
    move-object v3, v4

    .line 84
    move v4, p3

    .line 85
    move v5, p4

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 87
    goto :goto_1

    .line 90
    :cond_3
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 91
    const-string v1, "action_enter_both"

    .line 93
    move v4, p3

    .line 95
    move v5, p4

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 97
    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 101
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 103
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 109
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScState()I

    .line 111
    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 115
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTopTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 117
    move-result-object v0

    .line 120
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 121
    const-string v2, "action_enter_both"

    .line 123
    sget-object v4, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 125
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 127
    move-result-object v4

    .line 130
    move-object v0, v1

    .line 131
    move-object v1, v2

    .line 132
    move-object v2, v4

    .line 133
    move v4, p3

    .line 134
    move v5, p4

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 136
    goto :goto_1

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 140
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 142
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    const/4 v0, 0x2

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackExitPairs(I)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackExitPairs(I)V

    .line 152
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackSingleModeToFullMode(Ljava/lang/String;II)V

    .line 155
    :cond_6
    :goto_1
    iget-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 158
    invoke-virtual {p4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onDroppedToSoSc()V

    .line 160
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 163
    move-object v6, p1

    .line 165
    move-object v7, p2

    .line 166
    move v9, p3

    .line 167
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareDragDropIntentToSoSc(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    .line 168
    :cond_7
    return-void
    .line 171
.end method

.method public prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V
    .locals 9

    .line 1
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v7

    .line 7
    if-eqz v7, :cond_6

    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 14
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    invoke-direct {p0, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopTaskCanEnterSoSc(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    move-object v8, v1

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 27
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    if-nez v8, :cond_1

    .line 35
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 37
    const-string v2, "action_enter_single"

    .line 39
    sget-object v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 41
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    move v5, p3

    .line 48
    move v6, p4

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 54
    const-string v2, "action_enter_both"

    .line 56
    sget-object v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 58
    invoke-virtual {v3, v8}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 63
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 67
    move-object v3, v4

    .line 68
    move-object v4, v5

    .line 69
    move v5, p3

    .line 70
    move v6, p4

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    goto :goto_1

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 76
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 84
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScState()I

    .line 86
    move-result v1

    .line 89
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 90
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTopTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    move-result-object v1

    .line 95
    sget-object v2, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 96
    const-string v3, "action_enter_both"

    .line 98
    sget-object v4, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 100
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 105
    invoke-virtual {v4, v7}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 109
    move-object v1, v2

    .line 110
    move-object v2, v3

    .line 111
    move-object v3, v5

    .line 112
    move v5, p3

    .line 113
    move v6, p4

    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 119
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 121
    move-result v1

    .line 124
    if-eqz v1, :cond_4

    .line 125
    const/4 v1, 0x2

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackExitPairs(I)V

    .line 128
    const/4 v1, -0x1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackExitPairs(I)V

    .line 132
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 135
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 140
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackSingleModeToFullMode(Ljava/lang/String;II)V

    .line 141
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 144
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onDroppedToSoSc()V

    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 149
    invoke-virtual {v0, p1, v7, p3, v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    .line 151
    :cond_5
    return-void

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    const-string v2, "Unknown taskId"

    .line 157
    invoke-static {v2, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    throw v0
    .line 166
.end method

.method public prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 5
    return-void
    .line 8
.end method

.method public prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isInSoScFullMode()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackExitPairs(I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    sget-object p3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 20
    invoke-virtual {p3}, Lcom/android/wm/shell/sosc/SoScUtils;->inSoScSingleMode()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 28
    invoke-virtual {p3, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v2, -0x1

    .line 35
    const-string v3, "action_exit_single"

    .line 36
    invoke-virtual {v1, v3, p3, v0, v2}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 41
    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;I)V

    .line 45
    :cond_2
    return-void

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string p1, "Unknown taskId"

    .line 51
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
    .line 60
.end method

.method public prepareExitSplitScreen(Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public prepareRemoveTaskFromSoSc(Landroid/window/WindowContainerTransaction;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isInSoScFullMode()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->trackExitPairs(I)V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->prepareRemoveTaskFromSoSc(Landroid/window/WindowContainerTransaction;I)V

    .line 23
    :cond_1
    return-void

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string p1, "Unknown taskId"

    .line 29
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
    .line 38
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 4
    instance-of v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public removeFromSideStage(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->removeFromSideStage(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public removeTaskFromSplit(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "removeTaskFromSplit taskId:"

    .line 4
    invoke-static {v1, p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->removeTask(I)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public resetSoScMinimized()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resetSoScMinimized()V

    return-void
.end method

.method public resetSoScMinimized(Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resetSoScMinimized(Z)V

    return-void
.end method

.method public setMiuiWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    return-void
    .line 4
.end method

.method public setSideStagePosition(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 5
    return-void
    .line 8
.end method

.method public setSoScMinimized(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSoScMinimized(IZ)V

    .line 5
    return-void
    .line 8
.end method

.method public setSplitRatio(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setSplitRatio(F)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setToDefaultSplitRatioIfNeed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setToDefaultSplitRatioIfNeed()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public snapSplitToNextRatio(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->snapSplitToNextRatio(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public splitPrimaryTask(II)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 10
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    move-result-object p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    return v1

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 19
    move-result v0

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_6

    .line 24
    const/4 v2, 0x3

    .line 26
    if-ne v0, v2, :cond_2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 30
    iget v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isRootOrStageRoot(I)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    return v1

    .line 40
    :cond_3
    iget-boolean v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 41
    if-nez v0, :cond_4

    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 45
    const p1, 0x7f1303a2    # @string/dock_non_resizeble_failed_to_dock_text 'App does not support split screen'

    .line 47
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 54
    return v1

    .line 57
    :cond_4
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 58
    const/4 v1, 0x1

    .line 60
    if-eqz v0, :cond_5

    .line 61
    sget-object v2, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 63
    const-string v3, "action_enter_single"

    .line 65
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 67
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v7, 0x4

    .line 74
    move v6, p1

    .line 75
    invoke-virtual/range {v2 .. v7}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 79
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 81
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTaskInSoScByResizeEnter(III)V

    .line 83
    goto :goto_0

    .line 86
    :cond_5
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 87
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 90
    :cond_6
    :goto_0
    return v1
    .line 93
.end method

.method public stageInfo(I)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->stageInfo(I)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/high16 v0, 0x40000

    .line 4
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getUserId(I)I

    move-result v2

    .line 8
    invoke-static {v0, p2, v2, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;

    const/4 v3, 0x3

    invoke-direct {v2, p1, p2, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;-><init>(Landroid/os/Parcelable;II)V

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p2, :cond_1

    .line 13
    iget p1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 14
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "Start task in background"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/high16 p2, 0x8000000

    .line 15
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v0, "Adding MULTIPLE_TASK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    const-string/jumbo p1, "startIntent"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p2, "Cancel entering split as not supporting multi-instances"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    const p1, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 22
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    const/4 v1, 0x3

    invoke-virtual {v0, p6, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onRequestToSplit(Lcom/android/internal/logging/InstanceId;I)V

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentInSoSc(Landroid/app/PendingIntent;II)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    const-string p1, "SoSc is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentInSoSc(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startMultipleTaskForHome(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo p2, "startMultipleTaskForHome, packageName1 "

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p2, " is  not support multiple."

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 43
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 45
    move-result v0

    .line 48
    if-nez p3, :cond_2

    .line 49
    new-instance p3, Landroid/content/Intent;

    .line 51
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 53
    :cond_2
    const/high16 v1, 0x40000

    .line 56
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x8000000

    .line 61
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 70
    move-result-object v1

    .line 73
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 78
    new-instance v4, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;

    .line 80
    const/4 v5, 0x0

    .line 82
    invoke-direct {v4, v1, p2, v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;-><init>(Landroid/os/Parcelable;II)V

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 86
    move-result-object p2

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object p2

    .line 94
    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 95
    const/4 v3, -0x1

    .line 97
    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 100
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 102
    move-result v0

    .line 105
    if-eqz v0, :cond_9

    .line 106
    if-eqz p2, :cond_3

    .line 108
    sget-object p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v0, "startMultipleTaskForHome, get same component, startMultiInstancesSplit start task "

    .line 114
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget v0, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, " in background"

    .line 125
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p3

    .line 133
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget p1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 137
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 139
    return-void

    .line 142
    :cond_3
    sget-object p2, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "startMultipleTaskForHome, sosc active, start a new to sosc"

    .line 145
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 151
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 153
    return-void

    .line 156
    :cond_4
    if-eqz v2, :cond_9

    .line 157
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 159
    move-result v0

    .line 162
    const/4 v4, 0x2

    .line 163
    const-string v5, " to sosc"

    .line 164
    if-ne v0, v4, :cond_6

    .line 166
    if-eqz p2, :cond_5

    .line 168
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v2, "startMultipleTaskForHome, top is home, start  "

    .line 174
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    iget v2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 195
    invoke-virtual {p0, p2, v3, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 197
    :cond_5
    sget-object p2, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "startMultipleTaskForHome, top is home, start a new to sosc"

    .line 202
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 208
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 210
    return-void

    .line 213
    :cond_6
    if-nez p2, :cond_7

    .line 214
    goto :goto_0

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 217
    iget p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 219
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 221
    move-result-object v1

    .line 224
    :goto_0
    if-eqz v1, :cond_8

    .line 225
    sget-object p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo p3, "startMultipleTaskForHome, get same component, move "

    .line 231
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    iget p3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 237
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string p3, "and topFullScreenTask "

    .line 242
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget p3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 247
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p2

    .line 258
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 262
    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToSideStage(II)Z

    .line 264
    return-void

    .line 267
    :cond_8
    sget-object p2, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "startMultipleTaskForHome, start a new with current top to sosc."

    .line 270
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 276
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 278
    :cond_9
    return-void
    .line 281
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 4
    :cond_0
    invoke-static {p4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p4

    .line 5
    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getUserId(I)I

    move-result v2

    .line 7
    invoke-static {p1, v1, v2, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    .line 10
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "Adding MULTIPLE_TASK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    const-string/jumbo p1, "startShortcut"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->switchSplitPosition(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p2, "Cancel entering split as not supporting multi-instances"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    const p1, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 17
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    const/4 v1, 0x3

    invoke-virtual {v0, p6, v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onRequestToSplit(Lcom/android/internal/logging/InstanceId;I)V

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p3

    .line 3
    if-nez p2, :cond_0

    .line 4
    new-instance v2, Landroid/os/Bundle;

    .line 6
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    move-object v5, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v5, p2

    .line 13
    :goto_0
    invoke-static {v5}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 21
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 22
    invoke-static {p3, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 28
    move-result v6

    .line 31
    iget-object v7, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 32
    invoke-static {p3, v7}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    .line 34
    move-result v7

    .line 37
    invoke-static {v3, v6, v7, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 44
    move-result v3

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v3, :cond_1

    .line 49
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    .line 52
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 55
    const-string v3, "Adding MULTIPLE_TASK"

    .line 57
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v2, v3, v4}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    goto :goto_1

    .line 64
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 65
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 67
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 73
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 79
    invoke-virtual {v2, p3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 81
    :cond_2
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 84
    const-string v2, "Cancel entering split as not supporting multi-instances"

    .line 86
    new-array v3, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 93
    const v2, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 95
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 102
    const/4 v1, -0x1

    .line 105
    :cond_3
    :goto_1
    move v6, v1

    .line 106
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 107
    move-object v4, p1

    .line 109
    move-object/from16 v7, p4

    .line 110
    move/from16 v8, p5

    .line 112
    move/from16 v9, p6

    .line 114
    move-object/from16 v10, p7

    .line 116
    move-object/from16 v11, p8

    .line 118
    invoke-virtual/range {v3 .. v11}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 120
    return-void
    .line 123
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p3

    .line 3
    if-nez p2, :cond_0

    .line 4
    new-instance v2, Landroid/os/Bundle;

    .line 6
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p2

    .line 12
    :goto_0
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 21
    invoke-static {p3, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 26
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 27
    move-result v5

    .line 30
    iget-object v6, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 31
    invoke-static {p3, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getUserId(ILcom/android/wm/shell/ShellTaskOrganizer;)I

    .line 33
    move-result v6

    .line 36
    invoke-static {v3, v5, v6, v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(Ljava/lang/String;IILjava/lang/String;)Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 47
    move-result v3

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz v3, :cond_1

    .line 52
    const/4 v3, 0x1

    .line 54
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    .line 55
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 58
    const-string v5, "Adding MULTIPLE_TASK"

    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    .line 62
    invoke-static {v3, v5, v4}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    goto :goto_1

    .line 67
    :cond_1
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 68
    const-string v3, "Cancel entering split as not supporting multi-instances"

    .line 70
    new-array v5, v4, [Ljava/lang/Object;

    .line 72
    invoke-static {v1, v3, v5}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 77
    const v3, 0x7f1303a1    # @string/dock_multi_instances_not_supported_text 'This app can only be opened in 1 window.'

    .line 79
    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    const/4 v1, -0x1

    .line 89
    :cond_2
    :goto_1
    move v6, v1

    .line 90
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 91
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 93
    move-result-object v5

    .line 96
    move-object v4, p1

    .line 97
    move-object/from16 v7, p4

    .line 98
    move/from16 v8, p5

    .line 100
    move/from16 v9, p6

    .line 102
    move-object/from16 v10, p7

    .line 104
    move-object/from16 v11, p8

    .line 106
    invoke-virtual/range {v3 .. v11}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 108
    return-void
    .line 111
.end method

.method public startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isPausingTasksFinished()Z

    .line 12
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 19
    move-result-object v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 25
    move-result-object v4

    .line 28
    move-object v12, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object/from16 v12, p4

    .line 31
    :goto_0
    const-string v4, " has running in top."

    .line 33
    const/4 v5, -0x1

    .line 35
    if-eqz v3, :cond_3

    .line 36
    const-string/jumbo v6, "taskId1"

    .line 38
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result v6

    .line 44
    const-string/jumbo v7, "taskId2"

    .line 45
    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 48
    move-result v8

    .line 51
    if-eq v6, v5, :cond_3

    .line 52
    if-eq v8, v5, :cond_3

    .line 54
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 56
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 58
    move-result v1

    .line 61
    if-eq v1, v5, :cond_2

    .line 62
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 64
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 66
    move-result v1

    .line 69
    if-eq v1, v5, :cond_2

    .line 70
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "taskId1:"

    .line 74
    const-string v2, " taskId2:"

    .line 77
    invoke-static {v1, v6, v2, v8, v4}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_2
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 87
    const/4 v7, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v10, 0x1

    .line 91
    const/high16 v11, 0x3f000000    # 0.5f

    .line 92
    sget-object v13, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 94
    invoke-virtual/range {v5 .. v13}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 96
    return-void

    .line 99
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 100
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 104
    move-result-object v6

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 108
    move-result-object v7

    .line 111
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 112
    move-result-object v7

    .line 115
    if-eqz v6, :cond_2c

    .line 116
    if-nez v7, :cond_4

    .line 118
    goto/16 :goto_d

    .line 120
    :cond_4
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 122
    move-result-object v8

    .line 125
    invoke-virtual {v8, v6}, Lcom/android/wm/shell/sosc/SoScUtils;->isInPausingTask(Landroid/content/ComponentName;)Z

    .line 126
    move-result v8

    .line 129
    if-nez v8, :cond_2b

    .line 130
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 132
    move-result-object v8

    .line 135
    invoke-virtual {v8, v7}, Lcom/android/wm/shell/sosc/SoScUtils;->isInPausingTask(Landroid/content/ComponentName;)Z

    .line 136
    move-result v8

    .line 139
    if-eqz v8, :cond_5

    .line 140
    goto/16 :goto_c

    .line 142
    :cond_5
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 144
    const v9, 0x7f1303a2    # @string/dock_non_resizeble_failed_to_dock_text 'App does not support split screen'

    .line 146
    const/4 v10, 0x0

    .line 149
    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 150
    move-result-object v8

    .line 153
    filled-new-array {v5, v5}, [I

    .line 154
    move-result-object v9

    .line 157
    iget-object v11, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 158
    new-instance v13, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;

    .line 160
    invoke-direct {v13, v9, v6, v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;-><init>([ILandroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 162
    invoke-virtual {v11, v13}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 165
    move-result-object v11

    .line 168
    const/4 v13, 0x0

    .line 169
    invoke-virtual {v11, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v11

    .line 173
    check-cast v11, Ljava/lang/Boolean;

    .line 174
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    move-result v11

    .line 179
    if-nez v11, :cond_6

    .line 180
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 182
    return-void

    .line 185
    :cond_6
    aget v8, v9, v10

    .line 186
    const-string v11, " one of them has running in sosc, start "

    .line 188
    const-string/jumbo v13, "start pairs:"

    .line 190
    const/4 v14, 0x1

    .line 193
    if-eq v8, v5, :cond_10

    .line 194
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 196
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 198
    move-result v1

    .line 201
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 202
    aget v8, v9, v14

    .line 204
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 206
    move-result v2

    .line 209
    if-ne v1, v5, :cond_7

    .line 210
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 212
    iget-object v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    .line 216
    move-result v15

    .line 219
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 220
    move-result-object v15

    .line 223
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    .line 224
    move-result v15

    .line 227
    invoke-virtual {v8, v6, v15}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->findTaskInMainStage(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 228
    move-result-object v8

    .line 231
    if-eqz v8, :cond_7

    .line 232
    move v1, v10

    .line 234
    :cond_7
    if-ne v2, v5, :cond_8

    .line 235
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 237
    iget-object v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    .line 241
    move-result v15

    .line 244
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 245
    move-result-object v15

    .line 248
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    .line 249
    move-result v15

    .line 252
    invoke-virtual {v8, v7, v15}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->findTaskInSideStage(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 253
    move-result-object v8

    .line 256
    if-eqz v8, :cond_8

    .line 257
    move v2, v14

    .line 259
    :cond_8
    if-eq v1, v5, :cond_9

    .line 260
    if-eq v2, v5, :cond_9

    .line 262
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 266
    const-string v2, "mainComponent:"

    .line 268
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    const-string v2, " sideComponent:"

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 294
    :cond_9
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 295
    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 297
    move-result v4

    .line 300
    if-eqz v4, :cond_e

    .line 301
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 303
    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScVisible()Z

    .line 305
    move-result v4

    .line 308
    if-eqz v4, :cond_e

    .line 309
    if-eq v1, v5, :cond_b

    .line 311
    aget v2, v9, v14

    .line 313
    if-nez v1, :cond_a

    .line 315
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 317
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStagePosition()I

    .line 319
    move-result v1

    .line 322
    goto :goto_2

    .line 323
    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 324
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStagePosition()I

    .line 326
    move-result v1

    .line 329
    goto :goto_2

    .line 330
    :cond_b
    if-eq v2, v5, :cond_d

    .line 331
    aget v1, v9, v10

    .line 333
    if-nez v2, :cond_c

    .line 335
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 337
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStagePosition()I

    .line 339
    move-result v2

    .line 342
    goto :goto_1

    .line 343
    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 344
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStagePosition()I

    .line 346
    move-result v2

    .line 349
    :goto_1
    move/from16 v16, v2

    .line 350
    move v2, v1

    .line 352
    move/from16 v1, v16

    .line 353
    goto :goto_2

    .line 355
    :cond_d
    move v2, v5

    .line 356
    move v1, v14

    .line 357
    :goto_2
    if-eq v2, v5, :cond_e

    .line 358
    sget-object v4, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v6, "taskIdsForMiui[0]:"

    .line 364
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    aget v6, v9, v10

    .line 370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    const-string v6, " taskIdsForMiui[1]:"

    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    aget v6, v9, v14

    .line 380
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v5

    .line 394
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {v0, v2, v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskFromHome(IILandroid/os/Bundle;)V

    .line 398
    return-void

    .line 401
    :cond_e
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 402
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 404
    move-result v1

    .line 407
    if-eqz v1, :cond_f

    .line 408
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized(Z)V

    .line 410
    :cond_f
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 415
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    aget v3, v9, v10

    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    const-string v3, ":"

    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    aget v3, v9, v14

    .line 430
    invoke-static {v2, v3, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 432
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 435
    aget v6, v9, v10

    .line 437
    const/4 v7, 0x0

    .line 439
    aget v8, v9, v14

    .line 440
    const/4 v9, 0x0

    .line 442
    const/4 v10, 0x1

    .line 443
    const/high16 v11, 0x3f000000    # 0.5f

    .line 444
    sget-object v13, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 446
    invoke-virtual/range {v5 .. v13}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 448
    goto/16 :goto_c

    .line 451
    :cond_10
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 453
    iget-object v9, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 455
    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    .line 457
    move-result v9

    .line 460
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 461
    move-result-object v9

    .line 464
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 465
    move-result v9

    .line 468
    invoke-virtual {v8, v6, v9}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->findTaskInSoSc(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 469
    move-result-object v8

    .line 472
    iget-object v9, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 473
    iget-object v10, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mContext:Landroid/content/Context;

    .line 475
    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    .line 477
    move-result v10

    .line 480
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 481
    move-result-object v10

    .line 484
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 485
    move-result v10

    .line 488
    invoke-virtual {v9, v7, v10}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->findTaskInSoSc(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 489
    move-result-object v9

    .line 492
    const-string v10, " component2:"

    .line 493
    const-string v14, "component1:"

    .line 495
    if-eqz v8, :cond_12

    .line 497
    if-eqz v9, :cond_12

    .line 499
    iget v5, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 501
    iget v15, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 503
    if-eq v5, v15, :cond_11

    .line 505
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    .line 509
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 533
    :cond_11
    const/4 v5, -0x1

    .line 534
    :cond_12
    filled-new-array {v5, v5}, [I

    .line 535
    move-result-object v4

    .line 538
    new-instance v5, Landroid/content/Intent;

    .line 539
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 541
    const/high16 v15, 0x40000

    .line 544
    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 546
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->findTaskIdsForSoSc([ILandroid/content/ComponentName;Landroid/content/ComponentName;)Z

    .line 549
    if-eqz v8, :cond_13

    .line 552
    iget-object v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 554
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 556
    invoke-virtual {v15, v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 558
    move-result v8

    .line 561
    goto :goto_3

    .line 562
    :cond_13
    const/4 v8, -0x1

    .line 563
    :goto_3
    if-eqz v9, :cond_14

    .line 564
    iget-object v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 566
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 568
    invoke-virtual {v15, v9}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getStageOfTask(I)I

    .line 570
    move-result v9

    .line 573
    goto :goto_4

    .line 574
    :cond_14
    const/4 v9, -0x1

    .line 575
    :goto_4
    iget-object v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 576
    invoke-virtual {v15}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 578
    move-result v15

    .line 581
    const/high16 v2, 0x8000000

    .line 582
    if-eqz v15, :cond_1c

    .line 584
    const/4 v13, -0x1

    .line 586
    if-eq v8, v13, :cond_16

    .line 587
    const/4 v9, 0x1

    .line 589
    aget v4, v4, v9

    .line 590
    if-nez v8, :cond_15

    .line 592
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 594
    invoke-virtual {v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStagePosition()I

    .line 596
    move-result v8

    .line 599
    goto :goto_5

    .line 600
    :cond_15
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 601
    invoke-virtual {v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStagePosition()I

    .line 603
    move-result v8

    .line 606
    :goto_5
    move v9, v8

    .line 607
    move v8, v4

    .line 608
    move-object/from16 v4, p2

    .line 609
    goto :goto_7

    .line 611
    :cond_16
    if-eq v9, v13, :cond_18

    .line 612
    const/4 v8, 0x0

    .line 614
    aget v4, v4, v8

    .line 615
    if-nez v9, :cond_17

    .line 617
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 619
    invoke-virtual {v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStagePosition()I

    .line 621
    move-result v8

    .line 624
    goto :goto_6

    .line 625
    :cond_17
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 626
    invoke-virtual {v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStagePosition()I

    .line 628
    move-result v8

    .line 631
    :goto_6
    move v9, v8

    .line 632
    move v8, v4

    .line 633
    move-object v4, v1

    .line 634
    goto :goto_7

    .line 635
    :cond_18
    const/4 v4, 0x0

    .line 636
    const/4 v8, -0x1

    .line 637
    const/4 v9, 0x1

    .line 638
    :goto_7
    if-eqz v4, :cond_1b

    .line 639
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 641
    new-instance v12, Ljava/lang/StringBuilder;

    .line 643
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 660
    move-result-object v10

    .line 663
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 664
    move-result-object v10

    .line 667
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    move-result-object v10

    .line 674
    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v1, -0x1

    .line 678
    if-eq v8, v1, :cond_19

    .line 679
    invoke-virtual {v0, v8, v1, v9, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 681
    return-void

    .line 684
    :cond_19
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 685
    move-result v1

    .line 688
    if-eqz v1, :cond_1a

    .line 689
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    :cond_1a
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 694
    invoke-virtual {v0, v4, v5, v9, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentInSoSc(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 696
    return-void

    .line 699
    :cond_1b
    move-object/from16 v8, p2

    .line 700
    move-object v4, v1

    .line 702
    goto/16 :goto_b

    .line 703
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 705
    move-result-object v2

    .line 708
    const/4 v8, 0x0

    .line 709
    aget v9, v4, v8

    .line 710
    const/4 v10, -0x1

    .line 712
    if-eq v9, v10, :cond_1e

    .line 713
    const/4 v11, 0x1

    .line 715
    aget v14, v4, v11

    .line 716
    if-eq v14, v10, :cond_1e

    .line 718
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    .line 722
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    aget v3, v4, v8

    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    const-string v3, " and "

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    aget v3, v4, v11

    .line 737
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    const-string v3, "in bg."

    .line 742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    move-result-object v2

    .line 750
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 754
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 756
    move-result v1

    .line 759
    if-eqz v1, :cond_1d

    .line 760
    const/4 v1, 0x0

    .line 762
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized(Z)V

    .line 763
    goto :goto_8

    .line 766
    :cond_1d
    const/4 v1, 0x0

    .line 767
    :goto_8
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 768
    aget v6, v4, v1

    .line 770
    const/4 v7, 0x0

    .line 772
    const/4 v0, 0x1

    .line 773
    aget v8, v4, v0

    .line 774
    const/4 v9, 0x0

    .line 776
    const/4 v10, 0x0

    .line 777
    const/high16 v11, 0x3f000000    # 0.5f

    .line 778
    sget-object v13, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 780
    invoke-virtual/range {v5 .. v13}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 782
    return-void

    .line 785
    :cond_1e
    const-string v8, " and a new to sosc."

    .line 786
    const-string/jumbo v10, "start task:"

    .line 788
    const-string v11, " to sosc"

    .line 791
    const-string v13, " and task "

    .line 793
    const/4 v14, -0x1

    .line 795
    if-eq v9, v14, :cond_23

    .line 796
    const/4 v15, 0x1

    .line 798
    aget v15, v4, v15

    .line 799
    if-ne v15, v14, :cond_23

    .line 801
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 803
    move-result v9

    .line 806
    if-eqz v9, :cond_1f

    .line 807
    const/high16 v9, 0x8000000

    .line 809
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 811
    :cond_1f
    sget-object v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 814
    new-instance v14, Ljava/lang/StringBuilder;

    .line 816
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    const/4 v10, 0x0

    .line 821
    aget v15, v4, v10

    .line 822
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    move-result-object v8

    .line 833
    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 837
    invoke-virtual {v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 839
    move-result v8

    .line 842
    if-eqz v8, :cond_20

    .line 843
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized(Z)V

    .line 845
    :cond_20
    if-eqz v2, :cond_21

    .line 848
    iget-object v8, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 850
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 852
    move-result-object v8

    .line 855
    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 856
    move-result v7

    .line 859
    if-eqz v7, :cond_21

    .line 860
    aget v4, v4, v10

    .line 862
    invoke-virtual {v0, v4, v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToSideStage(II)Z

    .line 864
    move-result v4

    .line 867
    if-nez v4, :cond_22

    .line 868
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 870
    invoke-virtual {v0, v1, v5, v10, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    .line 875
    const-string v1, "StartIntent+-:"

    .line 877
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    move-result-object v0

    .line 899
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    goto :goto_9

    .line 903
    :cond_21
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 904
    const/4 v3, 0x0

    .line 906
    const/4 v1, 0x0

    .line 907
    aget v4, v4, v1

    .line 908
    const/4 v6, 0x0

    .line 910
    const/4 v7, 0x1

    .line 911
    const/high16 v8, 0x3f000000    # 0.5f

    .line 912
    sget-object v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 914
    move-object/from16 v1, p2

    .line 916
    move-object v2, v5

    .line 918
    move-object v5, v6

    .line 919
    move v6, v7

    .line 920
    move v7, v8

    .line 921
    move-object v8, v12

    .line 922
    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 923
    :cond_22
    :goto_9
    return-void

    .line 926
    :cond_23
    if-ne v9, v14, :cond_28

    .line 927
    const/4 v15, 0x1

    .line 929
    aget v1, v4, v15

    .line 930
    if-eq v1, v14, :cond_28

    .line 932
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 934
    move-result v1

    .line 937
    if-eqz v1, :cond_24

    .line 938
    const/high16 v1, 0x8000000

    .line 940
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 942
    :cond_24
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 945
    new-instance v9, Ljava/lang/StringBuilder;

    .line 947
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    aget v10, v4, v15

    .line 952
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 960
    move-result-object v8

    .line 963
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 967
    invoke-virtual {v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInMinimizedMode()Z

    .line 969
    move-result v8

    .line 972
    if-eqz v8, :cond_25

    .line 973
    const/4 v8, 0x0

    .line 975
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized(Z)V

    .line 976
    :cond_25
    if-eqz v2, :cond_26

    .line 979
    iget-object v8, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 981
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 983
    move-result-object v8

    .line 986
    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 987
    move-result v6

    .line 990
    if-eqz v6, :cond_26

    .line 991
    const/4 v6, 0x1

    .line 993
    aget v4, v4, v6

    .line 994
    invoke-virtual {v0, v4, v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToSideStage(II)Z

    .line 996
    move-result v4

    .line 999
    if-nez v4, :cond_27

    .line 1000
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 1002
    move-object/from16 v8, p2

    .line 1004
    invoke-virtual {v0, v8, v5, v6, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1009
    const-string v3, "StartIntent-+:"

    .line 1011
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1022
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    move-result-object v0

    .line 1033
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    goto :goto_a

    .line 1037
    :cond_26
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 1038
    const/4 v3, 0x0

    .line 1040
    const/4 v1, 0x1

    .line 1041
    aget v4, v4, v1

    .line 1042
    const/4 v6, 0x0

    .line 1044
    const/4 v7, 0x0

    .line 1045
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1046
    sget-object v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 1048
    move-object/from16 v1, p1

    .line 1050
    move-object v2, v5

    .line 1052
    move-object v5, v6

    .line 1053
    move v6, v7

    .line 1054
    move v7, v8

    .line 1055
    move-object v8, v12

    .line 1056
    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 1057
    :cond_27
    :goto_a
    return-void

    .line 1060
    :cond_28
    move-object/from16 v8, p2

    .line 1061
    if-ne v9, v14, :cond_2a

    .line 1063
    const/4 v1, 0x1

    .line 1065
    aget v4, v4, v1

    .line 1066
    if-ne v4, v14, :cond_2a

    .line 1068
    if-eqz v2, :cond_2a

    .line 1070
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1072
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1074
    move-result-object v4

    .line 1077
    invoke-virtual {v6, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1078
    move-result v4

    .line 1081
    const-string v9, "StartIntent--:"

    .line 1082
    if-eqz v4, :cond_29

    .line 1084
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 1086
    invoke-virtual {v0, v8, v5, v1, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1088
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1093
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1112
    move-result-object v1

    .line 1115
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1119
    :cond_29
    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1120
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1122
    move-result-object v1

    .line 1125
    invoke-virtual {v7, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1126
    move-result v1

    .line 1129
    if-eqz v1, :cond_2a

    .line 1130
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 1132
    const/4 v1, 0x0

    .line 1134
    move-object/from16 v4, p1

    .line 1135
    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1137
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1142
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1161
    move-result-object v1

    .line 1164
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .line 1168
    :cond_2a
    move-object/from16 v4, p1

    .line 1169
    :goto_b
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 1171
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 1173
    move-result v1

    .line 1176
    invoke-virtual {v0, v4, v8, v1, v12}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startSplitWithIntentsForSoSc(Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/window/RemoteTransition;)V

    .line 1177
    :cond_2b
    :goto_c
    return-void

    .line 1180
    :cond_2c
    :goto_d
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 1181
    const-string/jumbo v1, "startSplitWithIntentsForMiui get a error, intent\'s component is null"

    .line 1183
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-void
    .line 1189
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v4, p2

    .line 4
    move-object/from16 v2, p3

    .line 5
    const/4 v3, -0x1

    .line 7
    if-ne v4, v3, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 11
    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 15
    move-result v5

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eqz v5, :cond_7

    .line 20
    sget-boolean v5, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 22
    if-eqz v5, :cond_4

    .line 24
    iget-object v7, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 26
    invoke-virtual {v7, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    move-result-object v7

    .line 31
    if-eqz v7, :cond_4

    .line 32
    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 34
    if-eqz v8, :cond_4

    .line 36
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 38
    move-result v8

    .line 41
    const/4 v9, 0x5

    .line 42
    if-ne v8, v9, :cond_4

    .line 43
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 45
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 47
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 53
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 55
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 61
    invoke-virtual {v0, v7, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->startFreeformFillSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 67
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScFullMode()Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 75
    invoke-virtual {v0, v7, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->startFreeformReplaceSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 81
    invoke-virtual {v0, v7, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->switchFreeformToSingleOpen(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 83
    :cond_3
    :goto_0
    return-void

    .line 86
    :cond_4
    if-eqz v5, :cond_5

    .line 87
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 89
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScUtils;->needResingToEnterSoSc()Z

    .line 93
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 99
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 101
    move-result v5

    .line 104
    if-nez v5, :cond_5

    .line 105
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 107
    invoke-virtual {v2, p1, p2, v6}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTaskInSoScByResizeEnter(III)V

    .line 109
    goto :goto_1

    .line 112
    :cond_5
    sget-object v5, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v7, "startTaskInSoSc task:"

    .line 117
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v7, " position:"

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 137
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    .line 141
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 144
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSoScState()I

    .line 146
    move-result v2

    .line 149
    if-ne v2, v3, :cond_6

    .line 150
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 152
    const-string v2, "action_enter_single"

    .line 154
    sget-object v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 156
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/sosc/SoScUtils;->getTaskFromRecentTasks(I)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 158
    move-result-object v1

    .line 161
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 165
    const/4 v5, 0x0

    .line 166
    const/4 v6, 0x7

    .line 167
    move-object v1, v2

    .line 168
    move-object v2, v3

    .line 169
    move-object v3, v5

    .line 170
    move v4, p2

    .line 171
    move v5, v6

    .line 172
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 173
    goto :goto_2

    .line 176
    :cond_6
    sget-object v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 177
    const-string v5, "action_enter_both"

    .line 179
    sget-object v6, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 181
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 183
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getTopTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    move-result-object v0

    .line 188
    invoke-virtual {v6, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 192
    invoke-virtual {v6, p1}, Lcom/android/wm/shell/sosc/SoScUtils;->getTaskFromRecentTasks(I)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 193
    move-result-object v0

    .line 196
    invoke-virtual {v6, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 197
    move-result-object v6

    .line 200
    const/4 v7, 0x7

    .line 201
    move-object v0, v3

    .line 202
    move-object v1, v5

    .line 203
    move-object v3, v6

    .line 204
    move v4, p2

    .line 205
    move v5, v7

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 207
    :goto_2
    return-void

    .line 210
    :cond_7
    const/4 v5, 0x1

    .line 211
    new-array v5, v5, [I

    .line 212
    new-instance v8, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;

    .line 214
    invoke-direct {v8, p0, v5, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;[II)V

    .line 216
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 219
    const/4 v7, 0x0

    .line 221
    invoke-virtual {v0, v3, p2, v2, v7}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 222
    move-result-object v0

    .line 225
    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    .line 226
    const-wide/16 v9, 0x0

    .line 228
    const-wide/16 v11, 0x0

    .line 230
    move-object v7, v2

    .line 232
    invoke-direct/range {v7 .. v12}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 233
    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 236
    move-result-object v0

    .line 239
    invoke-static {v2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    .line 240
    move-result-object v2

    .line 243
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 244
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 247
    move-result-object v2

    .line 250
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 251
    move-result-object v0

    .line 254
    invoke-interface {v2, p1, v0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 255
    move-result v0

    .line 258
    aput v0, v5, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_3

    .line 261
    :catch_0
    move-exception v0

    .line 262
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 263
    const-string v2, "Failed to launch task"

    .line 265
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :goto_3
    return-void
    .line 270
.end method

.method public startTaskInSoSc(II)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    const-string p1, "SoSc is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v1, :cond_4

    .line 6
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskInSoSc(IIILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startTaskInSoSc(IIILandroid/os/Bundle;)V
    .locals 2

    .line 9
    invoke-static {p4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateSingleQuickSwitchState()V

    .line 14
    invoke-direct {p0, p1, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTaskFromHome(IILandroid/os/Bundle;)V

    goto :goto_2

    :cond_1
    const/4 p4, 0x1

    if-ne p3, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    if-ne p2, p1, :cond_3

    return-void

    .line 15
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTaskInSoSc(IIILandroid/window/RemoteTransition;)Z

    :goto_2
    return-void
.end method

.method public startTasksForSystem(II)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 12
    const-string p1, "SoSc is disabled"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    if-eqz v0, :cond_6

    .line 22
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 24
    const-string v2, "action_enter_both"

    .line 26
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 28
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 30
    invoke-virtual {v3, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 40
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object v4

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    const/16 v6, 0xb

    .line 51
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 53
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 62
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x1

    .line 65
    if-ne v0, p1, :cond_1

    .line 66
    move v3, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v3, v1

    .line 70
    :goto_0
    if-ne v0, p2, :cond_2

    .line 71
    move v1, v2

    .line 73
    :cond_2
    if-nez v3, :cond_3

    .line 74
    if-eqz v1, :cond_5

    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 78
    move p1, p2

    .line 80
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->moveToSideStage(II)Z

    .line 81
    return-void

    .line 84
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTasksForSystem(II)V

    .line 87
    :cond_6
    return-void
    .line 90
.end method

.method public startingSwapSplitTasks()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startingSwapSplitTasks()V

    .line 4
    return-void
    .line 7
.end method

.method public supportMultiInstancesSplit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isFold()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isPad()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    const-string v0, "com.android.browser"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    return v1

    .line 31
    :cond_0
    if-eqz p1, :cond_2

    .line 32
    move v0, v1

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mAppsSupportMultiInstances:[Ljava/lang/String;

    .line 35
    array-length v3, v2

    .line 37
    if-ge v0, v3, :cond_2

    .line 38
    aget-object v2, v2, v0

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    return v1
    .line 53
.end method

.method public bridge synthetic swapSplitTasks()V
    .locals 0

    .line 1
    return-void
.end method

.method public swapSplitTasks(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->switchSplitPosition(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public swapSplitTasks(Landroid/window/WindowContainerTransaction;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->deferUpdateSoScState()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->switchSplitPosition(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public trackExitPairs(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getLeftOrTopStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRightOrBottomStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    move-result-object p0

    .line 13
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 14
    const/4 v2, -0x1

    .line 16
    if-ne p1, v2, :cond_0

    .line 17
    const-string v2, "action_exit_apppair"

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const-string v2, "action_exit_both"

    .line 22
    :goto_0
    sget-object v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 24
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v3, p0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {v1, v2, v0, p0, p1}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
    .line 37
.end method

.method public trackSingleModeToFullMode(Ljava/lang/String;II)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getLeftOrTopStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getRightOrBottomStateTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mSoScUtils:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sosc/SoScUtils;->getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 22
    sget-object v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mMiuiSoScTrackStub:Lcom/miui/analytics/MiuiSoScTrackStub;

    .line 23
    const-string v2, "action_enter_both"

    .line 25
    move-object v4, p1

    .line 27
    move v5, p2

    .line 28
    move v6, p3

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/miui/analytics/MiuiSoScTrackStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 30
    return-void
    .line 33
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->unregisterSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 4
    return-void
    .line 7
.end method

.method public updateDividerFixedState(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v2, "updateDividerFixedState isFixed:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateDividerFixedState(Z)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public updateSplitScreenSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public updateSplitSnapTarget(IIZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    sget-object p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->TAG:Ljava/lang/String;

    .line 12
    const-string p1, "SoSc is disabled"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 20
    if-nez v0, :cond_1

    .line 22
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isFlingOrExiting()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 32
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isSoScActive()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    if-nez p3, :cond_3

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->snapSplitToNextRatio(I)V

    .line 42
    goto :goto_1

    .line 45
    :cond_3
    const/4 p2, 0x1

    .line 46
    if-ne p1, p2, :cond_4

    .line 47
    goto :goto_0

    .line 49
    :cond_4
    const/4 p2, 0x0

    .line 50
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 51
    const/4 p1, 0x4

    .line 53
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->flingDividerToDismiss(ZI)V

    .line 54
    goto :goto_1

    .line 57
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->splitPrimaryTask(II)Z

    .line 58
    :goto_1
    return-void
    .line 61
.end method
