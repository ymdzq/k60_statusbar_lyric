.class public Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayDropTargets:Landroid/util/SparseArray;

.field private final mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mListeners:Ljava/util/ArrayList;

.field private final mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mSplitScreen:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field private final mStartedGoingToSleepListener:Ljava/lang/Runnable;

.field private final mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitionHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$03hD1ztr7eY6_vUTlSKA0BdlPyw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->lambda$new$1()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$94sY1Ldvt_3vJMNxWTl2GEOSP5A(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->lambda$onDrag$3(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$TLA3bEXEuOxHoBMYXwTdB8ewuU8(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->lambda$new$2()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$dGWZBxI_lPQjE2GwFXSCc4hdtxw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->lambda$onInit$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;

    .line 2
    const-string v0, "MiuiDragAndDropController"

    .line 4
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->TAG:Ljava/lang/String;

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 18
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;

    .line 20
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;I)V

    .line 23
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mStartedGoingToSleepListener:Ljava/lang/Runnable;

    .line 26
    move-object v2, p1

    .line 28
    iput-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mContext:Landroid/content/Context;

    .line 29
    move-object v3, p3

    .line 31
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 32
    move-object v3, p4

    .line 34
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 35
    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 37
    move-object v4, p5

    .line 39
    invoke-direct {v3, p5}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    .line 40
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 43
    move-object/from16 v3, p6

    .line 45
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    move-object/from16 v5, p7

    .line 49
    iput-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 51
    move-object/from16 v7, p8

    .line 53
    iput-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 55
    move-object/from16 v3, p9

    .line 57
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 59
    move-object/from16 v3, p10

    .line 61
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 63
    move-object/from16 v8, p11

    .line 65
    iput-object v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 67
    move-object/from16 v6, p12

    .line 69
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mSplitScreen:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

    .line 73
    move-object v3, v9

    .line 75
    move-object v4, p1

    .line 76
    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 77
    iput-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mTransitionHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

    .line 80
    sget-boolean v2, Landroid/os/Build;->IS_MIUI:Z

    .line 82
    if-eqz v2, :cond_0

    .line 84
    move-object/from16 v2, p13

    .line 86
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;->addStartedGoingToSleepListener(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;

    .line 91
    const/4 v2, 0x2

    .line 93
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;I)V

    .line 94
    move-object v2, p2

    .line 97
    invoke-virtual {p2, p0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 98
    return-void
    .line 101
.end method

.method private getIconDrawable(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v1, "miui.intent.extra.ICON"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    if-eqz p2, :cond_2

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object v1

    .line 31
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    sget-object v2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->TAG:Ljava/lang/String;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    const-string v4, "Get icon exception! activityInfo="

    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string p2, ", e="

    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 63
    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_1
    const-string p2, "android.intent.extra.USER"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Landroid/os/UserHandle;

    .line 73
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 77
    move-result p1

    .line 80
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->getUserXspace()I

    .line 81
    move-result p2

    .line 84
    if-ne p1, p2, :cond_2

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v0

    .line 92
    :cond_2
    return-object v0
    .line 93
.end method

.method private getMimeTypes(Landroid/content/ClipDescription;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string p0, ""

    .line 2
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    if-lez v0, :cond_0

    .line 11
    const-string v1, ", "

    .line 13
    invoke-static {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    :cond_0
    invoke-static {p0}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return-object p0
    .line 37
.end method

.method private synthetic lambda$new$1()V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "mStartedGoingToSleepListener: sending cancel event"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;

    .line 32
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 34
    if-eqz v2, :cond_0

    .line 36
    iget-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 38
    if-eqz v2, :cond_0

    .line 40
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 42
    if-eqz v2, :cond_0

    .line 44
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->dragAndDropPolicy:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 46
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;->hasDropped()Z

    .line 50
    move-result v2

    .line 53
    if-nez v2, :cond_0

    .line 54
    const/4 v3, 0x4

    .line 56
    const/high16 v4, -0x40800000    # -1.0f

    .line 57
    const/high16 v5, -0x40800000    # -1.0f

    .line 59
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    invoke-static/range {v3 .. v13}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    .line 69
    move-result-object v2

    .line 72
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    .line 75
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 78
    :cond_0
    return-void
    .line 80
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;

    .line 4
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;I)V

    .line 7
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 12
    return-void
    .line 15
.end method

.method private synthetic lambda$onDrag$3(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;I)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method private synthetic lambda$onInit$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 4
    return-void
    .line 7
.end method

.method private notifyListeners()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$DragAndDropListener;

    .line 17
    invoke-interface {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$DragAndDropListener;->onDragStarted()V

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    return-void
    .line 25
.end method

.method private setDropTargetWindowVisibility(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->displayId:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "Set drop target window visibility: displayId=%d visibility=%d"

    .line 18
    invoke-static {p0, v1, v0}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 23
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    return-void
    .line 28
.end method


# virtual methods
.method public addListener(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$DragAndDropListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 5
    move-result v0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    return-void
    .line 14
.end method

.method public bridge synthetic onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onDisplayAdded(I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "Display added: %d"

    .line 12
    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-eqz p1, :cond_0

    .line 17
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 25
    const/16 v1, 0x7e0

    .line 26
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 32
    const-class v1, Landroid/view/WindowManager;

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroid/view/WindowManager;

    .line 39
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 41
    const/4 v4, -0x1

    .line 43
    const/4 v5, -0x1

    .line 44
    const/16 v6, 0x7e0

    .line 45
    const v7, 0x1000008

    .line 47
    const/4 v8, -0x3

    .line 50
    move-object v3, v9

    .line 51
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 52
    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 55
    const v4, -0x7fffffb0

    .line 57
    or-int/2addr v3, v4

    .line 60
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 61
    const/4 v3, 0x3

    .line 63
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 64
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 67
    const-string v3, "MiuiShellDropTarget"

    .line 70
    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 75
    move-result-object v3

    .line 78
    const v4, 0x7f0d00d1    # @layout/global_drop_target 'res/layout/global_drop_target.xml'

    .line 79
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/FrameLayout;

    .line 86
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 88
    const/4 v3, 0x4

    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    :try_start_0
    invoke-interface {v1, v2, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 98
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mSplitScreen:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 100
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 102
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mTransitionHandler:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

    .line 104
    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 106
    iget-object v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 108
    iget-object v10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 110
    move-object v3, v11

    .line 112
    move-object v4, v0

    .line 113
    invoke-direct/range {v3 .. v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/common/DisplayController;)V

    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 117
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;

    .line 119
    move-object v3, v9

    .line 121
    move v4, p1

    .line 122
    move-object v5, v0

    .line 123
    move-object v6, v1

    .line 124
    move-object v7, v2

    .line 125
    move-object v8, v11

    .line 126
    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;)V

    .line 127
    invoke-virtual {p0, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 133
    :catch_0
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->TAG:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "Unable to add view for display id: "

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 149
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void
    .line 153
.end method

.method public bridge synthetic onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "Display removed: %d"

    .line 12
    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;

    .line 23
    if-nez v0, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    .line 28
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 30
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    return-void
    .line 40
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 4
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 12
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 20
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetX()F

    .line 28
    move-result v4

    .line 31
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object v4

    .line 35
    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetY()F

    .line 36
    move-result v5

    .line 39
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    move-result-object v5

    .line 43
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    const-string v2, "Drag event: action=%s x=%f y=%f xOffset=%f yOffset=%f"

    .line 48
    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 57
    move-result p1

    .line 60
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;

    .line 67
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 69
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 74
    return v2

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 77
    move-result v3

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x1

    .line 82
    if-ne v3, v5, :cond_6

    .line 83
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 85
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 89
    move-result v3

    .line 92
    if-lez v3, :cond_2

    .line 93
    const-string v3, "application/vnd.android.activity"

    .line 95
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 97
    move-result v3

    .line 100
    if-nez v3, :cond_1

    .line 101
    const-string v3, "application/vnd.android.shortcut"

    .line 103
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 105
    move-result v3

    .line 108
    if-nez v3, :cond_1

    .line 109
    const-string v3, "application/vnd.android.task"

    .line 111
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 113
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    :cond_1
    move v3, v5

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    move v3, v2

    .line 121
    :goto_0
    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 124
    move-result-object v4

    .line 127
    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 128
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 132
    move-result-object v4

    .line 135
    :cond_3
    if-eqz v4, :cond_4

    .line 136
    const-string v6, "miui.intent.extra.IS_ICON_DRAG"

    .line 138
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 140
    move-result v6

    .line 143
    if-eqz v6, :cond_4

    .line 144
    move v6, v5

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move v6, v2

    .line 148
    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 149
    move-result-object v7

    .line 152
    invoke-virtual {v7, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 153
    move-result-object v7

    .line 156
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 157
    move-result-object v7

    .line 160
    invoke-direct {p0, v4, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->getIconDrawable(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 161
    move-result-object v4

    .line 164
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 165
    move-result-object v7

    .line 168
    invoke-virtual {v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 169
    move-result v7

    .line 172
    if-eqz v7, :cond_5

    .line 173
    if-eqz v3, :cond_5

    .line 175
    if-eqz v6, :cond_5

    .line 177
    if-eqz v4, :cond_5

    .line 179
    move v3, v5

    .line 181
    goto :goto_2

    .line 182
    :cond_5
    move v3, v2

    .line 183
    :goto_2
    iput-boolean v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 184
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    move-result-object v3

    .line 189
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 190
    move-result-object v7

    .line 193
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    .line 194
    move-result v7

    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v7

    .line 201
    invoke-direct {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->getMimeTypes(Landroid/content/ClipDescription;)Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 205
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 206
    move-result-object v6

    .line 209
    filled-new-array {v3, v7, v1, v6, v4}, [Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 213
    const-string v3, "Clip description: handlingDrag=%b itemCount=%d mimeTypes=%s isMiuiIconDrag=%b appIcon=%s"

    .line 214
    invoke-static {v0, v3, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_6
    iget-boolean v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 219
    if-nez v0, :cond_7

    .line 221
    return v2

    .line 223
    :cond_7
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 224
    move-result v0

    .line 227
    if-eq v0, v5, :cond_d

    .line 228
    const/4 v1, 0x2

    .line 230
    if-eq v0, v1, :cond_c

    .line 231
    const/4 v1, 0x3

    .line 233
    if-eq v0, v1, :cond_b

    .line 234
    const/4 p2, 0x4

    .line 236
    if-eq v0, p2, :cond_8

    .line 237
    goto/16 :goto_4

    .line 239
    :cond_8
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->dragAndDropPolicy:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 241
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;->hasDropped()Z

    .line 243
    move-result v0

    .line 246
    if-eqz v0, :cond_9

    .line 247
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    sget-object p2, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_DROPPED:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 254
    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 256
    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 258
    goto :goto_3

    .line 261
    :cond_9
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->TAG:Ljava/lang/String;

    .line 262
    const-string v1, "Unexpected drag end without drop"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 269
    sub-int/2addr v0, v5

    .line 271
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 272
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->dragAndDropPolicy:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 274
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;->endWithoutDrop()V

    .line 276
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 279
    if-nez v0, :cond_a

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;I)V

    .line 283
    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_END:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 291
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 295
    goto :goto_4

    .line 298
    :cond_b
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 299
    sub-int/2addr v0, v5

    .line 301
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 302
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->dragAndDropPolicy:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 304
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda1;

    .line 306
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;)V

    .line 308
    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;->drop(Landroid/view/DragEvent;Ljava/lang/Runnable;)Z

    .line 311
    move-result p0

    .line 314
    return p0

    .line 315
    :cond_c
    iget-object p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->dragAndDropPolicy:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 316
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;->update(Landroid/view/DragEvent;)V

    .line 318
    goto :goto_4

    .line 321
    :cond_d
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 322
    if-eqz v0, :cond_e

    .line 324
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->TAG:Ljava/lang/String;

    .line 326
    const-string p1, "Unexpected drag start during an active drag"

    .line 328
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v2

    .line 333
    :cond_e
    const-string v0, "FF_UI/MWS_ACTION_MOVE"

    .line 334
    invoke-static {v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 339
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logStart(Landroid/view/DragEvent;)Lcom/android/internal/logging/InstanceId;

    .line 341
    iget v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 344
    add-int/2addr v0, v5

    .line 346
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->activeDragCount:I

    .line 347
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;->dragAndDropPolicy:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;

    .line 349
    invoke-virtual {v0, p2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropPolicy;->start(Landroid/view/DragEvent;Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$PerDisplay;I)V

    .line 354
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->notifyListeners()V

    .line 357
    :goto_4
    return v5
    .line 360
.end method

.method public bridge synthetic onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;I)V

    .line 7
    const-wide/16 v2, 0x0

    .line 10
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    .line 19
    return-void
    .line 22
.end method

.method public bridge synthetic onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onLocaleOrLayoutDirectionChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onSmallestScreenWidthChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onThemeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public removeListener(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController$DragAndDropListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method
