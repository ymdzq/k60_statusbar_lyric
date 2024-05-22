.class public final Lcom/android/wm/shell/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/common/RemoteCallable;


# static fields
.field public static final BUBBLE_BAR_ENABLED:Z


# instance fields
.field public mAddedToWindowManager:Z

.field public final mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$4;

.field public final mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field public final mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

.field public final mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final mBubbleStackViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public final mContext:Landroid/content/Context;

.field public mCurrentProfiles:Landroid/util/SparseArray;

.field public mCurrentUserId:I

.field public final mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

.field public mDensityDpi:I

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragAndDropController:Ljava/util/Optional;

.field public mExpandListener:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public mFontScale:F

.field public final mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public mInflateSynchronously:Z

.field public mIsStatusBarShade:Z

.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

.field public mLayoutDirection:I

.field public final mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field public final mOneHandedOptional:Ljava/util/Optional;

.field public mOverflowDataLoadNeeded:Z

.field public mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field public final mSavedUserBubbleData:Landroid/util/SparseArray;

.field public final mScreenBounds:Landroid/graphics/Rect;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

.field public mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWindowInsets:Landroid/view/WindowInsets;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

.field public mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.wm.debug.bubble_bar"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/bubbles/BubbleController;->BUBBLE_BAR_ENABLED:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)V
    .locals 9

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    .line 6
    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    .line 7
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 8
    iput v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    const/4 v4, -0x1

    .line 9
    iput v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    .line 10
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    .line 11
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$4;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/bubbles/BubbleController$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$4;

    .line 12
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$7;

    invoke-direct {v4, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$7;-><init>(ILjava/lang/Object;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStackViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 13
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$7;

    const/4 v4, 0x2

    invoke-direct {v2, v4, p0}, Lcom/android/wm/shell/bubbles/BubbleController$7;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 14
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$7;

    invoke-direct {v2, v3, p0}, Lcom/android/wm/shell/bubbles/BubbleController$7;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

    move-object v2, p1

    .line 15
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    move-object v4, p3

    .line 16
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v4, p4

    .line 17
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object/from16 v4, p12

    .line 18
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez p8, :cond_0

    const-string/jumbo v4, "statusbar"

    .line 19
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p8

    .line 21
    :goto_0
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v4, p9

    .line 22
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v4, p10

    .line 23
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    move-object/from16 v4, p11

    .line 24
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mUserManager:Landroid/os/UserManager;

    move-object v4, p6

    .line 25
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    move-object/from16 v4, p7

    .line 26
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-object/from16 v4, p13

    .line 27
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object/from16 v4, p20

    .line 28
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v4, p21

    .line 29
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v4, p22

    .line 30
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v4, p14

    .line 31
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    move-object/from16 v4, p15

    .line 32
    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 33
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 34
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    move-object/from16 v1, p16

    .line 35
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-object v1, p5

    .line 36
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 37
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    .line 38
    new-instance v1, Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07016c    # @dimen/bubble_size '60.0dp'

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070133    # @dimen/bubble_badge_size '24.0dp'

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060156    # @color/important_conversation '#f9ab00'

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050181    # @android:dimen/keyguard_avatar_size

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object p3, v1

    move-object p4, p1

    move p5, v4

    move p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    invoke-direct/range {p3 .. p8}, Lcom/android/launcher3/icons/BubbleIconFactory;-><init>(Landroid/content/Context;IIII)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    move-object/from16 v1, p17

    .line 43
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v1, p23

    .line 44
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    move-object/from16 v1, p18

    .line 45
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOneHandedOptional:Ljava/util/Optional;

    move-object/from16 v1, p19

    .line 46
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDragAndDropController:Ljava/util/Optional;

    move-object/from16 v1, p24

    .line 47
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v1, p25

    .line 48
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmService:Landroid/view/IWindowManager;

    .line 49
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    move-object v2, p2

    invoke-virtual {p2, p0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    .line 12
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 18
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    if-nez v0, :cond_2

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "Unable to create bubble -- no intent: "

    .line 40
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    const-string p1, "Bubbles"

    .line 56
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :cond_2
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 63
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 69
    move-result v1

    .line 72
    invoke-static {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 84
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isResizableActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    .line 85
    move-result p0

    .line 88
    return p0
    .line 89
.end method

.method public static getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/UserHandle;

    .line 8
    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 10
    const/4 p0, 0x4

    .line 13
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 14
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public static isResizableActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Unable to send as bubble: "

    .line 2
    const-string v1, "Bubbles"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p1, " null intent"

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 30
    move-result-object p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p2, " couldn\'t find activity info for intent: "

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v2

    .line 59
    :cond_1
    iget p1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 60
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    .line 62
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p2, " activity is not resizable for intent: "

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2

    .line 91
    :cond_2
    const/4 p0, 0x1

    .line 92
    return p0
    .line 93
.end method


# virtual methods
.method public asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public final collapseStack()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final ensureBubbleViewsAndWindowCreated()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 6
    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInBubbleBar:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 14
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 19
    if-nez v0, :cond_2

    .line 21
    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 31
    if-nez v0, :cond_2

    .line 33
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 35
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 37
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 39
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    .line 41
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 43
    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    move-object v3, v0

    .line 47
    move-object v5, p0

    .line 48
    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$1;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 49
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 52
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onOrientationChanged()V

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandListener:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;

    .line 57
    if-eqz v0, :cond_1

    .line 59
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 61
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 66
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 68
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;

    .line 73
    invoke-direct {v4, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUnbubbleConversationCallback(Ljava/util/function/Consumer;)V

    .line 78
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    .line 81
    if-eqz v0, :cond_3

    .line 83
    goto/16 :goto_1

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 93
    if-nez v0, :cond_4

    .line 95
    goto/16 :goto_1

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    .line 99
    move-result v0

    .line 102
    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 105
    if-nez v0, :cond_5

    .line 107
    goto/16 :goto_1

    .line 109
    :cond_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 111
    const/4 v4, -0x1

    .line 113
    const/4 v5, -0x1

    .line 114
    const/16 v6, 0x7f6

    .line 115
    const v7, 0x1000028

    .line 117
    const/4 v8, -0x3

    .line 120
    move-object v3, v0

    .line 121
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 125
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 127
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 130
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 135
    const/16 v3, 0x10

    .line 137
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 139
    new-instance v4, Landroid/os/Binder;

    .line 141
    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 143
    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 146
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 148
    const-string v4, "Bubbles!"

    .line 150
    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 155
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 160
    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 163
    const/4 v4, 0x3

    .line 165
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 166
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 168
    or-int/2addr v3, v4

    .line 170
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    const/4 v0, 0x1

    .line 173
    :try_start_0
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    .line 174
    new-instance v3, Landroid/content/IntentFilter;

    .line 176
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 181
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 186
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$4;

    .line 191
    const/4 v5, 0x2

    .line 193
    invoke-virtual {v1, v4, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 197
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 199
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    .line 201
    const v4, 0x7f0d0057    # @layout/bubble_expanded_view 'res/layout/bubble_expanded_view.xml'

    .line 203
    const/4 v5, 0x0

    .line 206
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 207
    move-result-object v3

    .line 210
    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 211
    iput-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 213
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 215
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 218
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 221
    if-eqz v1, :cond_6

    .line 223
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->getStackView()Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 225
    move-result-object v3

    .line 228
    invoke-virtual {v1, p0, v3, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V

    .line 229
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    .line 232
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    .line 236
    if-eqz v1, :cond_7

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 240
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 242
    invoke-interface {v3, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 247
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;

    .line 249
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 254
    goto :goto_1

    .line 257
    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 258
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 260
    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 265
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;

    .line 267
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    goto :goto_1

    .line 275
    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 277
    :goto_1
    return-void
    .line 280
.end method

.method public final expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 15
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 22
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 29
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 39
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 50
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    const/4 v0, 0x3

    .line 56
    invoke-interface {p0, p1, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 61
    :catch_0
    :cond_3
    :goto_0
    return-void
    .line 63
.end method

.method public final getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    if-nez p1, :cond_0

    .line 7
    return-object v0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 12
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 32
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    .line 34
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    return-object v0
    .line 48
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public getImplCachedState()Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 4
    return-object p0
    .line 6
.end method

.method public getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStackView()Lcom/android/wm/shell/bubbles/BubbleStackView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    return-object p0
    .line 4
.end method

.method public hasBubbles()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 7
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    xor-int/2addr v0, v2

    .line 23
    if-nez v0, :cond_2

    .line 24
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 30
    if-eqz p0, :cond_1

    .line 32
    move p0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move p0, v1

    .line 36
    :goto_0
    if-eqz p0, :cond_3

    .line 37
    :cond_2
    move v1, v2

    .line 39
    :cond_3
    return v1
    .line 40
.end method

.method public inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureBubbleViewsAndWindowCreated()V

    .line 2
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setInflateSynchronously(Z)V

    .line 7
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;

    .line 10
    invoke-direct {v2, p0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V

    .line 12
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 15
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 17
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 19
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 21
    const/4 v8, 0x0

    .line 23
    move-object v1, p1

    .line 24
    move-object v4, p0

    .line 25
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/launcher3/icons/BubbleIconFactory;Z)V

    .line 26
    return-void
    .line 29
.end method

.method public isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    .line 25
    move-result v3

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    if-nez v3, :cond_3

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    move v1, v2

    .line 48
    :cond_3
    :goto_1
    return v1
    .line 49
.end method

.method public final isShowingAsBubbleBar()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleController;->BUBBLE_BAR_ENABLED:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 6
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 8
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

.method public isStackExpanded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 4
    return p0
    .line 6
.end method

.method public final isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    move p0, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p0, v4

    .line 42
    :goto_0
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 43
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    .line 49
    move-result p1

    .line 52
    if-nez p0, :cond_1

    .line 53
    if-eqz p1, :cond_2

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    move-result p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    move v3, v4

    .line 64
    :goto_1
    return v3
    .line 65
.end method

.method public onAllBubblesAnimatedOut()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    .line 16
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;

    .line 18
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 24
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 34
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    :try_start_1
    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 40
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 43
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 45
    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    .line 49
    :cond_1
    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 54
    if-eqz p0, :cond_4

    .line 56
    invoke-interface {v3, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 58
    iget-object p0, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 63
    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    .line 67
    :cond_3
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 74
    :cond_4
    :goto_0
    return-void
    .line 77
.end method

.method public onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 4
    iget v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 9
    if-eqz v0, :cond_a

    .line 11
    if-eqz p1, :cond_a

    .line 13
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 15
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    .line 19
    if-ne v0, v1, :cond_1

    .line 21
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 23
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 35
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    .line 37
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 39
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 48
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 50
    iget v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    .line 52
    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    .line 54
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 56
    if-nez v1, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    .line 60
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mNeedsTrimming:Z

    .line 68
    :goto_0
    new-instance v0, Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 70
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v1

    .line 77
    const v2, 0x7f07016c    # @dimen/bubble_size '60.0dp'

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    move-result v4

    .line 84
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v2

    .line 90
    const v5, 0x7f070133    # @dimen/bubble_badge_size '24.0dp'

    .line 91
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v5

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v2

    .line 101
    const v6, 0x7f060156    # @color/important_conversation '#f9ab00'

    .line 102
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 105
    move-result v6

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v1

    .line 112
    const v2, 0x1050181    # @android:dimen/keyguard_avatar_size

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    move-result v7

    .line 119
    move-object v2, v0

    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/icons/BubbleIconFactory;-><init>(Landroid/content/Context;IIII)V

    .line 121
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 124
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 126
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    .line 128
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 131
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    .line 133
    cmpl-float v1, v0, v1

    .line 135
    if-eqz v1, :cond_6

    .line 137
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    .line 139
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 141
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpManageMenu()V

    .line 143
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 146
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFontSize()V

    .line 148
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 151
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 153
    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object v1

    .line 160
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    move-result v2

    .line 164
    if-eqz v2, :cond_5

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    move-result-object v2

    .line 170
    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 171
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 173
    if-eqz v2, :cond_4

    .line 175
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateFontSize()V

    .line 177
    goto :goto_1

    .line 180
    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 181
    if-eqz v0, :cond_6

    .line 183
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 185
    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateFontSize()V

    .line 189
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 192
    move-result v0

    .line 195
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    .line 196
    if-eq v0, v1, :cond_a

    .line 198
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 200
    move-result p1

    .line 203
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    .line 204
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 206
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 210
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 215
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 218
    if-eqz v0, :cond_7

    .line 220
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 225
    if-eqz v0, :cond_8

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    .line 229
    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 232
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 234
    move-result-object p0

    .line 237
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 238
    move-result v0

    .line 241
    if-eqz v0, :cond_9

    .line 242
    goto :goto_2

    .line 244
    :cond_9
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;

    .line 245
    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda5;-><init>(I)V

    .line 247
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 250
    :cond_a
    :goto_2
    return-void
    .line 253
.end method

.method public onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    .line 9
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    const/4 p2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_0
    if-nez p2, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 20
    move-result-object p3

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 24
    invoke-virtual {v0, p3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    .line 26
    move-result p3

    .line 29
    if-eqz p3, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    const/4 p2, 0x7

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    .line 37
    goto :goto_1

    .line 40
    :cond_2
    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    .line 43
    move-result p2

    .line 46
    if-eqz p2, :cond_3

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    .line 49
    :cond_3
    :goto_1
    return-void
    .line 52
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 4

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 17
    if-ge v0, v1, :cond_3

    .line 18
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 24
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 35
    :goto_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 55
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    move-result v2

    .line 60
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 61
    move-result v3

    .line 64
    if-ne v2, v3, :cond_2

    .line 65
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    .line 67
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    .line 73
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    :cond_1
    const/4 v2, 0x7

    .line 79
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    return-void
    .line 88
.end method

.method public onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 6
    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    array-length v3, v0

    .line 19
    if-ge v2, v3, :cond_9

    .line 20
    aget-object v3, v0, v2

    .line 22
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 27
    check-cast v4, Landroid/util/Pair;

    .line 28
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 32
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v4

    .line 41
    const/4 v6, 0x1

    .line 42
    if-eqz v5, :cond_3

    .line 43
    iget-object v7, v5, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 45
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 47
    move-result-object v7

    .line 50
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 51
    move-result v7

    .line 54
    const/4 v8, -0x1

    .line 55
    if-eq v7, v8, :cond_2

    .line 56
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 58
    if-eqz v8, :cond_1

    .line 60
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v7

    .line 65
    if-eqz v7, :cond_1

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    move v7, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    move v7, v6

    .line 71
    :goto_2
    if-nez v7, :cond_3

    .line 72
    return-void

    .line 74
    :cond_3
    if-eqz v5, :cond_5

    .line 75
    iget-boolean v7, v5, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    .line 77
    if-nez v7, :cond_4

    .line 79
    iget-object v7, v5, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 81
    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    .line 83
    move-result v7

    .line 86
    if-eqz v7, :cond_5

    .line 87
    :cond_4
    move v4, v1

    .line 89
    :cond_5
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 90
    invoke-virtual {p1, v3, v7}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 92
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 95
    invoke-virtual {v7, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    .line 97
    move-result v8

    .line 100
    invoke-virtual {v7, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 101
    if-eqz v8, :cond_6

    .line 104
    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 106
    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 108
    move-result v9

    .line 111
    if-nez v9, :cond_6

    .line 112
    const/4 v4, 0x4

    .line 114
    invoke-virtual {v7, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 115
    goto :goto_3

    .line 118
    :cond_6
    if-eqz v8, :cond_7

    .line 119
    if-nez v4, :cond_7

    .line 121
    const/16 v4, 0xe

    .line 123
    invoke-virtual {v7, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 125
    goto :goto_3

    .line 128
    :cond_7
    if-eqz v5, :cond_8

    .line 129
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 131
    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->isBubble()Z

    .line 133
    move-result v3

    .line 136
    if-eqz v3, :cond_8

    .line 137
    if-nez v8, :cond_8

    .line 139
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    .line 141
    invoke-virtual {p0, v5, v4, v6}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    .line 144
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_9
    return-void
    .line 151
.end method

.method public onStatusBarStateChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    .line 9
    if-nez p1, :cond_1

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 18
    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubbleViews()V

    .line 25
    return-void
    .line 28
.end method

.method public final onThemeChanged()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpManageMenu()V

    .line 9
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpDismissView()V

    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateUserEdu()V

    .line 18
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 21
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 23
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda9;

    .line 34
    invoke-direct {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda9;-><init>()V

    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    .line 42
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 44
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v3

    .line 49
    const v4, 0x1060029    # @android:color/system_neutral1_1000

    .line 50
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    move-result v3

    .line 56
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    .line 63
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 65
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v0

    .line 70
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 71
    move-result v0

    .line 74
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_1
    new-instance v0, Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 81
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v1

    .line 88
    const v2, 0x7f07016c    # @dimen/bubble_size '60.0dp'

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    move-result v5

    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v2

    .line 101
    const v3, 0x7f070133    # @dimen/bubble_badge_size '24.0dp'

    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    move-result v6

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v2

    .line 112
    const v3, 0x7f060156    # @color/important_conversation '#f9ab00'

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 116
    move-result v7

    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v1

    .line 123
    const v2, 0x1050181    # @android:dimen/keyguard_avatar_size

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 127
    move-result v8

    .line 130
    move-object v3, v0

    .line 131
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/icons/BubbleIconFactory;-><init>(Landroid/content/Context;IIII)V

    .line 132
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 135
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 137
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 139
    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v1

    .line 146
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v2

    .line 156
    move-object v3, v2

    .line 157
    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    .line 158
    const/4 v4, 0x0

    .line 160
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 161
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 163
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 165
    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 167
    const/4 v10, 0x0

    .line 169
    move-object v6, p0

    .line 170
    invoke-virtual/range {v3 .. v10}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/launcher3/icons/BubbleIconFactory;Z)V

    .line 171
    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 175
    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v0

    .line 182
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v1

    .line 186
    if-eqz v1, :cond_3

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 192
    move-object v2, v1

    .line 193
    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 194
    const/4 v3, 0x0

    .line 196
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 197
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 199
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 201
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    .line 203
    const/4 v9, 0x0

    .line 205
    move-object v5, p0

    .line 206
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/launcher3/icons/BubbleIconFactory;Z)V

    .line 207
    goto :goto_2

    .line 210
    :cond_3
    return-void
    .line 211
.end method

.method public onUserChanged(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    .line 9
    invoke-direct {v2}, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 14
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 16
    move-result-object v4

    .line 19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v4

    .line 23
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/android/wm/shell/bubbles/Bubble;

    .line 34
    iget-object v6, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 36
    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 38
    move-result v5

    .line 41
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    .line 42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v5

    .line 47
    check-cast v7, Ljava/util/HashMap;

    .line 48
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 57
    const/16 v0, 0x8

    .line 59
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    .line 61
    :goto_1
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 64
    check-cast v2, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    move-result v4

    .line 71
    const/4 v5, 0x0

    .line 72
    if-nez v4, :cond_1

    .line 73
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 79
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    .line 83
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 87
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    .line 91
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 96
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    .line 97
    if-nez v0, :cond_2

    .line 99
    goto :goto_2

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 102
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    .line 104
    check-cast v4, Ljava/util/HashMap;

    .line 106
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 108
    move-result-object v4

    .line 111
    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;

    .line 112
    invoke-direct {v6, p0, v0, v5}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/Object;I)V

    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    new-instance p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;

    .line 120
    invoke-direct {p0, v2, v4, v6, v5}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;Ljava/util/function/Consumer;I)V

    .line 122
    iget-object v0, v2, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 125
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    :goto_2
    iput p1, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    .line 133
    return-void
    .line 135
.end method

.method public final promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 4
    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setInflateSynchronously(Z)V

    .line 11
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v1

    .line 21
    iput-wide v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 24
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 31
    return-void
    .line 34
.end method

.method public removeBubble(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandListener:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public setInflateSynchronously(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-boolean p2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 7
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {v1, p1, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleController;Z)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance p0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;

    .line 17
    const/4 p2, 0x1

    .line 19
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 20
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;Ljava/util/function/Consumer;I)V

    .line 22
    iget-object p1, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 25
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
    .line 30
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    invoke-direct {v1}, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isTextChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    .line 19
    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 22
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    goto :goto_2

    .line 23
    :cond_3
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    .line 24
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 27
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 28
    invoke-virtual {v2, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    .line 29
    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    .line 32
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final updateBubbleViews()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 6
    if-nez v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    .line 11
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_2

    .line 14
    const/4 v1, 0x4

    .line 16
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 22
    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->hasBubbles()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 36
    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 43
    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 55
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 58
    if-eqz v0, :cond_13

    .line 60
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 62
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 64
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    goto :goto_4

    .line 74
    :cond_5
    move v1, v2

    .line 75
    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 76
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 78
    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 82
    move-result v3

    .line 85
    if-ge v1, v3, :cond_a

    .line 86
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 88
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 90
    move-result-object v3

    .line 93
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    .line 98
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    .line 100
    iget-object v5, v3, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 102
    if-nez v5, :cond_6

    .line 104
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v5

    .line 109
    const v6, 0x7f13086d    # @string/notification_bubble_title 'Bubble'

    .line 110
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object v5

    .line 116
    :cond_6
    iget-object v6, v3, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 117
    if-eqz v6, :cond_9

    .line 119
    iget-boolean v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 121
    if-nez v7, :cond_8

    .line 123
    if-lez v1, :cond_7

    .line 125
    goto :goto_2

    .line 127
    :cond_7
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 128
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 130
    move-result v6

    .line 133
    add-int/lit8 v6, v6, -0x1

    .line 134
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 136
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 138
    move-result-object v7

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v6

    .line 145
    filled-new-array {v5, v4, v6}, [Ljava/lang/Object;

    .line 146
    move-result-object v4

    .line 149
    const v5, 0x7f130226    # @string/bubble_content_description_stack '%1$s from %2$s and %3$d more'

    .line 150
    invoke-virtual {v7, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    goto :goto_3

    .line 160
    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 161
    move-result-object v3

    .line 164
    const v7, 0x7f130225    # @string/bubble_content_description_single '%1$s from %2$s'

    .line 165
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    .line 168
    move-result-object v4

    .line 171
    invoke-virtual {v3, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    move-result-object v3

    .line 175
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 179
    goto :goto_1

    .line 181
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 182
    move v0, v2

    .line 184
    :goto_5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 185
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 187
    move-result-object v1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 191
    move-result v1

    .line 194
    const/4 v3, 0x1

    .line 195
    const/4 v4, 0x0

    .line 196
    if-ge v0, v1, :cond_11

    .line 197
    if-lez v0, :cond_b

    .line 199
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 201
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 203
    move-result-object v1

    .line 206
    add-int/lit8 v5, v0, -0x1

    .line 207
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v1

    .line 212
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 213
    goto :goto_6

    .line 215
    :cond_b
    move-object v1, v4

    .line 216
    :goto_6
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 217
    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 219
    move-result-object v5

    .line 222
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v5

    .line 226
    check-cast v5, Lcom/android/wm/shell/bubbles/Bubble;

    .line 227
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 229
    if-nez v5, :cond_c

    .line 231
    goto :goto_8

    .line 233
    :cond_c
    iget-boolean v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 234
    if-eqz v6, :cond_e

    .line 236
    invoke-virtual {v5, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 238
    if-eqz v1, :cond_d

    .line 241
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 243
    :cond_d
    if-eqz v4, :cond_10

    .line 245
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$16;

    .line 247
    invoke-direct {v1, v4, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$16;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;I)V

    .line 249
    invoke-virtual {v5, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 252
    goto :goto_8

    .line 255
    :cond_e
    if-nez v0, :cond_f

    .line 256
    goto :goto_7

    .line 258
    :cond_f
    const/4 v3, 0x2

    .line 259
    :goto_7
    invoke-virtual {v5, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 260
    :cond_10
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 263
    goto :goto_5

    .line 265
    :cond_11
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 266
    if-eqz v0, :cond_13

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 270
    if-eqz v0, :cond_12

    .line 272
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 274
    move-result-object v4

    .line 277
    :cond_12
    if-eqz v4, :cond_13

    .line 278
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 280
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 282
    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 286
    move-result v0

    .line 289
    if-nez v0, :cond_13

    .line 290
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 292
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 294
    move-result-object v0

    .line 297
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 298
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 300
    move-result-object p0

    .line 303
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 304
    move-result p0

    .line 307
    sub-int/2addr p0, v3

    .line 308
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    move-result-object p0

    .line 312
    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 313
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 315
    if-eqz p0, :cond_13

    .line 317
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$16;

    .line 319
    invoke-direct {v0, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$16;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;I)V

    .line 321
    invoke-virtual {v4, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 324
    :cond_13
    return-void
    .line 327
.end method

.method public final updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 6
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 8
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    .line 14
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    if-eqz v1, :cond_0

    .line 22
    move v1, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    .line 27
    if-nez v1, :cond_1

    .line 30
    if-eqz p3, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 34
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    :cond_1
    move v3, v4

    .line 40
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 41
    xor-int/lit8 p2, v1, 0x1

    .line 44
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 46
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 49
    move-result p2

    .line 52
    if-eq v0, p2, :cond_3

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 59
    :cond_3
    return-void
    .line 62
.end method

.method public final updateWindowFlagsForBackpress(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    .line 6
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0x28

    .line 16
    :goto_0
    const/high16 v2, 0x1000000

    .line 18
    or-int/2addr p1, v2

    .line 20
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    .line 23
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method
