.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$GestureDragCallback;
.implements Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;
.implements Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;
.implements Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeDragHandler"


# instance fields
.field private mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

.field private final mContext:Landroid/content/Context;

.field private mDragSN:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

.field protected mDraggableAreas:[Landroid/graphics/Rect;

.field private mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

.field private final mGestureAnimatorStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

.field private mGestureDragStarted:Z

.field private final mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

.field private mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

.field private final mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

.field private final mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

.field private final mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

.field private final mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

.field private mNightMode:Z

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

.field private mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmInfinityModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiInfinityModeController(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiInfinityModeTaskOperations(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmAnimatingTaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    filled-new-array {v0, v1, v2}, [Landroid/graphics/Rect;

    .line 20
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 24
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 28
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 30
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 32
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 34
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 36
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 38
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 40
    invoke-direct {p2, p3, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)V

    .line 42
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 45
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 47
    invoke-direct {p2, p1, p5, p4, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;-><init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionStarter;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 49
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 52
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 54
    invoke-direct {p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)V

    .line 56
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureAnimatorStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    move-result-object p1

    .line 68
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 69
    and-int/lit8 p1, p1, 0x30

    .line 71
    const/16 p3, 0x20

    .line 73
    if-ne p1, p3, :cond_0

    .line 75
    const/4 p1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mNightMode:Z

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->addAnimatorStateCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 82
    invoke-virtual {p0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->addTaskStateCallback(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 85
    return-void
    .line 88
.end method

.method private getRatioCharByLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;->getAspectRatio()F

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 10
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayWidth()I

    .line 12
    move-result v1

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getDisplayHeight()I

    .line 18
    move-result p0

    .line 21
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p0

    .line 25
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    int-to-float p0, p0

    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    mul-float v3, p0, v2

    .line 34
    div-float v3, v1, v3

    .line 36
    mul-float/2addr v1, v2

    .line 38
    div-float/2addr p0, v1

    .line 39
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 40
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    cmpl-float p1, v0, v3

    .line 46
    if-eqz p1, :cond_3

    .line 48
    cmpl-float p0, v0, p0

    .line 50
    if-nez p0, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    const/high16 p0, 0x3f400000    # 0.75f

    .line 55
    cmpl-float p0, v0, p0

    .line 57
    if-nez p0, :cond_1

    .line 59
    const-string p0, "3:4"

    .line 61
    goto :goto_1

    .line 63
    :cond_1
    const p0, 0x3faaaaab

    .line 64
    cmpl-float p0, v0, p0

    .line 67
    if-nez p0, :cond_2

    .line 69
    const-string p0, "4:3"

    .line 71
    goto :goto_1

    .line 73
    :cond_2
    const-string/jumbo p0, "\u624b\u673a\u6bd4\u4f8b"

    .line 74
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    const-string/jumbo p0, "\u6e38\u620f/\u89c6\u9891\u6bd4\u4f8b"

    .line 78
    goto :goto_1

    .line 81
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    :goto_1
    return-object p0
    .line 86
.end method

.method private startDrag(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 3
    iget-object v0, p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;->taskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->setType(I)V

    .line 14
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v2, "startDrag mAnimatingTaskInfo="

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 39
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getCurrentLevel()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setDestinationSizeLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 48
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inFreeFormModeGesture(I)Z

    .line 50
    move-result v0

    .line 53
    const/4 v1, 0x1

    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 58
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 60
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->updateTaskStrokeAndCornerTip(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 64
    iget-object p1, p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;->taskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 67
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->animationStarted(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    .line 69
    move-result p1

    .line 72
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 73
    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 77
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->gestureReady()V

    .line 79
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 84
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 90
    iget-object p1, p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;->taskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 92
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setDragResizing(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V

    .line 94
    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inFullScreenModeGesture(I)Z

    .line 100
    move-result v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 106
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 108
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->startRemoteAnimation()Z

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inMiniModeGesture(I)Z

    .line 116
    move-result p1

    .line 119
    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 124
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->updateTaskStrokeAndCornerTip(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 128
    iget-object p1, p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;->taskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 131
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->animationStarted(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    .line 133
    move-result p1

    .line 136
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 137
    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 141
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->gestureReady()V

    .line 143
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 146
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->useNewVersionStrategy()Z

    .line 148
    move-result p1

    .line 151
    if-eqz p1, :cond_2

    .line 152
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 154
    iget-object p1, p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;->taskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 156
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setDragResizing(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V

    .line 158
    :cond_2
    :goto_0
    return-void
    .line 161
.end method

.method private switchFreeformMode(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 4
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 14
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {p1, v0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->windowModeChange(I)V

    .line 25
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 28
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->freeformTaskInfoValid(I)Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 38
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->freeformStart()V

    .line 40
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 43
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->setIdle(Z)V

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->startFreeformFromFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 53
    :cond_0
    return-void
    .line 56
.end method

.method private switchFullscreenMode(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    move-result-object p1

    .line 19
    invoke-interface {v0, p1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->windowModeChange(I)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method private switchMiniMode(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    move-result-object p1

    .line 19
    invoke-interface {v0, p1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 23
    const/4 p1, 0x2

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->windowModeChange(I)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method private updateTaskStrokeByModeChange(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_3

    .line 8
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mNightMode:Z

    .line 10
    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 21
    :goto_0
    if-eqz p2, :cond_2

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 25
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 27
    goto :goto_1

    .line 29
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 30
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 32
    :goto_1
    if-eqz p2, :cond_4

    .line 34
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 36
    const/high16 v1, 0x40400000    # 3.0f

    .line 38
    invoke-static {p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 40
    move-result p2

    .line 43
    move v1, p2

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 46
    iget-object v0, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 48
    iget v2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 50
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 52
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setTaskDestStroke(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;F[FF)V

    .line 54
    return-void
    .line 57
.end method


# virtual methods
.method public addAnimatorStateCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->addAnimatorStateCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 4
    return-void
    .line 7
.end method

.method public addTaskStateCallback(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->addTaskStateListener(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 4
    return-void
    .line 7
.end method

.method public animationStarted(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->startFluidResizeAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    .line 4
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationWindowMode()I

    .line 10
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->backToFSTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 16
    :cond_0
    return p2
    .line 19
.end method

.method public animatorMergedByBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->findTaskWrapperInfoByTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 8
    const-string v2, "animatorMergedByBoundsChange  start"

    .line 10
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 15
    instance-of v3, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 17
    if-eqz v3, :cond_0

    .line 19
    invoke-interface {v2, p1, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->syncBoundsChange(ILandroid/view/SurfaceControl$Transaction;)V

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "animatorMergedByBoundsChange :"

    .line 26
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-static {v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-eqz v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 43
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mergeByBoundsChange(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V

    .line 45
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->reportResized(Landroid/graphics/Rect;)V

    .line 52
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 55
    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 59
    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->consumeNextPendingResizeOP(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;)V

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    if-eqz p4, :cond_2

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo p1, "wrapper info is null, startT="

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    invoke-static {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 85
    :cond_2
    :goto_0
    return-void
    .line 88
.end method

.method public animatorMergedByModeChange(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 10
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->reportResized(Landroid/graphics/Rect;)V

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 21
    invoke-virtual {v1, v0, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mergeByModeChange(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 26
    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 30
    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->consumeNextPendingResizeOP(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;)V

    .line 32
    return-void
    .line 35
.end method

.method public backToFSTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->backToFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 4
    return-void
    .line 7
.end method

.method public backToFullscreen(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->normalmizeSuspend()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureAnimatorStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->setFinishAnimationType(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->stopFluidResizeAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->showInterruptGestureToast()V

    .line 17
    return-void
    .line 20
.end method

.method public freeformTaskInfoValid(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->findMiuiFreeformTaskByTaskId(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    move-result-object p0

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

.method public gestureStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 2
    return p0
    .line 4
.end method

.method public getAnimatingTaskInfo()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public getAnimatorStateListener()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureAnimatorStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDragSN()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDragSN:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 2
    return-object p0
    .line 4
.end method

.method public getFreeformRangeArea()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 2
    const/4 v0, 0x2

    .line 4
    aget-object p0, p0, v0

    .line 5
    return-object p0
    .line 7
.end method

.method public initFreeformTrackDate(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getRatioCharByLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Point;

    .line 6
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFreeformMode()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v2

    .line 20
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 21
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 29
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isMiniMode()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object v2

    .line 43
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 44
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 46
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 48
    move-result-object v2

    .line 51
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 52
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isFullscreenMode()Z

    .line 57
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    const/4 v2, 0x0

    .line 63
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 64
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 66
    :cond_2
    :goto_0
    new-instance v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 68
    invoke-direct {v2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;-><init>()V

    .line 70
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 73
    iput-object v3, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getPackageName()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    iput-object p1, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 81
    iput-object v1, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->startPosition:Landroid/graphics/Point;

    .line 83
    iput-object v0, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowRatio:Ljava/lang/String;

    .line 85
    iput-object v0, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowFromRatio:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 89
    return-void
    .line 91
.end method

.method public onAppTransition(Landroid/window/TransitionInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->interceptAppTransition(Landroid/window/TransitionInfo;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public onAutoResizeNextOp(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 4
    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->startAutoResizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 6
    return-void
    .line 9
.end method

.method public onBoundsChange(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 2
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 6
    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->performResizeOp(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;)V

    .line 8
    return-void
    .line 11
.end method

.method public onGestureDragEnd(FF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 3
    instance-of v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 9
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 11
    move-result v2

    .line 14
    invoke-interface {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformResizeEnd(I)V

    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 18
    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 22
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->onGestureDragEnd(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setDragResizing(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V

    .line 33
    :cond_2
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 38
    if-eqz p2, :cond_3

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 42
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setDragResizing(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Z)V

    .line 44
    :cond_3
    throw p1
    .line 47
.end method

.method public onGestureDragFailed(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "onGestureDragFailed"

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 14
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 16
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 18
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 21
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 23
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->finishHomeTransition(ZLandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public onGestureDragMerged(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;FF)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onGestureDragMerged taskInfo:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;->taskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    invoke-static {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDragSN:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 23
    iget p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->ctrlType:I

    .line 25
    if-ne p1, p2, :cond_0

    .line 27
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 29
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->dragMerged(IFF)Z

    .line 31
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    const/4 p2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p2, 0x0

    .line 39
    :goto_0
    if-eqz p2, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 42
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->animationMerging()V

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 47
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->dragMerged(IFF)Z

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 52
    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->onGestureDragMove(FF)V

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 58
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->cancelGesture()V

    .line 60
    :goto_1
    return p2
    .line 63
.end method

.method public onGestureDragMove(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->onGestureDragMove(FF)V

    .line 4
    return-void
    .line 7
.end method

.method public onGestureDragStart(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;FF)Z
    .locals 7

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;I)V

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDragSN:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskBoundsPositioner;->inFullScreenModeGesture(I)Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isInternationalBuild()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 24
    const-string p1, "In international build, not support full to freeform gesture!"

    .line 26
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return v1

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->startDrag(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$TriggerResult;)V

    .line 32
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 35
    if-eqz p2, :cond_2

    .line 37
    sget-object p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "onGestureDragStart taskInfo:"

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    invoke-static {p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 60
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 62
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 64
    move v2, p1

    .line 66
    move v3, p3

    .line 67
    move v4, p4

    .line 68
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->initWindowParams(IFF[Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 72
    instance-of p2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 74
    if-eqz p2, :cond_1

    .line 76
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 78
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 80
    move-result p2

    .line 83
    invoke-interface {p1, p2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformResizeStart(I)V

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->initFreeformTrackDate(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 89
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :cond_2
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 97
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->cancelGesture()V

    .line 99
    return v1
    .line 102
.end method

.method public onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->onInit()V

    .line 4
    return-void
    .line 7
.end method

.method public onModeChange(IILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->updateTaskStrokeByModeChange(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;I)V

    .line 2
    const/4 v0, 0x1

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->switchFreeformMode(ILcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x2

    .line 12
    if-ne p2, p1, :cond_1

    .line 13
    invoke-direct {p0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->switchMiniMode(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    if-nez p2, :cond_2

    .line 19
    invoke-direct {p0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->switchFullscreenMode(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 21
    :cond_2
    :goto_0
    return-void
    .line 24
.end method

.method public onPendingResizeOpConsumed(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->isFluidResize()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 12
    iget-object p1, p2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;->bounds:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->windowBoundsChange(Landroid/graphics/Rect;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 12
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureAnimatorStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->onFreeformTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 29
    move-result p0

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->onFreeformTaskAppeared(I)V

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public onTaskSizeLevelChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskWindowMode()I

    .line 9
    move-result v0

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 19
    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 23
    move-result-object v0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 29
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->isGestureControlled(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z

    .line 39
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 52
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->isAllGestureAnimFinished()Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->isIdle()Z

    .line 64
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    new-instance v3, Landroid/graphics/Rect;

    .line 70
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 72
    invoke-virtual {p1, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->setFreeformAllParams(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->syncBaseBoundsAndScale()V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 82
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getFreeformRangeArea()Landroid/graphics/Rect;

    .line 84
    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 88
    invoke-virtual {v0, p1, v3, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->calDestAttrForAutoResize(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->setType(I)V

    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->asResizeOp()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;

    .line 99
    move-result-object v0

    .line 102
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->addNextPendingResizeOp(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeOp;)V

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->autoResizeIsAnimating(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z

    .line 108
    move-result v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 114
    invoke-virtual {v2, v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->performAutoResizeOp(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;)Z

    .line 116
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 124
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->startAutoResizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 129
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 131
    move-result-object p1

    .line 134
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 135
    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->doAutoLayoutUnChecked(II)V

    .line 138
    goto :goto_2

    .line 141
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "onTaskSizeLevelChanged freeform animating type :"

    .line 146
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 151
    move-result v0

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 161
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_4
    :goto_2
    return-void
    .line 165
.end method

.method public onUiModeChanged(I)V
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x30

    .line 2
    const/16 v0, 0x20

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mNightMode:Z

    .line 11
    return-void
    .line 13
.end method

.method public onWindowRadioChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->windowRadioChanged(Landroid/graphics/Rect;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 6
    return-void
    .line 9
.end method

.method public setMiuiFreeformModeCornerTipHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 2
    return-void
    .line 4
.end method

.method public setTaskBoundsPositioner(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mWindowPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;->setGestureObserver(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeGestureObserver;)V

    .line 4
    return-void
    .line 7
.end method

.method public showInterruptGestureToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 4
    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v1, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMultiwindowNotSupportCvwString(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 19
    return-void
    .line 22
.end method

.method public updateDraggableAreas(IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    const/high16 v1, 0x41a00000    # 20.0f

    .line 8
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 10
    move-result v1

    .line 13
    float-to-int v1, v1

    .line 14
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    const/high16 v2, 0x429c0000    # 78.0f

    .line 21
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 23
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/high16 v2, 0x41d00000    # 26.0f

    .line 28
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 30
    move-result v0

    .line 33
    :goto_0
    float-to-int v0, v0

    .line 34
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result p3

    .line 38
    sub-int v0, p1, v1

    .line 39
    sub-int p3, p2, p3

    .line 41
    const/16 v2, 0x28

    .line 43
    int-to-float v3, v2

    .line 45
    const/high16 v4, 0x3f800000    # 1.0f

    .line 46
    mul-float/2addr v3, v4

    .line 48
    int-to-float v4, p2

    .line 49
    div-float/2addr v3, v4

    .line 50
    int-to-float v4, p1

    .line 51
    mul-float/2addr v3, v4

    .line 52
    float-to-int v3, v3

    .line 53
    add-int/lit8 v4, p1, -0x28

    .line 54
    sub-int v5, p2, v3

    .line 56
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 58
    const/4 v7, 0x2

    .line 60
    aget-object v6, v6, v7

    .line 61
    invoke-virtual {v6, v1, p4, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 66
    const/4 p4, 0x0

    .line 68
    aget-object p3, p3, p4

    .line 69
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 74
    const/4 p1, 0x1

    .line 76
    aget-object p0, p0, p1

    .line 77
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    return-void
    .line 82
.end method

.method public updateFreeFormTrackDate(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationMiniBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 12
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v3

    .line 26
    const-string v4, "animator_freeform_to_mini_left"

    .line 27
    const-string v5, "animator_back_to_mini"

    .line 29
    const-string v6, "animator_fullscreen_to_mini_left"

    .line 31
    const-string v7, "animator_fullscreen_to_freeform_left"

    .line 33
    const/4 v8, -0x1

    .line 35
    sparse-switch v3, :sswitch_data_0

    .line 36
    goto/16 :goto_0

    .line 39
    :sswitch_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    goto/16 :goto_0

    .line 47
    :cond_0
    const/16 v8, 0xb

    .line 49
    goto/16 :goto_0

    .line 51
    :sswitch_1
    const-string v3, "animator_freeform_to_mini_right"

    .line 53
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    goto/16 :goto_0

    .line 61
    :cond_1
    const/16 v8, 0xa

    .line 63
    goto/16 :goto_0

    .line 65
    :sswitch_2
    const-string v3, "animator_mini_to_freeform_right"

    .line 67
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    goto/16 :goto_0

    .line 75
    :cond_2
    const/16 v8, 0x9

    .line 77
    goto/16 :goto_0

    .line 79
    :sswitch_3
    const-string v3, "animator_mini_to_freeform_left"

    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const/16 v8, 0x8

    .line 90
    goto :goto_0

    .line 92
    :sswitch_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v3

    .line 96
    if-nez v3, :cond_4

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    const/4 v8, 0x7

    .line 100
    goto :goto_0

    .line 101
    :sswitch_5
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v3

    .line 105
    if-nez v3, :cond_5

    .line 106
    goto :goto_0

    .line 108
    :cond_5
    const/4 v8, 0x6

    .line 109
    goto :goto_0

    .line 110
    :sswitch_6
    const-string v3, "animator_resize_left"

    .line 111
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v3

    .line 116
    if-nez v3, :cond_6

    .line 117
    goto :goto_0

    .line 119
    :cond_6
    const/4 v8, 0x5

    .line 120
    goto :goto_0

    .line 121
    :sswitch_7
    const-string v3, "animator_resize_right"

    .line 122
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v3

    .line 127
    if-nez v3, :cond_7

    .line 128
    goto :goto_0

    .line 130
    :cond_7
    const/4 v8, 0x4

    .line 131
    goto :goto_0

    .line 132
    :sswitch_8
    const-string v3, "animator_fullscreen_to_mini_right"

    .line 133
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v3

    .line 138
    if-nez v3, :cond_8

    .line 139
    goto :goto_0

    .line 141
    :cond_8
    const/4 v8, 0x3

    .line 142
    goto :goto_0

    .line 143
    :sswitch_9
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v3

    .line 147
    if-nez v3, :cond_9

    .line 148
    goto :goto_0

    .line 150
    :cond_9
    const/4 v8, 0x2

    .line 151
    goto :goto_0

    .line 152
    :sswitch_a
    const-string v3, "animator_fullscreen_to_freeform_right"

    .line 153
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v3

    .line 158
    if-nez v3, :cond_a

    .line 159
    goto :goto_0

    .line 161
    :cond_a
    const/4 v8, 0x1

    .line 162
    goto :goto_0

    .line 163
    :sswitch_b
    const-string v3, "animator_freeform_to_fullscreen"

    .line 164
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v3

    .line 169
    if-nez v3, :cond_b

    .line 170
    goto :goto_0

    .line 172
    :cond_b
    const/4 v8, 0x0

    .line 173
    :goto_0
    const-string v3, ""

    .line 174
    packed-switch v8, :pswitch_data_0

    .line 176
    goto/16 :goto_4

    .line 179
    :pswitch_0
    if-ne p2, v4, :cond_c

    .line 181
    const-string/jumbo p1, "\u5c0f\u7a97_\u5de6\u4e0b\u89d2\u65e0\u6781\u7f29\u653e"

    .line 183
    goto :goto_1

    .line 186
    :cond_c
    const-string/jumbo p1, "\u5c0f\u7a97_\u53f3\u4e0b\u89d2\u65e0\u6781\u7f29\u653e"

    .line 187
    :goto_1
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 190
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 192
    const-string/jumbo p1, "\u8fdb\u5165\u8ff7\u4f60\u7a97"

    .line 194
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 197
    new-instance p1, Landroid/graphics/Point;

    .line 199
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 201
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 203
    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 205
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 208
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 210
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 212
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 216
    move-result p1

    .line 219
    iput p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 220
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 222
    move-result-object p1

    .line 225
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 226
    invoke-virtual {p1, p2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 228
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 231
    move-result-object p1

    .line 234
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 235
    invoke-virtual {p1, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 237
    goto/16 :goto_4

    .line 240
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getRatioCharByLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 246
    const-string/jumbo v0, "\u62d6\u62fd\u8fdb\u5165\u5c0f\u7a97"

    .line 248
    iput-object v0, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "\u62d6\u62fd\u8ff7\u4f60\u7a97\u8fdb\u5165\u5c0f\u7a97"

    .line 253
    iput-object v0, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 256
    iput-object v3, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->noticeWay:Ljava/lang/String;

    .line 258
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowRatio:Ljava/lang/String;

    .line 260
    new-instance v0, Landroid/graphics/Point;

    .line 262
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 264
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 266
    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 268
    iput-object v0, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 271
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 273
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 275
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 279
    move-result v0

    .line 282
    iput v0, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 283
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 285
    move-result-object p2

    .line 288
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 289
    invoke-virtual {p2, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 291
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 294
    move-result-object p2

    .line 297
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 298
    invoke-virtual {p2, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 300
    if-eqz v2, :cond_10

    .line 303
    iput-object p1, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 305
    goto/16 :goto_4

    .line 307
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getRatioCharByLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 313
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowToRatio:Ljava/lang/String;

    .line 315
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 317
    move-result-object p2

    .line 320
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 321
    invoke-virtual {p2, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormResizeEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 323
    if-eqz v2, :cond_10

    .line 326
    iput-object p1, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 328
    goto/16 :goto_4

    .line 330
    :pswitch_3
    if-ne p2, v6, :cond_d

    .line 332
    const-string/jumbo p1, "\u5168\u5c4f\u5e94\u7528_\u5de6\u4e0b\u89d2\u65e0\u6781\u6302\u8d77"

    .line 334
    goto :goto_2

    .line 337
    :cond_d
    const-string/jumbo p1, "\u5168\u5c4f\u5e94\u7528_\u53f3\u4e0b\u89d2\u65e0\u6781\u6302\u8d77"

    .line 338
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 341
    iput-object p1, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 343
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 345
    iput-object p1, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 347
    const-string/jumbo p1, "\u5168\u5c4f\u8fdb\u5165\u8ff7\u4f60\u7a97"

    .line 349
    iput-object p1, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 352
    iput-object v3, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 354
    new-instance p1, Landroid/graphics/Point;

    .line 356
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 358
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 360
    invoke-direct {p1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 362
    iput-object p1, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 365
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 367
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 369
    move-result-object p1

    .line 372
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 373
    move-result p1

    .line 376
    iput p1, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 377
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    move-result p1

    .line 382
    if-nez p1, :cond_10

    .line 383
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 385
    move-result p1

    .line 388
    if-eqz p1, :cond_10

    .line 389
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 391
    move-result-object p1

    .line 394
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 395
    invoke-virtual {p1, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFullscreenQuitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 397
    goto :goto_4

    .line 400
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getRatioCharByLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Ljava/lang/String;

    .line 401
    move-result-object p1

    .line 404
    if-ne p2, v7, :cond_e

    .line 405
    const-string/jumbo p2, "\u5168\u5c4f\u5e94\u7528_\u65e0\u6781\u7f29\u653e_\u5de6\u4e0b\u89d2"

    .line 407
    goto :goto_3

    .line 410
    :cond_e
    const-string/jumbo p2, "\u5168\u5c4f\u5e94\u7528_\u65e0\u6781\u7f29\u653e_\u53f3\u4e0b\u89d2"

    .line 411
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 414
    iput-object p2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 416
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 418
    iput-object p2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 420
    const-string/jumbo p2, "\u5168\u5c4f\u8fdb\u5165\u5c0f\u7a97"

    .line 422
    iput-object p2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 425
    iput-object v3, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->noticeWay:Ljava/lang/String;

    .line 427
    iput-object p1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowRatio:Ljava/lang/String;

    .line 429
    iput-object v3, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 431
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 433
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 435
    move-result-object p2

    .line 438
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 439
    move-result p2

    .line 442
    iput p2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 443
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 445
    move-result-object p2

    .line 448
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 449
    invoke-virtual {p2, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 451
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 454
    move-result p2

    .line 457
    if-eqz p2, :cond_f

    .line 458
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 460
    move-result-object p2

    .line 463
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 464
    invoke-virtual {p2, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFullscreenQuitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 466
    :cond_f
    if-eqz v2, :cond_10

    .line 469
    iput-object p1, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 471
    goto :goto_4

    .line 473
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getRatioCharByLevel(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Ljava/lang/String;

    .line 474
    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 478
    const-string/jumbo v0, "\u62d6\u62fd\u5c0f\u7a97\u81f3\u5168\u5c4f"

    .line 480
    iput-object v0, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 483
    iput-object p1, p2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowToRatio:Ljava/lang/String;

    .line 485
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 487
    move-result-object p2

    .line 490
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mFreeFormTrackObj:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 491
    invoke-virtual {p2, p0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 493
    if-eqz v2, :cond_10

    .line 496
    iput-object p1, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 498
    :cond_10
    :goto_4
    return-void

    .line 500
    nop

    .line 501
    :sswitch_data_0
    .sparse-switch
        -0x6ed81c78 -> :sswitch_b
        -0x62e16c9b -> :sswitch_a
        -0x55c7fe62 -> :sswitch_9
        -0x326142b4 -> :sswitch_8
        -0x106726d7 -> :sswitch_7
        0x183bf35a -> :sswitch_6
        0x27a77ed7 -> :sswitch_5
        0x43dee69b -> :sswitch_4
        0x4d1f4282 -> :sswitch_3
        0x571f6f01 -> :sswitch_2
        0x5bb2d401 -> :sswitch_1
        0x660b3d82 -> :sswitch_0
    .end sparse-switch

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 552
.end method

.method public updateTaskStrokeAndCornerTip(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiInfinityModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_d

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationVisualBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 21
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mDraggableAreas:[Landroid/graphics/Rect;

    .line 24
    const/4 v3, 0x1

    .line 26
    aget-object v2, v2, v3

    .line 27
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 29
    const/4 v5, 0x0

    .line 31
    if-lt v1, v4, :cond_0

    .line 32
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v5

    .line 36
    :goto_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 37
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 39
    if-gt v4, v6, :cond_1

    .line 41
    move v4, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v5

    .line 45
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 46
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 48
    if-lt v0, v2, :cond_2

    .line 50
    move v5, v3

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 53
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 55
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 57
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    goto :goto_2

    .line 63
    :cond_3
    if-nez v4, :cond_5

    .line 64
    if-eqz v5, :cond_4

    .line 66
    goto :goto_2

    .line 68
    :cond_4
    move-object v9, p2

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    move-object v9, v0

    .line 71
    :goto_3
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 72
    move-result v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    goto :goto_4

    .line 78
    :cond_6
    if-nez v1, :cond_8

    .line 79
    if-eqz v5, :cond_7

    .line 81
    goto :goto_4

    .line 83
    :cond_7
    move-object v8, p2

    .line 84
    goto :goto_5

    .line 85
    :cond_8
    :goto_4
    move-object v8, v0

    .line 86
    :goto_5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationWindowMode()I

    .line 87
    move-result p2

    .line 90
    const/4 v0, 0x0

    .line 91
    if-ne p2, v3, :cond_b

    .line 92
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 94
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreefromStrokeColors:[F

    .line 96
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mNightMode:Z

    .line 98
    if-eqz v1, :cond_9

    .line 100
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 102
    const/high16 v2, 0x40400000    # 3.0f

    .line 104
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 106
    move-result v1

    .line 109
    goto :goto_6

    .line 110
    :cond_9
    move v1, v0

    .line 111
    :goto_6
    iget-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mNightMode:Z

    .line 112
    if-eqz v2, :cond_a

    .line 114
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 116
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mFreeformStrokeAlpha:F

    .line 118
    :cond_a
    move-object v11, p2

    .line 120
    move v12, v0

    .line 121
    move v10, v1

    .line 122
    goto :goto_7

    .line 123
    :cond_b
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 124
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeColors:[F

    .line 126
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->isMiniMode()Z

    .line 128
    move-result v1

    .line 131
    if-eqz v1, :cond_c

    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mContext:Landroid/content/Context;

    .line 134
    const/high16 v1, 0x42480000    # 50.0f

    .line 136
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 138
    move-result v0

    .line 141
    :cond_c
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 142
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mMiniStrokeAlpha:F

    .line 144
    move-object v11, p2

    .line 146
    move v10, v0

    .line 147
    move v12, v1

    .line 148
    :goto_7
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 149
    move-object v7, p1

    .line 151
    invoke-virtual/range {v6 .. v12}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->updateTaskStrokeAndCornerTip(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;F[FF)V

    .line 152
    :cond_d
    return-void
    .line 155
.end method

.method public winDragEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mShowState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->updateTaskStrokeAndCornerTip(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->consumeNextPendingResizeOP(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeStateCallback;)V

    .line 15
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureDragStarted:Z

    .line 18
    if-nez v0, :cond_0

    .line 20
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->TAG:Ljava/lang/String;

    .line 22
    const-string p1, "It\u2019s over before it even starts, don\u2019t deal with it"

    .line 24
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mGestureAnimatorStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 30
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->setFinishAnimationType(Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->stopFluidResizeAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method

.method public winDragOutOfBounds(ZZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeTaskOperations:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mAnimatingTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 6
    iget-object v3, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHideState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 8
    iget-object v4, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->mHoldState:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 10
    move-object v2, v3

    .line 12
    move-object v3, v4

    .line 13
    move v4, p1

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskOperations;->setTaskDestCornerState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;ZZZ)V

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->windowOutBounds()V

    .line 22
    return-void
    .line 25
.end method

.method public winResizeToRatio(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->mMiuiInfinityModeSupervisor:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->animationRunning(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method
