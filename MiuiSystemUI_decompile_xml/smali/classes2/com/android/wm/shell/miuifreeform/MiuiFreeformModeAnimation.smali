.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final ANIMATION_DESKTOP_AUTOLAYOUT_AVOID:I = 0x14

.field public static final ANIMATION_DESKTOP_AUTOLAYOUT_AVOID_TRANSLATE:I = 0x15

.field public static final ANIMATION_FREEFORM_BOTTOM_CAPTION_DRAG:I = 0x2

.field public static final ANIMATION_FREEFORM_ELUDE:I = 0xe

.field public static final ANIMATION_FREEFORM_ELUDE_TO_SHOW:I = 0xf

.field public static final ANIMATION_FREEFORM_ENTERING_DKT:I = 0x17

.field public static final ANIMATION_FREEFORM_KILL_ALL:I = 0x16

.field public static final ANIMATION_FREEFORM_MOVE_TO_FRONT:I = 0xd

.field public static final ANIMATION_FREEFORM_ORIENTATION_CHANGED_HIDE:I = 0xa

.field public static final ANIMATION_FREEFORM_RESIZE:I = 0x3

.field public static final ANIMATION_FREEFORM_TO_MINI:I = 0xb

.field public static final ANIMATION_FREEFORM_TRANSLATE:I = 0x1

.field public static final ANIMATION_FREEFORM_UNPIN:I = 0x8

.field public static final ANIMATION_FULLSCREEN_TO_FREEFORM:I = 0x12

.field public static final ANIMATION_HIDE_FREEFORM:I = 0x10

.field public static final ANIMATION_MINI_FREEFORM_AVOID:I = 0xc

.field public static final ANIMATION_MINI_FREEFORM_DOUBLE_TAP:I = 0x5

.field public static final ANIMATION_MINI_FREEFORM_TAP:I = 0x4

.field public static final ANIMATION_MINI_FREEFORM_UNPIN:I = 0x9

.field public static final ANIMATION_MIUI_FREEFORM_BOUNDS:I = 0x13

.field public static final ANIMATION_SHOW_FREEFORM:I = 0x11

.field public static final ANIMATION_SLIDE_FREEFORM_TO_PIN:I = 0x6

.field public static final ANIMATION_SLIDE_MINI_FREEFORM_TO_PIN:I = 0x7

.field public static final ANIMATION_UNDEFINED:I = 0x0

.field public static final CORNER_ANIMATION_DESKTOP_STROKE:I = 0xc

.field public static final CORNER_ANIMATION_EXIT:I = 0x8

.field public static final CORNER_ANIMATION_GUIDE_BACK:I = 0x3

.field public static final CORNER_ANIMATION_GUIDE_EMPHASIS:I = 0x2

.field public static final CORNER_ANIMATION_GUIDE_SHOW:I = 0x1

.field public static final CORNER_ANIMATION_HIDE:I = 0x5

.field public static final CORNER_ANIMATION_HIDE_LEFT:I = 0x6

.field public static final CORNER_ANIMATION_HIDE_RIGHT:I = 0x7

.field public static final CORNER_ANIMATION_OTHER_OP_HANDS_OFF:I = 0xb

.field public static final CORNER_ANIMATION_RESIZE_HOLD:I = 0x9

.field public static final CORNER_ANIMATION_RESIZE_UP:I = 0xa

.field public static final CORNER_ANIMATION_START_SHOW:I = 0x4

.field public static final CORNER_ANIMATION_UNDEFINED:I = 0x0

.field public static final DESKTOP_ELUDE_BAR:F

.field public static final PIN_TIP_MARGIN:F = 16.36f

.field public static final SURFACE_DEGREE:F = 30.0f

.field public static final SURFACE_DEPTH:F = 5500.0f

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformAnimation"


# instance fields
.field private CORNER_DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mEndFixedRotation:I

.field private mInFixedRotation:Z

.field private final mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

.field private final mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

.field private final mPendingTransitionTokens:Landroid/util/ArrayMap;

.field private mPickerFreeformModeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$4yUtE9fzg4md4WuS5wyeyrZ7KPU(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->lambda$exitFreeformWithoutAnimation$0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$7ws-0RHwnr592vOeZ0XTNYwaKaM(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->lambda$startMiuiFreeformMaximizeMoveToBackTransition$3(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$B6ldlrQYUZg3iDWcfHC8GrrGBPg(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->lambda$startMoveToFrontWithoutAnimation$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$bjnLNqEeHGZeHCBzAvTgkSMvGsc(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->lambda$startEnterMiniFreeformAlphaAnimation$2(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$jNMK_eJ9NuKoQP7Hnfa5cK_fkug(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->onInit()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetCORNER_DEBUG(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->CORNER_DEBUG:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeDisplayInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModePinHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTransitionTokens(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTransitions(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/transition/Transitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowDecorationViewModel(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$madjustFreeformOrientationIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->adjustFreeformOrientationIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mgetStrokeOffest(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->getStrokeOffest(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mmiuifreeformMoveEndOrCancel(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->miuifreeformMoveEndOrCancel(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x41a00000    # 20.0f

    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    move-result v0

    .line 16
    sput v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 17
    return-void
    .line 19
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 17
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->CORNER_DEBUG:Z

    .line 20
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPickerFreeformModeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 25
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 27
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 29
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 31
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 33
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 35
    iput-object p8, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 37
    iput-object p9, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 39
    iput-object p10, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 41
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 43
    if-eqz p1, :cond_0

    .line 45
    new-instance p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;

    .line 47
    const/16 p2, 0x11

    .line 49
    invoke-direct {p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {p4, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 54
    :cond_0
    return-void
    .line 57
.end method

.method private adjustFreeformOrientationIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result v1

    .line 27
    if-le v0, v1, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 33
    move-result v1

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    const/16 v0, 0xa

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method

.method private applyAutoLayoutAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "MiuiFreeformAnimation"

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 10
    move-result v0

    .line 13
    const/16 v2, 0xe

    .line 14
    if-eq v0, v2, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 18
    move-result v0

    .line 21
    const/16 v2, 0xf

    .line 22
    if-ne v0, v2, :cond_1

    .line 24
    :cond_0
    const-string v0, "applyAutoLayoutAnimation need clean elude and show anim attr."

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 31
    move-result-object v0

    .line 34
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 39
    move-result-object v0

    .line 42
    const-string v2, "folmePosX"

    .line 43
    const-string v3, "folmePosY"

    .line 45
    const-string v4, "folmeScaleX"

    .line 47
    const-string v5, "folmeScaleY"

    .line 49
    const-string v6, "scale"

    .line 51
    const-string v7, "scaleXY"

    .line 53
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 59
    :cond_1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 62
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 64
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$17;

    .line 67
    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$17;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 69
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 72
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 76
    move-result-object v0

    .line 79
    const/4 v2, 0x2

    .line 80
    new-array v2, v2, [F

    .line 81
    fill-array-data v2, :array_0

    .line 83
    const/4 v3, -0x2

    .line 86
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 87
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getRestoreNormalBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 94
    move-result v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 100
    move-result-object v2

    .line 103
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setRestoreNormalBounds(Landroid/graphics/Rect;)V

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 107
    move-result-object v2

    .line 110
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 113
    invoke-direct {p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->miuifreeformMoveStart(I)V

    .line 115
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 118
    move-result-object p0

    .line 121
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 122
    move-result-object p0

    .line 125
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 126
    move-result-object p0

    .line 129
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 130
    move-result-object v2

    .line 133
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 134
    int-to-float v2, v2

    .line 136
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 141
    move-result-object v3

    .line 144
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 145
    int-to-float v3, v3

    .line 147
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    move-result-object v3

    .line 151
    const-string v4, "folmePosX"

    .line 152
    const-string v5, "folmePosY"

    .line 154
    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 159
    invoke-interface {p0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 160
    move-result-object p0

    .line 163
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 164
    move-result-object v2

    .line 167
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 168
    int-to-float v2, v2

    .line 170
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    move-result-object v2

    .line 174
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 175
    move-result-object v3

    .line 178
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 179
    int-to-float v3, v3

    .line 181
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    move-result-object v3

    .line 185
    filled-new-array {v4, v2, v5, v3, v0}, [Ljava/lang/Object;

    .line 186
    move-result-object v0

    .line 189
    const-string v2, " start anim applyAutoLayoutAnimation :  fromPosX: "

    .line 190
    invoke-static {p0, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    move-result-object p0

    .line 195
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 196
    move-result-object v0

    .line 199
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, " fromPosY"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 210
    move-result-object v0

    .line 213
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v0, " toPosX: "

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 224
    move-result-object v0

    .line 227
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v0, " toPosY: "

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 238
    move-result-object v0

    .line 241
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v0, " miuiFreeformModeTaskInfo: "

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p0

    .line 258
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    nop

    .line 263
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 264
.end method

.method private applyAutoLayoutTranslateAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 5

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$18;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$18;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 9
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [F

    .line 21
    fill-array-data v1, :array_0

    .line 23
    const/4 v2, -0x2

    .line 26
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 27
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 30
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 36
    invoke-direct {p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->miuifreeformMoveStart(I)V

    .line 38
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 41
    move-result-object p0

    .line 44
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 53
    move-result-object v1

    .line 56
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 57
    int-to-float v1, v1

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v2

    .line 67
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 68
    int-to-float v2, v2

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object v2

    .line 74
    const-string v3, "folmePosX"

    .line 75
    const-string v4, "folmePosY"

    .line 77
    filled-new-array {v3, v1, v4, v2, v0}, [Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    const-string v1, " start anim applyAutoLayoutTranslateAnimation :  toPosX: "

    .line 83
    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 89
    move-result-object v0

    .line 92
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " toPosY: "

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 103
    move-result-object v0

    .line 106
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, " miuiFreeformModeTaskInfo: "

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 123
    const-string p1, "MiuiFreeformAnimation"

    .line 124
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 129
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 130
.end method

.method private applyBottomCaptionDragAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 13

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$20;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$20;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 9
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 16
    move-result-object v12

    .line 19
    new-instance v10, Lmiuix/animation/base/AnimConfig;

    .line 20
    invoke-direct {v10}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBottomCaptionActionMode()I

    .line 25
    move-result v0

    .line 28
    const/4 v1, 0x2

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v0, v2, :cond_0

    .line 31
    new-array v0, v1, [F

    .line 33
    fill-array-data v0, :array_0

    .line 35
    const/4 v3, -0x2

    .line 38
    invoke-virtual {v10, v3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 39
    move-result-object v0

    .line 42
    new-array v3, v2, [F

    .line 43
    const/high16 v4, 0x43960000    # 300.0f

    .line 45
    const/4 v5, 0x0

    .line 47
    aput v4, v3, v5

    .line 48
    const/16 v4, 0xf

    .line 50
    invoke-static {v4, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 52
    move-result-object v3

    .line 55
    new-array v4, v5, [F

    .line 56
    const-string v5, "folmeAlpha"

    .line 58
    invoke-virtual {v0, v5, v3, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBottomCaptionActionMode()I

    .line 63
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->actionModeToBoostType(I)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$21;

    .line 71
    invoke-direct {v3, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$21;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 73
    sget-object p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 76
    new-instance p0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 78
    invoke-direct {p0, v3, v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 80
    filled-new-array {p0}, [Lmiuix/animation/listener/TransitionListener;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {v10, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 87
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 90
    move-result p0

    .line 93
    if-nez p0, :cond_1

    .line 94
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 99
    move-result-object p0

    .line 102
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 106
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 107
    move-result-object p0

    .line 110
    const-string v0, "folmePosX"

    .line 111
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 113
    move-result-object v1

    .line 116
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 117
    int-to-float v1, v1

    .line 119
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 120
    move-result-object v1

    .line 123
    const-string v2, "folmePosY"

    .line 124
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 126
    move-result-object v3

    .line 129
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 130
    int-to-float v3, v3

    .line 132
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    move-result-object v3

    .line 136
    const-string v4, "folmeScaleX"

    .line 137
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 139
    move-result v5

    .line 142
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    move-result-object v5

    .line 146
    const-string v6, "folmeScaleY"

    .line 147
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 149
    move-result p1

    .line 152
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    move-result-object v7

    .line 156
    const-string v8, "folmeAlpha"

    .line 157
    const/high16 p1, 0x3f800000    # 1.0f

    .line 159
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v9

    .line 164
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 168
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 169
    goto/16 :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 174
    move-result p0

    .line 177
    if-ne p0, v1, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 180
    move-result-object p0

    .line 183
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 184
    move-result-object p0

    .line 187
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 188
    move-result-object p0

    .line 191
    const-string v2, "folmePosX"

    .line 192
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 194
    move-result-object v0

    .line 197
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 198
    int-to-float v0, v0

    .line 200
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    move-result-object v3

    .line 204
    const-string v4, "folmePosY"

    .line 205
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 207
    move-result-object v0

    .line 210
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 211
    int-to-float v0, v0

    .line 213
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    move-result-object v5

    .line 217
    const-string v6, "folmeScaleX"

    .line 218
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 220
    move-result v0

    .line 223
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    move-result-object v7

    .line 227
    const-string v8, "folmeScaleY"

    .line 228
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 230
    move-result v0

    .line 233
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 234
    move-result-object v9

    .line 237
    const-string v10, "folmeAlpha"

    .line 238
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 240
    move-result p1

    .line 243
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v11

    .line 247
    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    .line 248
    move-result-object p1

    .line 251
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 252
    goto/16 :goto_0

    .line 255
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 257
    move-result p0

    .line 260
    if-ne p0, v2, :cond_3

    .line 261
    invoke-static {v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 266
    move-result-object p0

    .line 269
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 270
    move-result-object p0

    .line 273
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 274
    move-result-object p0

    .line 277
    const-string v0, "folmePosX"

    .line 278
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 280
    move-result-object v1

    .line 283
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 284
    int-to-float v1, v1

    .line 286
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    move-result-object v1

    .line 290
    const-string v2, "folmePosY"

    .line 291
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 293
    move-result-object v3

    .line 296
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 297
    int-to-float v3, v3

    .line 299
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 300
    move-result-object v3

    .line 303
    const-string v4, "folmeScaleX"

    .line 304
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 306
    move-result v5

    .line 309
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 310
    move-result-object v5

    .line 313
    const-string v6, "folmeScaleY"

    .line 314
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 316
    move-result v7

    .line 319
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 320
    move-result-object v7

    .line 323
    const-string v8, "folmeAlpha"

    .line 324
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 326
    move-result v9

    .line 329
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 330
    move-result-object v9

    .line 333
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 334
    move-result-object v0

    .line 337
    const-string v1, " start anim applyBottomCaptionDragAnimation up:  fromPosX: "

    .line 338
    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    move-result-object p0

    .line 343
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 344
    move-result-object v0

    .line 347
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    const-string v0, " fromPosY"

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 358
    move-result-object v0

    .line 361
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v0, " fromScaleX: "

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 372
    move-result v0

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 376
    const-string v0, " fromSclaeY"

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 384
    move-result v0

    .line 387
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 388
    const-string v0, " toPosX: "

    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 396
    move-result-object v0

    .line 399
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    const-string v0, " toPosY: "

    .line 405
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 410
    move-result-object v0

    .line 413
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 414
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v0, " toScaleX: "

    .line 419
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 424
    move-result v0

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 428
    const-string v0, " toSclaeY: "

    .line 431
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 436
    move-result v0

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 440
    const-string v0, " miuiFreeformModeTaskInfo: "

    .line 443
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object p0

    .line 454
    const-string p1, "MiuiFreeformAnimation"

    .line 455
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3
    :goto_0
    return-void

    .line 460
    nop

    .line 461
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ee66666    # 0.45f
    .end array-data
    .line 462
.end method

.method private applyFreeformEludeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 24

    .line 1
    move-object/from16 v8, p1

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setFreeformEludeAnimation(Z)V

    .line 5
    move-object/from16 v1, p0

    .line 8
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 12
    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    invoke-interface {v0, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformHide(I)V

    .line 20
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 25
    move-result v2

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 33
    move-result v3

    .line 36
    int-to-float v3, v3

    .line 37
    mul-float/2addr v2, v3

    .line 38
    const v3, 0x3f4ccccd    # 0.8f

    .line 39
    mul-float/2addr v2, v3

    .line 42
    sub-float v9, v0, v2

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object v10

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 49
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 59
    move-result-object v2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v2

    .line 67
    :goto_0
    move-object v11, v2

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 69
    move-result-object v12

    .line 72
    new-instance v2, Landroid/graphics/Rect;

    .line 73
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 75
    int-to-float v3, v3

    .line 77
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 78
    move-result v4

    .line 81
    int-to-float v4, v4

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 83
    move-result v5

    .line 86
    mul-float/2addr v5, v4

    .line 87
    const v13, 0x3dcccccd    # 0.1f

    .line 88
    mul-float/2addr v5, v13

    .line 91
    add-float/2addr v5, v3

    .line 92
    float-to-int v3, v5

    .line 93
    float-to-int v4, v9

    .line 94
    iget v5, v12, Landroid/graphics/Rect;->right:I

    .line 95
    int-to-float v5, v5

    .line 97
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 98
    move-result v6

    .line 101
    int-to-float v6, v6

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 103
    move-result v7

    .line 106
    mul-float/2addr v7, v6

    .line 107
    mul-float/2addr v7, v13

    .line 108
    sub-float/2addr v5, v7

    .line 109
    float-to-int v5, v5

    .line 110
    float-to-int v0, v0

    .line 111
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    invoke-virtual {v8, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpEludeBounds(Landroid/graphics/Rect;)V

    .line 115
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 118
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 120
    const/4 v2, 0x2

    .line 123
    new-array v3, v2, [F

    .line 124
    fill-array-data v3, :array_0

    .line 126
    const/4 v4, -0x2

    .line 129
    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 130
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 133
    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 135
    new-array v2, v2, [F

    .line 138
    fill-array-data v2, :array_1

    .line 140
    invoke-virtual {v3, v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 143
    new-instance v15, Lmiuix/animation/base/AnimConfig;

    .line 146
    invoke-direct {v15}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 148
    const-string v2, "folmePosY"

    .line 151
    invoke-virtual {v15, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 153
    const-string v0, "folmeScaleX"

    .line 156
    invoke-virtual {v15, v0, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 158
    const-string v0, "folmeScaleY"

    .line 161
    invoke-virtual {v15, v0, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 163
    new-instance v14, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$5;

    .line 166
    move-object v0, v14

    .line 168
    move-object/from16 v1, p0

    .line 169
    move-object/from16 v2, p1

    .line 171
    move-object v3, v10

    .line 173
    move-object v4, v11

    .line 174
    move-object v5, v12

    .line 175
    move v6, v9

    .line 176
    move-object v7, v15

    .line 177
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$5;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLmiuix/animation/base/AnimConfig;)V

    .line 178
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 181
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 183
    const-string v1, "FF_NoUI/FREEFORM_ACTION_ELUDE"

    .line 185
    invoke-direct {v0, v14, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 187
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 190
    move-result-object v0

    .line 193
    invoke-virtual {v15, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 194
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 197
    const/16 v0, 0xe

    .line 200
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 205
    move-result-object v0

    .line 208
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 212
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 213
    move-result-object v0

    .line 216
    const-string v16, "folmePosX"

    .line 217
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 219
    int-to-float v1, v1

    .line 221
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 222
    move-result-object v17

    .line 225
    const-string v18, "folmePosY"

    .line 226
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 228
    int-to-float v1, v1

    .line 230
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    move-result-object v19

    .line 234
    const-string v20, "folmeScaleX"

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 237
    move-result v1

    .line 240
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 241
    move-result-object v21

    .line 244
    const-string v22, "folmeScaleY"

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 247
    move-result v1

    .line 250
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 251
    move-result-object v23

    .line 254
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 255
    move-result-object v1

    .line 258
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 259
    move-result-object v0

    .line 262
    const-string v14, "folmePosX"

    .line 263
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 265
    int-to-float v1, v1

    .line 267
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 268
    move-result v2

    .line 271
    int-to-float v2, v2

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 273
    move-result v3

    .line 276
    mul-float/2addr v3, v2

    .line 277
    mul-float/2addr v3, v13

    .line 278
    add-float/2addr v3, v1

    .line 279
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 280
    move-result-object v1

    .line 283
    const-string v16, "folmePosY"

    .line 284
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 286
    move-result-object v17

    .line 289
    const-string v18, "folmeScaleX"

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 292
    move-result v2

    .line 295
    const v3, 0x3f4ccccd    # 0.8f

    .line 296
    mul-float/2addr v2, v3

    .line 299
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 300
    move-result-object v19

    .line 303
    const-string v20, "folmeScaleY"

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 306
    move-result v2

    .line 309
    mul-float/2addr v2, v3

    .line 310
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 311
    move-result-object v21

    .line 314
    move-object v2, v15

    .line 315
    move-object v15, v1

    .line 316
    move-object/from16 v22, v2

    .line 317
    filled-new-array/range {v14 .. v22}, [Ljava/lang/Object;

    .line 319
    move-result-object v1

    .line 322
    const-string/jumbo v3, "start applyFreeformEludeAnimation:  fromPosX="

    .line 323
    invoke-static {v0, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    move-result-object v0

    .line 329
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, " fromPosY="

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, " toPosX="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 350
    int-to-float v1, v1

    .line 352
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 353
    move-result v3

    .line 356
    int-to-float v3, v3

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 358
    move-result v4

    .line 361
    mul-float/2addr v4, v3

    .line 362
    mul-float/2addr v4, v13

    .line 363
    add-float/2addr v4, v1

    .line 364
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, " posY="

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, " animConfig="

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, " taskInfo="

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 395
    const-string v1, "MiuiFreeformAnimation"

    .line 396
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 401
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    .line 402
    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3e800000    # 0.25f
    .end array-data
    .line 410
.end method

.method private applyFreeformEludeToShowAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 24

    .line 1
    move-object/from16 v7, p1

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setFreeformEludeAnimation(Z)V

    .line 5
    move-object/from16 v8, p0

    .line 8
    iget-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 12
    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformShow(I)V

    .line 20
    sget v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->DESKTOP_ELUDE_BAR:F

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 25
    move-result v1

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 33
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    mul-float/2addr v1, v2

    .line 38
    const v9, 0x3f4ccccd    # 0.8f

    .line 39
    mul-float/2addr v1, v9

    .line 42
    sub-float/2addr v0, v1

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 44
    move-result-object v10

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 48
    move-result-object v11

    .line 51
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpEludeBounds(Landroid/graphics/Rect;)V

    .line 52
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 55
    int-to-float v1, v1

    .line 57
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 58
    move-result v2

    .line 61
    int-to-float v2, v2

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 63
    move-result v3

    .line 66
    mul-float/2addr v3, v2

    .line 67
    const v2, 0x3dcccccd    # 0.1f

    .line 68
    mul-float/2addr v3, v2

    .line 71
    add-float v12, v3, v1

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimatingBounds()Landroid/graphics/Rect;

    .line 85
    move-result-object v0

    .line 88
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 89
    int-to-float v0, v0

    .line 91
    :goto_0
    move v13, v0

    .line 92
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 93
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 95
    const/4 v14, 0x0

    .line 98
    invoke-virtual {v7, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setFreeformEludeShowYAnimation(Z)V

    .line 99
    const/4 v15, 0x2

    .line 102
    new-array v1, v15, [F

    .line 103
    fill-array-data v1, :array_0

    .line 105
    const/4 v6, -0x2

    .line 108
    invoke-virtual {v0, v6, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 109
    move-result-object v1

    .line 112
    const-wide/16 v2, 0x32

    .line 113
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 115
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 118
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 120
    const-string v4, "folmePosY"

    .line 123
    invoke-virtual {v5, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 125
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$6;

    .line 128
    move-object v0, v3

    .line 130
    move-object/from16 v1, p0

    .line 131
    move-object/from16 v2, p1

    .line 133
    move-object v9, v3

    .line 135
    move-object v3, v10

    .line 136
    move-object v15, v4

    .line 137
    move v4, v13

    .line 138
    move-object/from16 v16, v5

    .line 139
    move-object v5, v11

    .line 141
    move-object/from16 v6, v16

    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$6;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;FLandroid/graphics/Rect;Lmiuix/animation/base/AnimConfig;)V

    .line 144
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 147
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 149
    const-string v6, "FF_NoUI/FREEFORM_ACTION_ELUDE"

    .line 151
    invoke-direct {v0, v9, v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 153
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 156
    move-result-object v0

    .line 159
    move-object/from16 v1, v16

    .line 160
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 162
    invoke-static {v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 165
    const/16 v9, 0xf

    .line 168
    invoke-virtual {v7, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 173
    move-result-object v0

    .line 176
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 180
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 181
    move-result-object v0

    .line 184
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    move-result-object v2

    .line 188
    filled-new-array {v15, v2}, [Ljava/lang/Object;

    .line 189
    move-result-object v2

    .line 192
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 193
    move-result-object v0

    .line 196
    iget v2, v11, Landroid/graphics/Rect;->top:I

    .line 197
    int-to-float v2, v2

    .line 199
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    move-result-object v2

    .line 203
    filled-new-array {v15, v2, v1}, [Ljava/lang/Object;

    .line 204
    move-result-object v1

    .line 207
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 208
    new-instance v13, Lmiuix/animation/base/AnimConfig;

    .line 211
    invoke-direct {v13}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 213
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 216
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 218
    invoke-virtual {v7, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setFreeformEludeShowScaleAnimation(Z)V

    .line 221
    const/4 v1, 0x2

    .line 224
    new-array v1, v1, [F

    .line 225
    fill-array-data v1, :array_1

    .line 227
    const/4 v2, -0x2

    .line 230
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 231
    move-result-object v1

    .line 234
    const-wide/16 v2, 0x82

    .line 235
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 237
    const-string v1, "folmePosX"

    .line 240
    invoke-virtual {v13, v1, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 242
    const-string v1, "folmeScaleX"

    .line 245
    invoke-virtual {v13, v1, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 247
    const-string v1, "folmeScaleY"

    .line 250
    invoke-virtual {v13, v1, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 252
    new-instance v14, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$7;

    .line 255
    move-object v0, v14

    .line 257
    move-object/from16 v1, p0

    .line 258
    move-object/from16 v2, p1

    .line 260
    move-object v3, v10

    .line 262
    move v4, v12

    .line 263
    move-object v5, v11

    .line 264
    move-object v8, v6

    .line 265
    move-object v6, v13

    .line 266
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$7;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;FLandroid/graphics/Rect;Lmiuix/animation/base/AnimConfig;)V

    .line 267
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 270
    invoke-direct {v0, v14, v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 272
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 275
    move-result-object v0

    .line 278
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 279
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v7, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 288
    move-result-object v0

    .line 291
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 292
    move-result-object v0

    .line 295
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 296
    move-result-object v0

    .line 299
    const-string v1, "folmePosX"

    .line 300
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 302
    move-result-object v2

    .line 305
    const-string v3, "folmeScaleX"

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 308
    move-result v4

    .line 311
    const v5, 0x3f4ccccd    # 0.8f

    .line 312
    mul-float/2addr v4, v5

    .line 315
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 316
    move-result-object v4

    .line 319
    const-string v6, "folmeScaleY"

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 322
    move-result v8

    .line 325
    mul-float/2addr v8, v5

    .line 326
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    move-result-object v8

    .line 330
    move-object v5, v6

    .line 331
    move-object v6, v8

    .line 332
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 333
    move-result-object v1

    .line 336
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 337
    move-result-object v0

    .line 340
    const-string v17, "folmePosX"

    .line 341
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 343
    int-to-float v1, v1

    .line 345
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 346
    move-result-object v18

    .line 349
    const-string v19, "folmeScaleX"

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 352
    move-result v1

    .line 355
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 356
    move-result-object v20

    .line 359
    const-string v21, "folmeScaleY"

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 362
    move-result v1

    .line 365
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 366
    move-result-object v22

    .line 369
    move-object/from16 v23, v13

    .line 370
    filled-new-array/range {v17 .. v23}, [Ljava/lang/Object;

    .line 372
    move-result-object v1

    .line 375
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 376
    return-void

    .line 379
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data

    .line 380
    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3ea8f5c3    # 0.33f
    .end array-data
    .line 388
.end method

.method private applyFreeformKillAllAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    move-result-object v2

    .line 9
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "folmeAlpha"

    .line 18
    const-string v4, "folmePosZ"

    .line 20
    const-string v5, "folmeRotateX"

    .line 22
    const-string v6, "folmePosX"

    .line 24
    const-string v7, "folmePosY"

    .line 26
    const-string v8, "folmeScaleX"

    .line 28
    const-string v9, "folmeScaleY"

    .line 30
    const-string v10, "radius"

    .line 32
    const-string v11, "rCAlpha"

    .line 34
    const-string v12, "rCRadius"

    .line 36
    const-string v13, "scale"

    .line 38
    const-string v14, "cornerRadius"

    .line 40
    const-string/jumbo v15, "windowCrop"

    .line 42
    const-string v16, "scaleXY"

    .line 45
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 50
    invoke-interface {v2, v3}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 54
    move-result v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/high16 v5, 0x3f800000    # 1.0f

    .line 60
    if-eqz v2, :cond_1

    .line 62
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 66
    move-result v6

    .line 69
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(I)V

    .line 70
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startExitFreeformShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 73
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 76
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 78
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 83
    move-result-object v7

    .line 86
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 89
    move-result-object v8

    .line 92
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 93
    int-to-float v8, v8

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object v9

    .line 99
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 100
    int-to-float v9, v9

    .line 102
    invoke-virtual {v6, v2, v7, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 103
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 108
    move-result-object v6

    .line 111
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 112
    invoke-virtual {v0, v2, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->hide(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 117
    move-result-object v0

    .line 120
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 121
    invoke-virtual {v2, v0, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 123
    invoke-virtual {v2, v0, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 126
    invoke-virtual {v2, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-virtual {v2, v0, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 132
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 138
    move-result v0

    .line 141
    const/16 v2, 0x16

    .line 142
    if-ne v0, v2, :cond_0

    .line 144
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 146
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 150
    move-result v2

    .line 153
    if-eqz v2, :cond_2

    .line 154
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 158
    move-result v4

    .line 161
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->onTaskVanished(I)V

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 166
    move-result v2

    .line 169
    if-eqz v2, :cond_3

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 172
    move-result-object v2

    .line 175
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 176
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 178
    invoke-static {v2, v4}, Lmiui/app/MiuiFreeFormManager;->setFrontFreeFormStackInfo(IZ)V

    .line 180
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 185
    move-result v4

    .line 188
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->removeFreeformParamsForAutoLayout(I)V

    .line 189
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 192
    move-result v2

    .line 195
    if-nez v2, :cond_4

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 198
    move-result v2

    .line 201
    if-eqz v2, :cond_5

    .line 202
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 204
    move-result v2

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 208
    move-result-object v4

    .line 211
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 214
    move-result v7

    .line 217
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 218
    move-result v6

    .line 221
    div-float/2addr v6, v2

    .line 222
    new-instance v7, Lmiuix/animation/base/AnimConfig;

    .line 223
    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 225
    new-instance v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$19;

    .line 228
    invoke-direct {v8, v0, v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$19;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 230
    filled-new-array {v8}, [Lmiuix/animation/listener/TransitionListener;

    .line 233
    move-result-object v0

    .line 236
    invoke-virtual {v7, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 237
    move-result-object v20

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 241
    move-result-object v0

    .line 244
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 245
    move-result-object v0

    .line 248
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 249
    move-result-object v0

    .line 252
    const-string v7, "folmePosX"

    .line 253
    iget v8, v4, Landroid/graphics/Rect;->left:I

    .line 255
    int-to-float v8, v8

    .line 257
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    move-result-object v8

    .line 261
    const-string v9, "folmePosY"

    .line 262
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 264
    int-to-float v10, v10

    .line 266
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 267
    move-result-object v10

    .line 270
    const-string v11, "folmeScaleX"

    .line 271
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    move-result-object v12

    .line 276
    const-string v13, "folmeScaleY"

    .line 277
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    move-result-object v14

    .line 282
    const-string v15, "folmeAlpha"

    .line 283
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 285
    move-result-object v16

    .line 288
    const-string v17, "radius"

    .line 289
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 291
    move-result-object v18

    .line 294
    filled-new-array/range {v7 .. v18}, [Ljava/lang/Object;

    .line 295
    move-result-object v5

    .line 298
    invoke-interface {v0, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 299
    move-result-object v0

    .line 302
    const-string v8, "folmePosX"

    .line 303
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 305
    int-to-double v9, v5

    .line 307
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 308
    move-result v5

    .line 311
    int-to-float v5, v5

    .line 312
    mul-float/2addr v5, v2

    .line 313
    float-to-double v11, v5

    .line 314
    const-wide v13, 0x3fe3333333333333L    # 0.6

    .line 315
    mul-double/2addr v11, v13

    .line 320
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 321
    div-double/2addr v11, v15

    .line 323
    add-double/2addr v11, v9

    .line 324
    double-to-float v5, v11

    .line 325
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    move-result-object v9

    .line 329
    const-string v10, "folmePosY"

    .line 330
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 332
    int-to-double v11, v5

    .line 334
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 335
    move-result v5

    .line 338
    int-to-float v5, v5

    .line 339
    mul-float/2addr v5, v2

    .line 340
    move-object/from16 v21, v4

    .line 341
    float-to-double v3, v5

    .line 343
    mul-double/2addr v3, v13

    .line 344
    div-double/2addr v3, v15

    .line 345
    add-double/2addr v3, v11

    .line 346
    double-to-float v3, v3

    .line 347
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 348
    move-result-object v11

    .line 351
    const-string v12, "folmeScaleX"

    .line 352
    const v3, 0x3ecccccd    # 0.4f

    .line 354
    mul-float/2addr v3, v2

    .line 357
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 358
    move-result-object v13

    .line 361
    const-string v14, "folmeScaleY"

    .line 362
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 364
    move-result-object v15

    .line 367
    const-string v16, "folmeAlpha"

    .line 368
    const/4 v3, 0x0

    .line 370
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 371
    move-result-object v17

    .line 374
    const-string v18, "radius"

    .line 375
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 377
    move-result-object v19

    .line 380
    filled-new-array/range {v8 .. v20}, [Ljava/lang/Object;

    .line 381
    move-result-object v3

    .line 384
    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    .line 388
    const-string v3, " applyFreeformKillAllAnimation: taskBounds:"

    .line 390
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    move-object/from16 v3, v21

    .line 395
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, " scale: "

    .line 400
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 405
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v0

    .line 419
    const-string v1, "MiuiFreeformAnimation"

    .line 420
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_5
    return-void
    .line 425
.end method

.method private applyFreeformOrientationChangedHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 3

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$8;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$8;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 9
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 16
    move-result-object p0

    .line 19
    const/16 v0, 0xa

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 25
    move-result-object v0

    .line 28
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 33
    move-result-object v0

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    move-result-object v1

    .line 42
    const-string v2, "folmeAlpha"

    .line 43
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 49
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    move-result-object v1

    .line 57
    filled-new-array {v2, v1, p0}, [Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    const-string v0, " start anim applyFreeformOrientationChangedHideAnimation: miuiFreeformModeTaskInfo"

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, " fromAlpha: 1.0 toAlpha0.0"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    const-string p1, "MiuiFreeformAnimation"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
    .line 89
.end method

.method private applyFreeformOrientationChangedShowAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 8

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    return p3

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 16
    move-result v4

    .line 19
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 22
    move-result v0

    .line 25
    invoke-static {p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 26
    move-result p2

    .line 29
    div-float/2addr p2, v4

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 31
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 33
    move-result-object v1

    .line 36
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 37
    const/4 v6, 0x0

    .line 39
    invoke-virtual {v0, p4, v1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 44
    move-result-object v1

    .line 47
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 48
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 50
    int-to-float v2, v2

    .line 52
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 53
    int-to-float v5, v5

    .line 55
    invoke-virtual {v0, p4, v1, v2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 60
    move-result-object v1

    .line 63
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 64
    new-instance v2, Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v5

    .line 71
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 72
    move-result v7

    .line 75
    invoke-direct {v2, p3, p3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    invoke-virtual {v0, p4, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 83
    move-result-object v1

    .line 86
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 87
    invoke-virtual {v0, p4, v1, v4, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 93
    move-result-object v1

    .line 96
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 97
    invoke-virtual {v0, p4, v1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 99
    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 103
    move-result-object v1

    .line 106
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 107
    invoke-virtual {v0, p4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 109
    move-result-object p4

    .line 112
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 113
    move-result-object v0

    .line 116
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 117
    const/high16 v7, 0x3f800000    # 1.0f

    .line 119
    invoke-virtual {p4, p5, v0, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 121
    move-result-object p4

    .line 124
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 125
    move-result-object v0

    .line 128
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 129
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 131
    int-to-float v1, v1

    .line 133
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 134
    int-to-float v2, v2

    .line 136
    invoke-virtual {p4, p5, v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 137
    move-result-object p4

    .line 140
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 141
    move-result-object v0

    .line 144
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 149
    move-result v2

    .line 152
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 153
    move-result v5

    .line 156
    invoke-direct {v1, p3, p3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    invoke-virtual {p4, p5, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 160
    move-result-object p3

    .line 163
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 164
    move-result-object p4

    .line 167
    iget-object p4, p4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 168
    invoke-virtual {p3, p5, p4, v4, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 170
    move-result-object p3

    .line 173
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 174
    move-result-object p4

    .line 177
    iget-object p4, p4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 178
    invoke-virtual {p3, p5, p4, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 180
    move-result-object p2

    .line 183
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 184
    move-result-object p3

    .line 187
    iget-object p3, p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 188
    invoke-virtual {p2, p5, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 190
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 193
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 195
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$9;

    .line 198
    move-object v0, p3

    .line 200
    move-object v1, p0

    .line 201
    move-object v2, p1

    .line 202
    move-object v5, p6

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$9;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;FLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 204
    filled-new-array {p3}, [Lmiuix/animation/listener/TransitionListener;

    .line 207
    move-result-object p0

    .line 210
    invoke-virtual {p2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 211
    move-result-object p0

    .line 214
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 215
    move-result-object p2

    .line 218
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 219
    move-result-object p2

    .line 222
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 223
    move-result-object p2

    .line 226
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    move-result-object p3

    .line 230
    const-string p4, "folmeAlpha"

    .line 231
    filled-new-array {p4, p3}, [Ljava/lang/Object;

    .line 233
    move-result-object p3

    .line 236
    invoke-interface {p2, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 237
    move-result-object p2

    .line 240
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 241
    move-result-object p3

    .line 244
    filled-new-array {p4, p3, p0}, [Ljava/lang/Object;

    .line 245
    move-result-object p0

    .line 248
    invoke-interface {p2, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    .line 252
    const-string p2, " start anim applyFreeformOrientationChangedShowAnimation: miuiFreeformModeTaskInfo"

    .line 254
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    const-string p1, " fromAlpha: 0.0 toAlpha1.0"

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 270
    const-string p1, "MiuiFreeformAnimation"

    .line 271
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 p0, 0x1

    .line 276
    return p0
    .line 277
.end method

.method private applyFreeformToMiniAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 8
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [F

    .line 12
    fill-array-data v4, :array_0

    .line 14
    const/4 v5, -0x2

    .line 17
    invoke-virtual {v2, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 18
    move-result-object v2

    .line 21
    new-instance v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$14;

    .line 22
    invoke-direct {v4, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$14;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 24
    sget-object v5, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 27
    new-instance v5, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 29
    const-string v6, "FF_NoUI/MULTI_TASK_TYPE_FREE_FORM"

    .line 31
    invoke-direct {v5, v4, v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 33
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 36
    move-result-object v4

    .line 39
    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 40
    move-result-object v27

    .line 43
    invoke-static {v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 44
    const/16 v2, 0xb

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 52
    move-result-object v4

    .line 55
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 59
    invoke-static {v4}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 60
    move-result-object v4

    .line 63
    const/16 v5, 0x14

    .line 64
    new-array v5, v5, [Ljava/lang/Object;

    .line 66
    const/4 v6, 0x0

    .line 68
    const-string v7, "folmePosX"

    .line 69
    aput-object v7, v5, v6

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v6

    .line 76
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 77
    int-to-float v6, v6

    .line 79
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object v6

    .line 83
    const/4 v7, 0x1

    .line 84
    aput-object v6, v5, v7

    .line 85
    const-string v6, "folmePosY"

    .line 87
    aput-object v6, v5, v3

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 91
    move-result-object v3

    .line 94
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 95
    int-to-float v3, v3

    .line 97
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 98
    move-result-object v3

    .line 101
    const/4 v6, 0x3

    .line 102
    aput-object v3, v5, v6

    .line 103
    const/4 v3, 0x4

    .line 105
    const-string v6, "folmeScaleX"

    .line 106
    aput-object v6, v5, v3

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 110
    move-result v3

    .line 113
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    move-result-object v3

    .line 117
    const/4 v6, 0x5

    .line 118
    aput-object v3, v5, v6

    .line 119
    const/4 v3, 0x6

    .line 121
    const-string v6, "folmeScaleY"

    .line 122
    aput-object v6, v5, v3

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 126
    move-result v3

    .line 129
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    move-result-object v3

    .line 133
    const/4 v6, 0x7

    .line 134
    aput-object v3, v5, v6

    .line 135
    const/16 v3, 0x8

    .line 137
    const-string v6, "radius"

    .line 139
    aput-object v6, v5, v3

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 143
    move-result v3

    .line 146
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 147
    move-result-object v3

    .line 150
    const/16 v6, 0x9

    .line 151
    aput-object v3, v5, v6

    .line 153
    const/16 v3, 0xa

    .line 155
    const-string/jumbo v6, "shadowAlpha"

    .line 157
    aput-object v6, v5, v3

    .line 160
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 162
    move-result-object v3

    .line 165
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v3, v6}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 168
    move-result v3

    .line 171
    if-eqz v3, :cond_0

    .line 172
    const/high16 v3, 0x3ec00000    # 0.375f

    .line 174
    goto :goto_0

    .line 176
    :cond_0
    const v3, 0x3eb33333    # 0.35f

    .line 177
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    move-result-object v3

    .line 183
    aput-object v3, v5, v2

    .line 184
    const/16 v2, 0xc

    .line 186
    const-string/jumbo v3, "shadowRadius"

    .line 188
    aput-object v3, v5, v2

    .line 191
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 193
    const/high16 v3, 0x42f00000    # 120.0f

    .line 195
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 197
    move-result v2

    .line 200
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    move-result-object v2

    .line 204
    const/16 v7, 0xd

    .line 205
    aput-object v2, v5, v7

    .line 207
    const/16 v2, 0xe

    .line 209
    const-string/jumbo v7, "shadowOffsetX"

    .line 211
    aput-object v7, v5, v2

    .line 214
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 216
    const/4 v15, 0x0

    .line 218
    invoke-static {v2, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 219
    move-result v2

    .line 222
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    move-result-object v2

    .line 226
    const/16 v7, 0xf

    .line 227
    aput-object v2, v5, v7

    .line 229
    const/16 v2, 0x10

    .line 231
    const-string/jumbo v7, "shadowOffsetY"

    .line 233
    aput-object v7, v5, v2

    .line 236
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 238
    const/high16 v7, 0x42200000    # 40.0f

    .line 240
    invoke-static {v2, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 242
    move-result v2

    .line 245
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    move-result-object v2

    .line 249
    const/16 v7, 0x11

    .line 250
    aput-object v2, v5, v7

    .line 252
    const/16 v2, 0x12

    .line 254
    const-string/jumbo v7, "shadowDispersion"

    .line 256
    aput-object v7, v5, v2

    .line 259
    const/16 v2, 0x13

    .line 261
    const/high16 v26, 0x3f800000    # 1.0f

    .line 263
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 265
    move-result-object v7

    .line 268
    aput-object v7, v5, v2

    .line 269
    invoke-interface {v4, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 271
    move-result-object v2

    .line 274
    const-string v7, "folmePosX"

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 277
    move-result-object v4

    .line 280
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 281
    int-to-float v4, v4

    .line 283
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 284
    move-result-object v8

    .line 287
    const-string v9, "folmePosY"

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 290
    move-result-object v4

    .line 293
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 294
    int-to-float v4, v4

    .line 296
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 297
    move-result-object v10

    .line 300
    const-string v11, "folmeScaleX"

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 303
    move-result v4

    .line 306
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    move-result-object v12

    .line 310
    const-string v13, "folmeScaleY"

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 313
    move-result v4

    .line 316
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 317
    move-result-object v14

    .line 320
    const-string v4, "radius"

    .line 321
    move v5, v15

    .line 323
    move-object v15, v4

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 325
    move-result v4

    .line 328
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 329
    move-result-object v16

    .line 332
    const-string/jumbo v17, "shadowAlpha"

    .line 333
    const v4, 0x3ed1eb85    # 0.41f

    .line 336
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    move-result-object v18

    .line 342
    const-string/jumbo v19, "shadowRadius"

    .line 343
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 346
    const/high16 v6, 0x43480000    # 200.0f

    .line 348
    invoke-static {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 350
    move-result v4

    .line 353
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 354
    move-result-object v20

    .line 357
    const-string/jumbo v21, "shadowOffsetX"

    .line 358
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 363
    move-result v4

    .line 366
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 367
    move-result-object v22

    .line 370
    const-string/jumbo v23, "shadowOffsetY"

    .line 371
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 374
    invoke-static {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 376
    move-result v3

    .line 379
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 380
    move-result-object v24

    .line 383
    const-string/jumbo v25, "shadowDispersion"

    .line 384
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 387
    move-result-object v26

    .line 390
    filled-new-array/range {v7 .. v27}, [Ljava/lang/Object;

    .line 391
    move-result-object v3

    .line 394
    const-string v4, " start anim freeform to mini: setBounds:  fromPosX: "

    .line 395
    invoke-static {v2, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    move-result-object v2

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 401
    move-result-object v3

    .line 404
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v3, " fromPosY"

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 415
    move-result-object v3

    .line 418
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    const-string v3, " fromScaleX: "

    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 429
    move-result v3

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 433
    const-string v3, " fromScaleY: "

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 441
    move-result v3

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 445
    const-string v3, " fromRadius: "

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 453
    move-result v3

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 457
    const-string v3, " fromShadowAlpha"

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 465
    move-result-object v3

    .line 468
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 469
    invoke-virtual {v3, v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 471
    move-result v0

    .line 474
    if-eqz v0, :cond_1

    .line 475
    const/high16 v6, 0x3ec00000    # 0.375f

    .line 477
    goto :goto_1

    .line 479
    :cond_1
    const v6, 0x3eb33333    # 0.35f

    .line 480
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    const-string v0, " fromShadowRadius120.0 fromShadowOffsetX0.0 fromShadowOffsetY40.0 fromShadowDispersion1.0 toPosX: "

    .line 486
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 491
    move-result-object v0

    .line 494
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 495
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v0, " toPosY: "

    .line 500
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 505
    move-result-object v0

    .line 508
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    const-string v0, " toScaleX: "

    .line 514
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 519
    move-result v0

    .line 522
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 523
    const-string v0, " toScaleY: "

    .line 526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 531
    move-result v0

    .line 534
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 535
    const-string v0, " toRadius: "

    .line 538
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 543
    move-result v0

    .line 546
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 547
    const-string v0, " toShadowAlpha0.41 toShadowRadius200.0 toShadowOffsetX0.0 toShadowOffsetY120.0 toShadowDispersion1.0 miuiFreeformModeTaskInfo: "

    .line 550
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    move-result-object v0

    .line 561
    const-string v1, "MiuiFreeformAnimation"

    .line 562
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 567
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
    .line 568
.end method

.method private applyFullScreentToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "applyFullScreentToFreeformAnimation miuiFreeformModeTaskInfo="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", miuiFreeformModeTaskInfo.getAnimationType="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 21
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    const-string v1, "MiuiFreeformAnimation"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 37
    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    iget v1, v0, Landroid/app/TaskInfo;->taskId:I

    .line 43
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getFreeformLastScale(I)F

    .line 45
    move-result v1

    .line 48
    iget v2, v0, Landroid/app/TaskInfo;->taskId:I

    .line 49
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->getFreeformLastPosition(I)Landroid/graphics/Rect;

    .line 51
    move-result-object v2

    .line 54
    const/high16 v3, 0x3f800000    # 1.0f

    .line 55
    cmpl-float v3, v1, v3

    .line 57
    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 61
    move-result v1

    .line 64
    :cond_0
    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v2

    .line 76
    :cond_2
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 77
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 82
    move-result-object v4

    .line 85
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 88
    move-result v5

    .line 91
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 92
    move-result v6

    .line 95
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 96
    invoke-virtual {v3, v4, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 99
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 102
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 104
    iget-object v4, v0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 107
    invoke-virtual {v1, v4, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 109
    iget-object v2, v0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 112
    const/4 v4, 0x5

    .line 114
    invoke-virtual {v1, v2, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 115
    iget-object v2, v0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 118
    const/4 v4, 0x1

    .line 120
    invoke-virtual {v1, v2, v4}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 121
    iget-object v0, v0, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 124
    invoke-virtual {v1, v0, v3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 129
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 131
    const/16 v3, 0x453

    .line 133
    invoke-virtual {v2, v3, v1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 135
    move-result-object v1

    .line 138
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 139
    invoke-direct {v2, v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 147
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    invoke-static {p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 153
    move-result-object p1

    .line 156
    const-string/jumbo v0, "\u5168\u5c4f\u8fdb\u5165\u5c0f\u7a97"

    .line 157
    iput-object v0, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 160
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 162
    iput-object p0, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 164
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 166
    move-result-object p0

    .line 169
    invoke-virtual {p0, p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFullscreenQuitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 170
    :cond_3
    return-void
    .line 173
.end method

.method private applyMiniFreeformTapAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 6
    const/4 v3, 0x1

    .line 8
    invoke-interface {v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getCaptionHeight(Z)I

    .line 9
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    const/high16 v4, 0x40000000    # 2.0f

    .line 14
    div-float/2addr v2, v4

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 17
    move-result v4

    .line 20
    mul-float/2addr v4, v2

    .line 21
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v2

    .line 27
    const v5, 0x7f0702db    # @dimen/dotRadius '2.0dp'

    .line 28
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    add-float/2addr v4, v2

    .line 36
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 37
    const/high16 v5, 0x40800000    # 4.0f

    .line 39
    invoke-static {v2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 41
    move-result v2

    .line 44
    add-float/2addr v2, v4

    .line 45
    float-to-int v2, v2

    .line 46
    new-instance v4, Landroid/graphics/Rect;

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 49
    move-result-object v5

    .line 52
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 56
    move-result-object v5

    .line 59
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 62
    move-result-object v6

    .line 65
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 66
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 68
    const/16 v5, 0xa

    .line 71
    invoke-static {v5}, Lmiui/app/MiuiFreeFormManager;->hasTipViewType(I)Z

    .line 73
    move-result v5

    .line 76
    const/4 v6, 0x2

    .line 77
    const/4 v7, 0x0

    .line 78
    if-nez v5, :cond_0

    .line 79
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 81
    int-to-float v5, v5

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 84
    move-result v8

    .line 87
    div-int/2addr v8, v6

    .line 88
    int-to-float v8, v8

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 90
    move-result v9

    .line 93
    mul-float/2addr v9, v8

    .line 94
    add-float/2addr v9, v5

    .line 95
    float-to-int v5, v9

    .line 96
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 97
    add-int/2addr v4, v2

    .line 99
    invoke-static {v7, v5, v4, v7}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 100
    :cond_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 103
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 105
    new-instance v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 108
    invoke-direct {v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 113
    move-result v5

    .line 116
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 117
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 120
    invoke-virtual {v4, v7}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 123
    move-result-object v5

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 127
    move-result v8

    .line 130
    invoke-virtual {v5, v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 131
    move-result-object v5

    .line 134
    const/16 v8, 0x10

    .line 135
    invoke-virtual {v5, v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 140
    move-result-object v5

    .line 143
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 146
    invoke-virtual {v2, v5, v4}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 148
    new-instance v4, Landroid/graphics/Rect;

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 153
    move-result-object v5

    .line 156
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 160
    move-result-object v5

    .line 163
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 166
    move-result-object v8

    .line 169
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 170
    invoke-virtual {v4, v5, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 172
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 175
    move-result v5

    .line 178
    if-eqz v5, :cond_1

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 181
    move-result-object v5

    .line 184
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 189
    move-result-object v10

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 193
    move-result v11

    .line 196
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 197
    const/4 v12, 0x0

    .line 199
    const/4 v13, 0x0

    .line 200
    move v9, v5

    .line 201
    invoke-virtual/range {v8 .. v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayout(ILandroid/graphics/Rect;FZZ)Z

    .line 202
    move-result v8

    .line 205
    if-eqz v8, :cond_1

    .line 206
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 208
    invoke-virtual {v8, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 210
    move-result-object v5

    .line 213
    if-eqz v5, :cond_1

    .line 214
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 216
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 219
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 221
    invoke-virtual {v4, v8, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 223
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 229
    move-result-object v5

    .line 232
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 233
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 235
    invoke-virtual {v2, v5, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 240
    move-result-object v4

    .line 243
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 244
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 246
    invoke-virtual {v2, v4, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 248
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 251
    invoke-virtual {v4, v2}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 253
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 256
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 258
    new-array v4, v6, [F

    .line 261
    fill-array-data v4, :array_0

    .line 263
    const/4 v5, -0x2

    .line 266
    invoke-virtual {v2, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 267
    move-result-object v2

    .line 270
    new-instance v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$10;

    .line 271
    invoke-direct {v4, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$10;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 273
    sget-object v5, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 276
    new-instance v5, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 278
    const-string v8, "FF_NoUI/MULTI_TASK_TYPE_FREE_FORM"

    .line 280
    invoke-direct {v5, v4, v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 282
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 285
    move-result-object v4

    .line 288
    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 289
    move-result-object v2

    .line 292
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 293
    const/4 v4, 0x4

    .line 296
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 300
    move-result-object v5

    .line 303
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 304
    move-result-object v5

    .line 307
    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 308
    move-result-object v5

    .line 311
    const-string v8, "folmePosX"

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 314
    move-result-object v9

    .line 317
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 318
    int-to-float v9, v9

    .line 320
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    move-result-object v9

    .line 324
    const-string v10, "folmePosY"

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 327
    move-result-object v11

    .line 330
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 331
    int-to-float v11, v11

    .line 333
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 334
    move-result-object v11

    .line 337
    const-string v12, "folmeScaleX"

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 340
    move-result v13

    .line 343
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    move-result-object v13

    .line 347
    const-string v14, "folmeScaleY"

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 350
    move-result v15

    .line 353
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 354
    move-result-object v15

    .line 357
    const-string v16, "folmeStrokeThickness"

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 360
    move-result v17

    .line 363
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 364
    move-result-object v17

    .line 367
    const-string v18, "radius"

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 370
    move-result v19

    .line 373
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 374
    move-result-object v19

    .line 377
    const-string/jumbo v20, "shadowAlpha"

    .line 378
    const v21, 0x3ed1eb85    # 0.41f

    .line 381
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    move-result-object v21

    .line 387
    const-string/jumbo v22, "shadowRadius"

    .line 388
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 391
    const/high16 v6, 0x43480000    # 200.0f

    .line 393
    invoke-static {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 395
    move-result v4

    .line 398
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 399
    move-result-object v23

    .line 402
    const-string/jumbo v24, "shadowOffsetX"

    .line 403
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 406
    const/4 v6, 0x0

    .line 408
    invoke-static {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 409
    move-result v4

    .line 412
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 413
    move-result-object v25

    .line 416
    const-string/jumbo v26, "shadowOffsetY"

    .line 417
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 420
    const/high16 v6, 0x42f00000    # 120.0f

    .line 422
    invoke-static {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 424
    move-result v4

    .line 427
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 428
    move-result-object v27

    .line 431
    const-string/jumbo v28, "shadowDispersion"

    .line 432
    const/high16 v4, 0x3f800000    # 1.0f

    .line 435
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 437
    move-result-object v29

    .line 440
    filled-new-array/range {v8 .. v29}, [Ljava/lang/Object;

    .line 441
    move-result-object v8

    .line 444
    invoke-interface {v5, v8}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 445
    move-result-object v5

    .line 448
    const/16 v8, 0x17

    .line 449
    new-array v8, v8, [Ljava/lang/Object;

    .line 451
    const-string v9, "folmePosX"

    .line 453
    aput-object v9, v8, v7

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 457
    move-result-object v7

    .line 460
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 461
    int-to-float v7, v7

    .line 463
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    move-result-object v7

    .line 467
    aput-object v7, v8, v3

    .line 468
    const-string v3, "folmePosY"

    .line 470
    const/4 v7, 0x2

    .line 472
    aput-object v3, v8, v7

    .line 473
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 475
    move-result-object v3

    .line 478
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 479
    int-to-float v3, v3

    .line 481
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 482
    move-result-object v3

    .line 485
    const/4 v7, 0x3

    .line 486
    aput-object v3, v8, v7

    .line 487
    const-string v3, "folmeScaleX"

    .line 489
    const/4 v7, 0x4

    .line 491
    aput-object v3, v8, v7

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 494
    move-result v3

    .line 497
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 498
    move-result-object v3

    .line 501
    const/4 v7, 0x5

    .line 502
    aput-object v3, v8, v7

    .line 503
    const/4 v3, 0x6

    .line 505
    const-string v7, "folmeScaleY"

    .line 506
    aput-object v7, v8, v3

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 510
    move-result v3

    .line 513
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 514
    move-result-object v3

    .line 517
    const/4 v7, 0x7

    .line 518
    aput-object v3, v8, v7

    .line 519
    const/16 v3, 0x8

    .line 521
    const-string v7, "folmeStrokeThickness"

    .line 523
    aput-object v7, v8, v3

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 527
    move-result v3

    .line 530
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 531
    move-result-object v3

    .line 534
    const/16 v7, 0x9

    .line 535
    aput-object v3, v8, v7

    .line 537
    const-string v3, "radius"

    .line 539
    const/16 v7, 0xa

    .line 541
    aput-object v3, v8, v7

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 545
    move-result v3

    .line 548
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 549
    move-result-object v3

    .line 552
    const/16 v7, 0xb

    .line 553
    aput-object v3, v8, v7

    .line 555
    const/16 v3, 0xc

    .line 557
    const-string/jumbo v7, "shadowAlpha"

    .line 559
    aput-object v7, v8, v3

    .line 562
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 564
    move-result-object v3

    .line 567
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 568
    invoke-virtual {v3, v7}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 570
    move-result v3

    .line 573
    const/high16 v7, 0x3ec00000    # 0.375f

    .line 574
    const v9, 0x3eb33333    # 0.35f

    .line 576
    if-eqz v3, :cond_2

    .line 579
    move v3, v7

    .line 581
    goto :goto_0

    .line 582
    :cond_2
    move v3, v9

    .line 583
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 584
    move-result-object v3

    .line 587
    const/16 v10, 0xd

    .line 588
    aput-object v3, v8, v10

    .line 590
    const/16 v3, 0xe

    .line 592
    const-string/jumbo v10, "shadowRadius"

    .line 594
    aput-object v10, v8, v3

    .line 597
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 599
    invoke-static {v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 601
    move-result v3

    .line 604
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 605
    move-result-object v3

    .line 608
    const/16 v6, 0xf

    .line 609
    aput-object v3, v8, v6

    .line 611
    const-string/jumbo v3, "shadowOffsetX"

    .line 613
    const/16 v6, 0x10

    .line 616
    aput-object v3, v8, v6

    .line 618
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 620
    const/4 v6, 0x0

    .line 622
    invoke-static {v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 623
    move-result v3

    .line 626
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 627
    move-result-object v3

    .line 630
    const/16 v6, 0x11

    .line 631
    aput-object v3, v8, v6

    .line 633
    const/16 v3, 0x12

    .line 635
    const-string/jumbo v6, "shadowOffsetY"

    .line 637
    aput-object v6, v8, v3

    .line 640
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 642
    const/high16 v6, 0x42200000    # 40.0f

    .line 644
    invoke-static {v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 646
    move-result v3

    .line 649
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 650
    move-result-object v3

    .line 653
    const/16 v6, 0x13

    .line 654
    aput-object v3, v8, v6

    .line 656
    const/16 v3, 0x14

    .line 658
    const-string/jumbo v6, "shadowDispersion"

    .line 660
    aput-object v6, v8, v3

    .line 663
    const/16 v3, 0x15

    .line 665
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 667
    move-result-object v4

    .line 670
    aput-object v4, v8, v3

    .line 671
    const/16 v3, 0x16

    .line 673
    aput-object v2, v8, v3

    .line 675
    const-string v2, " start anim applyMiniFreeformTapAnimation  fromPosX: "

    .line 677
    invoke-static {v5, v8, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    move-result-object v2

    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 683
    move-result-object v3

    .line 686
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 687
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    const-string v3, " fromPosY"

    .line 692
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 697
    move-result-object v3

    .line 700
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    const-string v3, " fromScaleX: "

    .line 706
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 711
    move-result v3

    .line 714
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 715
    const-string v3, " fromScaleY: "

    .line 718
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 723
    move-result v3

    .line 726
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 727
    const-string v3, " fromStrokeThickness: "

    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 735
    move-result v3

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 739
    const-string v3, " fromRadius: "

    .line 742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 747
    move-result v3

    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 751
    const-string v3, " fromShadowAlpha0.41 fromShadowRadius200.0 fromShadowOffsetX0.0 fromShadowOffsetY120.0 fromShadowDispersion1.0 toPosX: "

    .line 754
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 759
    move-result-object v3

    .line 762
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 763
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const-string v3, " toPosY: "

    .line 768
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 773
    move-result-object v3

    .line 776
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    const-string v3, " toScaleX: "

    .line 782
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 787
    move-result v3

    .line 790
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 791
    const-string v3, " toScaleY: "

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 799
    move-result v3

    .line 802
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 803
    const-string v3, " toStrokeThickness: "

    .line 806
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 811
    move-result v3

    .line 814
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 815
    const-string v3, " toRadius: "

    .line 818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 823
    move-result v3

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 827
    const-string v3, " toShadowAlpha"

    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 835
    move-result-object v3

    .line 838
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 839
    invoke-virtual {v3, v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 841
    move-result v0

    .line 844
    if-eqz v0, :cond_3

    .line 845
    goto :goto_1

    .line 847
    :cond_3
    move v7, v9

    .line 848
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 849
    const-string v0, " toShadowRadius120.0 toShadowOffsetX0.0 toShadowOffsetY40.0 toShadowDispersion1.0 miuiFreeformModeTaskInfo: "

    .line 852
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    move-result-object v0

    .line 863
    const-string v1, "MiuiFreeformAnimation"

    .line 864
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 869
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
    .line 870
.end method

.method private applyMiuiFreeformAvoidAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInDragTaskResizeAnim()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 17
    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformAvoidStart(I)V

    .line 25
    :cond_1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 30
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$13;

    .line 33
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$13;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 35
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 42
    move-result-object p0

    .line 45
    const/16 v0, 0xc

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 48
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 51
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 63
    move-result-object v1

    .line 66
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 67
    int-to-float v1, v1

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 74
    move-result-object v2

    .line 77
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 78
    int-to-float v2, v2

    .line 80
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    move-result-object v2

    .line 84
    const-string v3, "folmePosX"

    .line 85
    const-string v4, "folmePosY"

    .line 87
    filled-new-array {v3, v1, v4, v2}, [Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 97
    move-result-object v1

    .line 100
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 101
    int-to-float v1, v1

    .line 103
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 108
    move-result-object v2

    .line 111
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 112
    int-to-float v2, v2

    .line 114
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    move-result-object v2

    .line 118
    filled-new-array {v3, v1, v4, v2, p0}, [Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 122
    const-string v1, " start applyMiuiFreeformAvoidAnimation:  fromPosX: "

    .line 123
    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object p0

    .line 128
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 129
    move-result-object v0

    .line 132
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, " fromPosY: "

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 143
    move-result-object v0

    .line 146
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v0, " toPosX: "

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 157
    move-result-object v0

    .line 160
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v0, " toPosY: "

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 171
    move-result-object v0

    .line 174
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, " miuiFreeformModeTaskInfo: "

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p0

    .line 191
    const-string p1, "MiuiFreeformAnimation"

    .line 192
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
    .line 197
.end method

.method private applyPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 43

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v6, p5

    .line 6
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 8
    move-object/from16 v1, p2

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    const/4 v9, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    return v9

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    .line 20
    move-result v0

    .line 23
    const/4 v10, 0x7

    .line 24
    const/4 v11, 0x6

    .line 25
    if-eqz v0, :cond_1

    .line 26
    move v12, v10

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v12, v11

    .line 30
    :goto_0
    invoke-virtual {v8, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 31
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 34
    invoke-virtual {v0, v8, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->setPinFloatingWindowAnimationInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 36
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 41
    move-result v1

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 45
    move-result v2

    .line 48
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->drawIcon(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 52
    move-result-object v13

    .line 55
    new-instance v14, Landroid/view/SurfaceControl$Transaction;

    .line 56
    invoke-direct {v14}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 61
    move-result-object v0

    .line 64
    iget-object v15, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 65
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {v0, v6, v15, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 77
    move-result v1

    .line 80
    invoke-virtual {v0, v6, v15, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 81
    move-result-object v0

    .line 84
    const v3, 0x3ecccccd    # 0.4f

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 88
    move-result v4

    .line 91
    iget-object v5, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 92
    move-object/from16 v1, p5

    .line 94
    move-object v2, v15

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setShadowAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FZLandroid/content/Context;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {v0, v6, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 101
    move-object/from16 v0, p7

    .line 104
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 106
    new-instance v6, Lmiuix/animation/base/AnimConfig;

    .line 108
    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 110
    new-instance v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$22;

    .line 113
    move-object v0, v5

    .line 115
    move-object/from16 v1, p0

    .line 116
    move-object/from16 v2, p1

    .line 118
    move-object v3, v13

    .line 120
    move-object v4, v14

    .line 121
    move-object v14, v5

    .line 122
    move-object v5, v15

    .line 123
    move-object v15, v6

    .line 124
    move v6, v12

    .line 125
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$22;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 126
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 129
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 131
    const-string v1, "FF_UI/FREEFORM_ACTION_CLOSE"

    .line 133
    invoke-direct {v0, v14, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 135
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 138
    move-result-object v0

    .line 141
    invoke-virtual {v15, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 142
    move-result-object v0

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    .line 146
    move-result v2

    .line 149
    const/4 v3, 0x2

    .line 150
    new-array v4, v3, [F

    .line 151
    fill-array-data v4, :array_0

    .line 153
    const/4 v5, -0x2

    .line 156
    invoke-virtual {v0, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 157
    move-result-object v4

    .line 160
    new-array v5, v3, [F

    .line 161
    fill-array-data v5, :array_1

    .line 163
    const-string v6, "alpha"

    .line 166
    const-wide/16 v14, -0x2

    .line 168
    invoke-virtual {v4, v6, v14, v15, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    .line 170
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v8, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 176
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 179
    move-result-object v1

    .line 182
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 183
    move-result-object v1

    .line 186
    const/16 v4, 0x1a

    .line 187
    new-array v4, v4, [Ljava/lang/Object;

    .line 189
    const-string v5, "folmeAlpha"

    .line 191
    aput-object v5, v4, v9

    .line 193
    const/high16 v5, 0x3f800000    # 1.0f

    .line 195
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 197
    move-result-object v6

    .line 200
    const/4 v9, 0x1

    .line 201
    aput-object v6, v4, v9

    .line 202
    const-string v6, "radius"

    .line 204
    aput-object v6, v4, v3

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 208
    move-result v3

    .line 211
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    move-result-object v3

    .line 215
    const/4 v6, 0x3

    .line 216
    aput-object v3, v4, v6

    .line 217
    const/4 v3, 0x4

    .line 219
    const-string v12, "clipXWidth"

    .line 220
    aput-object v12, v4, v3

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 224
    move-result-object v3

    .line 227
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 228
    move-result v3

    .line 231
    int-to-float v3, v3

    .line 232
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    move-result-object v3

    .line 236
    const/4 v12, 0x5

    .line 237
    aput-object v3, v4, v12

    .line 238
    const-string v3, "clipYHeight"

    .line 240
    aput-object v3, v4, v11

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 244
    move-result-object v3

    .line 247
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 248
    move-result v3

    .line 251
    int-to-float v3, v3

    .line 252
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 253
    move-result-object v3

    .line 256
    aput-object v3, v4, v10

    .line 257
    const/16 v3, 0x8

    .line 259
    const-string/jumbo v10, "shadowAlpha"

    .line 261
    aput-object v10, v4, v3

    .line 264
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 266
    move-result v3

    .line 269
    if-eqz v3, :cond_4

    .line 270
    if-eqz v2, :cond_2

    .line 272
    const v3, 0x3ed1eb85    # 0.41f

    .line 274
    goto :goto_1

    .line 277
    :cond_2
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 278
    move-result-object v3

    .line 281
    iget-object v6, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v3, v6}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 284
    move-result v3

    .line 287
    if-eqz v3, :cond_3

    .line 288
    const/high16 v3, 0x3ec00000    # 0.375f

    .line 290
    goto :goto_1

    .line 292
    :cond_3
    const v3, 0x3eb33333    # 0.35f

    .line 293
    goto :goto_1

    .line 296
    :cond_4
    sget-object v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 297
    aget v3, v3, v6

    .line 299
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 301
    move-result-object v3

    .line 304
    const/16 v6, 0x9

    .line 305
    aput-object v3, v4, v6

    .line 307
    const/16 v3, 0xa

    .line 309
    const-string/jumbo v6, "shadowRadius"

    .line 311
    aput-object v6, v4, v3

    .line 314
    iget-object v3, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 316
    const/high16 v6, 0x42f00000    # 120.0f

    .line 318
    if-eqz v2, :cond_5

    .line 320
    const/high16 v10, 0x43480000    # 200.0f

    .line 322
    goto :goto_2

    .line 324
    :cond_5
    move v10, v6

    .line 325
    :goto_2
    invoke-static {v3, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 326
    move-result v3

    .line 329
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 330
    move-result-object v3

    .line 333
    const/16 v10, 0xb

    .line 334
    aput-object v3, v4, v10

    .line 336
    const/16 v3, 0xc

    .line 338
    const-string/jumbo v10, "shadowOffsetX"

    .line 340
    aput-object v10, v4, v3

    .line 343
    iget-object v3, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 345
    const/4 v10, 0x0

    .line 347
    invoke-static {v3, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 348
    move-result v3

    .line 351
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 352
    move-result-object v3

    .line 355
    const/16 v11, 0xd

    .line 356
    aput-object v3, v4, v11

    .line 358
    const/16 v3, 0xe

    .line 360
    const-string/jumbo v11, "shadowOffsetY"

    .line 362
    aput-object v11, v4, v3

    .line 365
    iget-object v3, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 367
    if-eqz v2, :cond_6

    .line 369
    goto :goto_3

    .line 371
    :cond_6
    const/high16 v6, 0x42200000    # 40.0f

    .line 372
    :goto_3
    invoke-static {v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 374
    move-result v2

    .line 377
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 378
    move-result-object v2

    .line 381
    const/16 v3, 0xf

    .line 382
    aput-object v2, v4, v3

    .line 384
    const/16 v2, 0x10

    .line 386
    const-string/jumbo v3, "shadowDispersion"

    .line 388
    aput-object v3, v4, v2

    .line 391
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 393
    move-result-object v2

    .line 396
    const/16 v3, 0x11

    .line 397
    aput-object v2, v4, v3

    .line 399
    const/16 v2, 0x12

    .line 401
    const-string v3, "folmeScaleX"

    .line 403
    aput-object v3, v4, v2

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 407
    move-result v2

    .line 410
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 411
    move-result-object v2

    .line 414
    const/16 v3, 0x13

    .line 415
    aput-object v2, v4, v3

    .line 417
    const/16 v2, 0x14

    .line 419
    const-string v3, "folmeScaleY"

    .line 421
    aput-object v3, v4, v2

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 425
    move-result v2

    .line 428
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 429
    move-result-object v2

    .line 432
    const/16 v3, 0x15

    .line 433
    aput-object v2, v4, v3

    .line 435
    const/16 v2, 0x16

    .line 437
    const-string v3, "folmePosX"

    .line 439
    aput-object v3, v4, v2

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 443
    move-result-object v2

    .line 446
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 447
    int-to-float v2, v2

    .line 449
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 450
    move-result-object v2

    .line 453
    const/16 v3, 0x17

    .line 454
    aput-object v2, v4, v3

    .line 456
    const/16 v2, 0x18

    .line 458
    const-string v3, "folmePosY"

    .line 460
    aput-object v3, v4, v2

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 464
    move-result-object v2

    .line 467
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 468
    int-to-float v2, v2

    .line 470
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 471
    move-result-object v2

    .line 474
    const/16 v3, 0x19

    .line 475
    aput-object v2, v4, v3

    .line 477
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 479
    move-result-object v1

    .line 482
    const-string v16, "folmeAlpha"

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 485
    move-result v2

    .line 488
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 489
    move-result-object v17

    .line 492
    const-string v18, "radius"

    .line 493
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 495
    move-result v2

    .line 498
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 499
    move-result-object v19

    .line 502
    const-string v20, "clipXWidth"

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 505
    move-result-object v2

    .line 508
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 509
    move-result v2

    .line 512
    int-to-float v2, v2

    .line 513
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 514
    move-result-object v21

    .line 517
    const-string v22, "clipYHeight"

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 520
    move-result-object v2

    .line 523
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 524
    move-result v2

    .line 527
    int-to-float v2, v2

    .line 528
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 529
    move-result-object v23

    .line 532
    const-string/jumbo v24, "shadowAlpha"

    .line 533
    const v2, 0x3ecccccd    # 0.4f

    .line 536
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 539
    move-result-object v25

    .line 542
    const-string/jumbo v26, "shadowRadius"

    .line 543
    iget-object v2, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 546
    const/high16 v3, 0x41a00000    # 20.0f

    .line 548
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 550
    move-result v2

    .line 553
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 554
    move-result-object v27

    .line 557
    const-string/jumbo v28, "shadowOffsetX"

    .line 558
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 561
    move-result-object v29

    .line 564
    const-string/jumbo v30, "shadowOffsetY"

    .line 565
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 568
    move-result-object v31

    .line 571
    const-string/jumbo v32, "shadowDispersion"

    .line 572
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 575
    move-result-object v33

    .line 578
    const-string v34, "folmeScaleX"

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 581
    move-result v2

    .line 584
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 585
    move-result-object v35

    .line 588
    const-string v36, "folmeScaleY"

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 591
    move-result v2

    .line 594
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 595
    move-result-object v37

    .line 598
    const-string v38, "folmePosX"

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 601
    move-result-object v2

    .line 604
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 605
    int-to-float v2, v2

    .line 607
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 608
    move-result-object v39

    .line 611
    const-string v40, "folmePosY"

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 614
    move-result-object v2

    .line 617
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 618
    int-to-float v2, v2

    .line 620
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 621
    move-result-object v41

    .line 624
    move-object/from16 v42, v0

    .line 625
    filled-new-array/range {v16 .. v42}, [Ljava/lang/Object;

    .line 627
    move-result-object v0

    .line 630
    const-string v2, "applyPinAnimation  from poxX: "

    .line 631
    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    move-result-object v0

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 637
    move-result-object v1

    .line 640
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 641
    int-to-float v1, v1

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, " from posY: "

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 652
    move-result-object v1

    .line 655
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 656
    int-to-float v1, v1

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 659
    const-string v1, " from scaleX: "

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 667
    move-result v1

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, " from scaleY: "

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 679
    move-result v1

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, " from clipXWidth: "

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 691
    move-result-object v1

    .line 694
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 695
    move-result v1

    .line 698
    int-to-float v1, v1

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, " from clipYHeight: "

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 708
    move-result-object v1

    .line 711
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 712
    move-result v1

    .line 715
    int-to-float v1, v1

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, " To posX: "

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 725
    move-result-object v1

    .line 728
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 729
    int-to-float v1, v1

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, " To posY: "

    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 740
    move-result-object v1

    .line 743
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 744
    int-to-float v1, v1

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 747
    const-string v1, " To scaleX: "

    .line 750
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 755
    move-result v1

    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 759
    const-string v1, " To scaleY: "

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 767
    move-result v1

    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 771
    const-string v1, " To clipXWidth: "

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 779
    move-result-object v1

    .line 782
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 783
    move-result v1

    .line 786
    int-to-float v1, v1

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 788
    const-string v1, " To clipYHeight: "

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 796
    move-result-object v1

    .line 799
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 800
    move-result v1

    .line 803
    int-to-float v1, v1

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 805
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    move-result-object v0

    .line 819
    const-string v1, "MiuiFreeformAnimation"

    .line 820
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return v9

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method private applyResizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 8
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$11;

    .line 11
    invoke-direct {v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$11;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 13
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 16
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object v14

    .line 23
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 24
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 26
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;

    .line 29
    invoke-direct {v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 31
    sget-object v4, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 34
    new-instance v4, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 36
    const-string v5, "FF_NoUI/MULTI_TASK_TYPE_FREE_FORM"

    .line 38
    invoke-direct {v4, v3, v5}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 40
    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 47
    move-result-object v25

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 51
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    const/4 v0, 0x3

    .line 57
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 61
    move-result-object v0

    .line 64
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 69
    move-result-object v0

    .line 72
    const-string v2, "folmePosX"

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 75
    move-result-object v3

    .line 78
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 79
    int-to-float v3, v3

    .line 81
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    move-result-object v3

    .line 85
    const-string v4, "folmePosY"

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v5

    .line 91
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 92
    int-to-float v5, v5

    .line 94
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    move-result-object v5

    .line 98
    const-string v6, "folmeScaleX"

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 101
    move-result v7

    .line 104
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    move-result-object v7

    .line 108
    const-string v8, "folmeScaleY"

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 111
    move-result v9

    .line 114
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    move-result-object v9

    .line 118
    const-string v10, "radius"

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 121
    move-result v1

    .line 124
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 125
    move-result-object v11

    .line 128
    move-object v1, v2

    .line 129
    move-object v2, v3

    .line 130
    move-object v3, v4

    .line 131
    move-object v4, v5

    .line 132
    move-object v5, v6

    .line 133
    move-object v6, v7

    .line 134
    move-object v7, v8

    .line 135
    move-object v8, v9

    .line 136
    move-object v9, v10

    .line 137
    move-object v10, v11

    .line 138
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 143
    goto/16 :goto_0

    .line 146
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 148
    move-result v2

    .line 151
    const/4 v3, 0x2

    .line 152
    if-ne v2, v3, :cond_1

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 155
    move-result-object v0

    .line 158
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 159
    move-result-object v0

    .line 162
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 163
    move-result-object v0

    .line 166
    const-string v4, "folmePosX"

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 169
    move-result-object v2

    .line 172
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 173
    int-to-float v2, v2

    .line 175
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 176
    move-result-object v5

    .line 179
    const-string v6, "folmePosY"

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 182
    move-result-object v2

    .line 185
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 186
    int-to-float v2, v2

    .line 188
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    move-result-object v7

    .line 192
    const-string v8, "folmeScaleX"

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 195
    move-result v2

    .line 198
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 199
    move-result-object v9

    .line 202
    const-string v10, "folmeScaleY"

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 205
    move-result v2

    .line 208
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 209
    move-result-object v11

    .line 212
    const-string v12, "radius"

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 215
    move-result v1

    .line 218
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 219
    move-result-object v13

    .line 222
    filled-new-array/range {v4 .. v14}, [Ljava/lang/Object;

    .line 223
    move-result-object v1

    .line 226
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 227
    goto/16 :goto_0

    .line 230
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 232
    move-result v2

    .line 235
    const/4 v3, 0x1

    .line 236
    if-ne v2, v3, :cond_2

    .line 237
    invoke-static {v5}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 242
    move-result-object v2

    .line 245
    invoke-static/range {p1 .. p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 246
    move-result-object v3

    .line 249
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 250
    iput-object v0, v3, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 252
    invoke-virtual {v2, v3}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormResizeEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 257
    move-result-object v0

    .line 260
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 261
    move-result-object v0

    .line 264
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 265
    move-result-object v0

    .line 268
    const-string v15, "folmePosX"

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 271
    move-result-object v2

    .line 274
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 275
    int-to-float v2, v2

    .line 277
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 278
    move-result-object v16

    .line 281
    const-string v17, "folmePosY"

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 284
    move-result-object v2

    .line 287
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 288
    int-to-float v2, v2

    .line 290
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 291
    move-result-object v18

    .line 294
    const-string v19, "folmeScaleX"

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 297
    move-result v2

    .line 300
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 301
    move-result-object v20

    .line 304
    const-string v21, "folmeScaleY"

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 307
    move-result v2

    .line 310
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 311
    move-result-object v22

    .line 314
    const-string v23, "radius"

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 317
    move-result v2

    .line 320
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    move-result-object v24

    .line 324
    filled-new-array/range {v15 .. v25}, [Ljava/lang/Object;

    .line 325
    move-result-object v2

    .line 328
    const-string v3, " start anim applyResizeAnimation up fromPosX: "

    .line 329
    invoke-static {v0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    move-result-object v0

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 335
    move-result-object v2

    .line 338
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, " fromPosY"

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 349
    move-result-object v2

    .line 352
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string v2, " fromScaleX: "

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 363
    move-result v2

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 367
    const-string v2, " fromScaleY: "

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 375
    move-result v2

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 379
    const-string v2, " fromRadius: "

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 387
    move-result v2

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 391
    const-string v2, " toPosX: "

    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 399
    move-result-object v2

    .line 402
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    const-string v2, " toPosY: "

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 413
    move-result-object v2

    .line 416
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, " toScaleX: "

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 427
    move-result v2

    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 431
    const-string v2, " toScaleY: "

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 439
    move-result v2

    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, " toRadius: "

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 451
    move-result v2

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 455
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 458
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    move-result-object v0

    .line 469
    const-string v1, "MiuiFreeformAnimation"

    .line 470
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_2
    :goto_0
    return-void
    .line 475
.end method

.method private applyTranslateAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 8
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$15;

    .line 11
    invoke-direct {v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$15;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 13
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 16
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object v12

    .line 23
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 24
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 26
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;

    .line 29
    invoke-direct {v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 31
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 38
    move-result-object v21

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 42
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 52
    move-result-object v0

    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 60
    move-result-object v0

    .line 63
    const-string v2, "folmePosX"

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 66
    move-result-object v3

    .line 69
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 70
    int-to-float v3, v3

    .line 72
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    move-result-object v3

    .line 76
    const-string v4, "folmePosY"

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v5

    .line 82
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 83
    int-to-float v5, v5

    .line 85
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    move-result-object v5

    .line 89
    const-string v6, "folmeScaleX"

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 92
    move-result v7

    .line 95
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object v7

    .line 99
    const-string v8, "folmeScaleY"

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 102
    move-result v1

    .line 105
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object v9

    .line 109
    move-object v1, v2

    .line 110
    move-object v2, v3

    .line 111
    move-object v3, v4

    .line 112
    move-object v4, v5

    .line 113
    move-object v5, v6

    .line 114
    move-object v6, v7

    .line 115
    move-object v7, v8

    .line 116
    move-object v8, v9

    .line 117
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 122
    goto/16 :goto_1

    .line 125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 127
    move-result v2

    .line 130
    const/4 v4, 0x2

    .line 131
    if-ne v2, v4, :cond_1

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 134
    move-result-object v0

    .line 137
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 142
    move-result-object v0

    .line 145
    const-string v4, "folmePosX"

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 148
    move-result-object v2

    .line 151
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 152
    int-to-float v2, v2

    .line 154
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    move-result-object v5

    .line 158
    const-string v6, "folmePosY"

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 161
    move-result-object v2

    .line 164
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 165
    int-to-float v2, v2

    .line 167
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 168
    move-result-object v7

    .line 171
    const-string v8, "folmeScaleX"

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 174
    move-result v2

    .line 177
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 178
    move-result-object v9

    .line 181
    const-string v10, "folmeScaleY"

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 184
    move-result v1

    .line 187
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 188
    move-result-object v11

    .line 191
    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 195
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 196
    goto/16 :goto_1

    .line 199
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 201
    move-result v2

    .line 204
    if-ne v2, v3, :cond_3

    .line 205
    invoke-static/range {p1 .. p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 207
    move-result-object v2

    .line 210
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 211
    iput-object v0, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 215
    move-result v0

    .line 218
    const-string v3, "app_display_name"

    .line 219
    const-string v4, "app_package_name"

    .line 221
    const-string v5, "move"

    .line 223
    const-string v6, "EVENT_NAME"

    .line 225
    const-string/jumbo v7, "tip"

    .line 227
    if-eqz v0, :cond_2

    .line 230
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 232
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    .line 239
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 241
    const-string v9, "621.2.0.1.14008"

    .line 244
    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-virtual {v8, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v5, "move_from_pixel_x"

    .line 252
    iget-object v6, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->startPosition:Landroid/graphics/Point;

    .line 254
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 256
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    const-string v5, "move_from_pixel_y"

    .line 261
    iget-object v6, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->startPosition:Landroid/graphics/Point;

    .line 263
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 265
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v5, "move_to_pixel_x"

    .line 270
    iget-object v6, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 272
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 274
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    const-string v5, "move_to_pixel_y"

    .line 279
    iget-object v6, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 281
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 283
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    iget-object v5, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 288
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    iget-object v4, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 293
    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    iget-object v2, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 298
    invoke-virtual {v0, v2, v8}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    goto :goto_0

    .line 308
    :cond_2
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 309
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    .line 316
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 318
    const-string v9, "621.1.0.1.14011"

    .line 321
    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v8, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    iget-object v5, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 329
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    iget-object v4, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 334
    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    iget-object v2, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 339
    invoke-virtual {v0, v2, v8}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    .line 345
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 346
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 349
    move-result-object v0

    .line 352
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 353
    move-result-object v0

    .line 356
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 357
    move-result-object v0

    .line 360
    const-string v13, "folmePosX"

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 363
    move-result-object v2

    .line 366
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 367
    int-to-float v2, v2

    .line 369
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 370
    move-result-object v14

    .line 373
    const-string v15, "folmePosY"

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 376
    move-result-object v2

    .line 379
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 380
    int-to-float v2, v2

    .line 382
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    move-result-object v16

    .line 386
    const-string v17, "folmeScaleX"

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 389
    move-result v2

    .line 392
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 393
    move-result-object v18

    .line 396
    const-string v19, "folmeScaleY"

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 399
    move-result v2

    .line 402
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 403
    move-result-object v20

    .line 406
    filled-new-array/range {v13 .. v21}, [Ljava/lang/Object;

    .line 407
    move-result-object v2

    .line 410
    const-string v3, " start anim applyTranslateAnimation up:  fromPosX: "

    .line 411
    invoke-static {v0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    move-result-object v0

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 417
    move-result-object v2

    .line 420
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, " fromPosY"

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 431
    move-result-object v2

    .line 434
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    const-string v2, " fromScaleX: "

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 445
    move-result v2

    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 449
    const-string v2, " fromScaleY"

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 457
    move-result v2

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 461
    const-string v2, " toPosX: "

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 469
    move-result-object v2

    .line 472
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    const-string v2, " toPosY: "

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 483
    move-result-object v2

    .line 486
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    const-string v2, " toScaleX: "

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 497
    move-result v2

    .line 500
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 501
    const-string v2, " toSclaeY: "

    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 509
    move-result v2

    .line 512
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    move-result-object v0

    .line 527
    const-string v1, "MiuiFreeformAnimation"

    .line 528
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_3
    :goto_1
    return-void
    .line 533
.end method

.method private applyUnPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .locals 21

    .line 1
    move-object/from16 v9, p0

    .line 2
    move-object/from16 v10, p1

    .line 4
    move-object/from16 v0, p4

    .line 6
    iget-object v1, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v3

    .line 17
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 18
    int-to-float v3, v3

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v4

    .line 24
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 25
    int-to-float v4, v4

    .line 27
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 36
    move-result v3

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 40
    move-result v4

    .line 43
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 48
    move-result-object v2

    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    move-result-object v11

    .line 57
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 58
    move-result-object v1

    .line 61
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 66
    move-result v4

    .line 69
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 74
    move-result-object v2

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 78
    move-result-object v4

    .line 81
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 86
    move-result-object v2

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 93
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const/16 v1, 0x9

    .line 99
    goto :goto_0

    .line 101
    :cond_0
    const/16 v1, 0x8

    .line 102
    :goto_0
    move v12, v1

    .line 104
    invoke-virtual {v10, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 105
    iget-object v1, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 108
    invoke-virtual {v1, v10, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->setUpMiuiFreeWindowFloatIconAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FLandroid/view/SurfaceControl$Transaction;)V

    .line 110
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 115
    move-result v1

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 119
    move-result v2

    .line 122
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->drawIcon(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 126
    move-result v0

    .line 129
    const/4 v1, 0x1

    .line 130
    const/16 v13, 0xa

    .line 131
    const/4 v14, 0x0

    .line 133
    const/4 v15, 0x2

    .line 134
    const/4 v8, 0x3

    .line 135
    if-eqz v0, :cond_1

    .line 136
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 138
    invoke-virtual {v0, v10, v8, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 140
    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 144
    invoke-virtual {v0, v10, v15, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 146
    invoke-static {v13}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 149
    :goto_1
    iput-boolean v14, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasPendingUnpinTransition:Z

    .line 152
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 156
    move-result-object v1

    .line 159
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(I)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 167
    move-result-object v16

    .line 170
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 171
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 176
    move-result-object v0

    .line 179
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 180
    invoke-static {v8}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 182
    new-instance v7, Lmiuix/animation/base/AnimConfig;

    .line 185
    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 187
    new-instance v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$23;

    .line 190
    move-object v0, v6

    .line 192
    move-object/from16 v1, p0

    .line 193
    move-object/from16 v2, p1

    .line 195
    move-object/from16 v3, v16

    .line 197
    move-object v13, v6

    .line 199
    move v6, v12

    .line 200
    move-object v14, v7

    .line 201
    move-object/from16 v7, p3

    .line 202
    move/from16 v17, v8

    .line 204
    move-object/from16 v8, p2

    .line 206
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$23;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 208
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 211
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 213
    const-string v1, "FF_UI/FREEFORM_ACTION_SHOW"

    .line 215
    invoke-direct {v0, v13, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 217
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 220
    move-result-object v0

    .line 223
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 224
    move-result-object v0

    .line 227
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 231
    move-result v1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 237
    move-result v1

    .line 240
    if-nez v1, :cond_2

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 243
    move-result-object v1

    .line 246
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 247
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 249
    iget-object v2, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 253
    move-result-object v4

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 257
    move-result v5

    .line 260
    const/4 v6, 0x0

    .line 261
    const/4 v7, 0x0

    .line 262
    move v3, v1

    .line 263
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayout(ILandroid/graphics/Rect;FZZ)Z

    .line 264
    move-result v2

    .line 267
    if-eqz v2, :cond_2

    .line 268
    iget-object v2, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 270
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 272
    move-result-object v1

    .line 275
    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 278
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 281
    move-result v1

    .line 284
    new-array v2, v15, [F

    .line 285
    fill-array-data v2, :array_0

    .line 287
    const/4 v3, -0x2

    .line 290
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 291
    invoke-virtual {v10, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 294
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 297
    move-result-object v2

    .line 300
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 301
    move-result-object v2

    .line 304
    const/16 v3, 0x1a

    .line 305
    new-array v3, v3, [Ljava/lang/Object;

    .line 307
    const-string v4, "folmeAlpha"

    .line 309
    const/4 v5, 0x0

    .line 311
    aput-object v4, v3, v5

    .line 312
    const/4 v5, 0x0

    .line 314
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    move-result-object v6

    .line 318
    const/4 v7, 0x1

    .line 319
    aput-object v6, v3, v7

    .line 320
    const-string v6, "folmePosX"

    .line 322
    aput-object v6, v3, v15

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 326
    move-result-object v7

    .line 329
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 330
    int-to-float v7, v7

    .line 332
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v7

    .line 336
    aput-object v7, v3, v17

    .line 337
    const/4 v7, 0x4

    .line 339
    const-string v8, "folmePosY"

    .line 340
    aput-object v8, v3, v7

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 344
    move-result-object v12

    .line 347
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 348
    int-to-float v12, v12

    .line 350
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 351
    move-result-object v12

    .line 354
    const/4 v13, 0x5

    .line 355
    aput-object v12, v3, v13

    .line 356
    const/4 v12, 0x6

    .line 358
    const-string v14, "folmeScaleX"

    .line 359
    aput-object v14, v3, v12

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 363
    move-result v12

    .line 366
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 367
    move-result-object v12

    .line 370
    const/16 v16, 0x7

    .line 371
    aput-object v12, v3, v16

    .line 373
    const-string v12, "folmeScaleY"

    .line 375
    const/16 v18, 0x8

    .line 377
    aput-object v12, v3, v18

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 381
    move-result v18

    .line 384
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 385
    move-result-object v18

    .line 388
    const/16 v19, 0x9

    .line 389
    aput-object v18, v3, v19

    .line 391
    const-string v18, "clipXWidth"

    .line 393
    const/16 v19, 0xa

    .line 395
    aput-object v18, v3, v19

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 399
    move-result-object v19

    .line 402
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    .line 403
    move-result v13

    .line 406
    int-to-float v13, v13

    .line 407
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 408
    move-result-object v13

    .line 411
    const/16 v19, 0xb

    .line 412
    aput-object v13, v3, v19

    .line 414
    const/16 v13, 0xc

    .line 416
    const-string v20, "clipYHeight"

    .line 418
    aput-object v20, v3, v13

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 422
    move-result-object v13

    .line 425
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 426
    move-result v13

    .line 429
    int-to-float v13, v13

    .line 430
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 431
    move-result-object v13

    .line 434
    const/16 v20, 0xd

    .line 435
    aput-object v13, v3, v20

    .line 437
    const/16 v13, 0xe

    .line 439
    const-string v20, "radius"

    .line 441
    aput-object v20, v3, v13

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 445
    move-result v13

    .line 448
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 449
    move-result-object v13

    .line 452
    const/16 v20, 0xf

    .line 453
    aput-object v13, v3, v20

    .line 455
    const/16 v13, 0x10

    .line 457
    const-string/jumbo v20, "shadowAlpha"

    .line 459
    aput-object v20, v3, v13

    .line 462
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 464
    move-result v13

    .line 467
    if-eqz v13, :cond_3

    .line 468
    const v13, 0x3ecccccd    # 0.4f

    .line 470
    goto :goto_2

    .line 473
    :cond_3
    sget-object v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 474
    aget v13, v13, v17

    .line 476
    :goto_2
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 478
    move-result-object v13

    .line 481
    const/16 v20, 0x11

    .line 482
    aput-object v13, v3, v20

    .line 484
    const/16 v13, 0x12

    .line 486
    const-string/jumbo v20, "shadowRadius"

    .line 488
    aput-object v20, v3, v13

    .line 491
    iget-object v13, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 493
    const/high16 v7, 0x41a00000    # 20.0f

    .line 495
    invoke-static {v13, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 497
    move-result v7

    .line 500
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 501
    move-result-object v7

    .line 504
    const/16 v13, 0x13

    .line 505
    aput-object v7, v3, v13

    .line 507
    const/16 v7, 0x14

    .line 509
    const-string/jumbo v13, "shadowOffsetX"

    .line 511
    aput-object v13, v3, v7

    .line 514
    iget-object v7, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 516
    invoke-static {v7, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 518
    move-result v7

    .line 521
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 522
    move-result-object v7

    .line 525
    const/16 v13, 0x15

    .line 526
    aput-object v7, v3, v13

    .line 528
    const/16 v7, 0x16

    .line 530
    const-string/jumbo v13, "shadowOffsetY"

    .line 532
    aput-object v13, v3, v7

    .line 535
    iget-object v7, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 537
    invoke-static {v7, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 539
    move-result v7

    .line 542
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 543
    move-result-object v7

    .line 546
    const/16 v13, 0x17

    .line 547
    aput-object v7, v3, v13

    .line 549
    const/16 v7, 0x18

    .line 551
    const-string/jumbo v13, "shadowDispersion"

    .line 553
    aput-object v13, v3, v7

    .line 556
    const/16 v7, 0x19

    .line 558
    aput-object v11, v3, v7

    .line 560
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 562
    move-result-object v2

    .line 565
    const/16 v3, 0x1b

    .line 566
    new-array v3, v3, [Ljava/lang/Object;

    .line 568
    const/4 v7, 0x0

    .line 570
    aput-object v4, v3, v7

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 573
    move-result v4

    .line 576
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 577
    move-result-object v4

    .line 580
    const/4 v7, 0x1

    .line 581
    aput-object v4, v3, v7

    .line 582
    aput-object v6, v3, v15

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 586
    move-result-object v4

    .line 589
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 590
    int-to-float v4, v4

    .line 592
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 593
    move-result-object v4

    .line 596
    aput-object v4, v3, v17

    .line 597
    const/4 v4, 0x4

    .line 599
    aput-object v8, v3, v4

    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 602
    move-result-object v4

    .line 605
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 606
    int-to-float v4, v4

    .line 608
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 609
    move-result-object v4

    .line 612
    const/4 v6, 0x5

    .line 613
    aput-object v4, v3, v6

    .line 614
    const/4 v4, 0x6

    .line 616
    aput-object v14, v3, v4

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 619
    move-result v4

    .line 622
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 623
    move-result-object v4

    .line 626
    aput-object v4, v3, v16

    .line 627
    const/16 v4, 0x8

    .line 629
    aput-object v12, v3, v4

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 633
    move-result v4

    .line 636
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 637
    move-result-object v4

    .line 640
    const/16 v6, 0x9

    .line 641
    aput-object v4, v3, v6

    .line 643
    const/16 v4, 0xa

    .line 645
    aput-object v18, v3, v4

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 649
    move-result-object v4

    .line 652
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 653
    move-result v4

    .line 656
    int-to-float v4, v4

    .line 657
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 658
    move-result-object v4

    .line 661
    aput-object v4, v3, v19

    .line 662
    const/16 v4, 0xc

    .line 664
    const-string v6, "clipYHeight"

    .line 666
    aput-object v6, v3, v4

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 670
    move-result-object v4

    .line 673
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 674
    move-result v4

    .line 677
    int-to-float v4, v4

    .line 678
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 679
    move-result-object v4

    .line 682
    const/16 v6, 0xd

    .line 683
    aput-object v4, v3, v6

    .line 685
    const/16 v4, 0xe

    .line 687
    const-string v6, "radius"

    .line 689
    aput-object v6, v3, v4

    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 693
    move-result v4

    .line 696
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 697
    move-result-object v4

    .line 700
    const/16 v6, 0xf

    .line 701
    aput-object v4, v3, v6

    .line 703
    const/16 v4, 0x10

    .line 705
    const-string/jumbo v6, "shadowAlpha"

    .line 707
    aput-object v6, v3, v4

    .line 710
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 712
    move-result v4

    .line 715
    if-eqz v4, :cond_6

    .line 716
    if-eqz v1, :cond_4

    .line 718
    const v4, 0x3ed1eb85    # 0.41f

    .line 720
    goto :goto_3

    .line 723
    :cond_4
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 724
    move-result-object v4

    .line 727
    iget-object v6, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 728
    invoke-virtual {v4, v6}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 730
    move-result v4

    .line 733
    if-eqz v4, :cond_5

    .line 734
    const/high16 v4, 0x3ec00000    # 0.375f

    .line 736
    goto :goto_3

    .line 738
    :cond_5
    const v4, 0x3eb33333    # 0.35f

    .line 739
    goto :goto_3

    .line 742
    :cond_6
    sget-object v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 743
    aget v4, v4, v17

    .line 745
    :goto_3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 747
    move-result-object v4

    .line 750
    const/16 v6, 0x11

    .line 751
    aput-object v4, v3, v6

    .line 753
    const/16 v4, 0x12

    .line 755
    const-string/jumbo v6, "shadowRadius"

    .line 757
    aput-object v6, v3, v4

    .line 760
    iget-object v4, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 762
    if-eqz v1, :cond_7

    .line 764
    const/high16 v6, 0x43480000    # 200.0f

    .line 766
    goto :goto_4

    .line 768
    :cond_7
    const/high16 v6, 0x42f00000    # 120.0f

    .line 769
    :goto_4
    invoke-static {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 771
    move-result v4

    .line 774
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 775
    move-result-object v4

    .line 778
    const/16 v6, 0x13

    .line 779
    aput-object v4, v3, v6

    .line 781
    const/16 v4, 0x14

    .line 783
    const-string/jumbo v6, "shadowOffsetX"

    .line 785
    aput-object v6, v3, v4

    .line 788
    iget-object v4, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 790
    invoke-static {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 792
    move-result v4

    .line 795
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 796
    move-result-object v4

    .line 799
    const/16 v5, 0x15

    .line 800
    aput-object v4, v3, v5

    .line 802
    const/16 v4, 0x16

    .line 804
    const-string/jumbo v5, "shadowOffsetY"

    .line 806
    aput-object v5, v3, v4

    .line 809
    iget-object v4, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 811
    if-eqz v1, :cond_8

    .line 813
    const/high16 v1, 0x42f00000    # 120.0f

    .line 815
    goto :goto_5

    .line 817
    :cond_8
    const/high16 v1, 0x42200000    # 40.0f

    .line 818
    :goto_5
    invoke-static {v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 820
    move-result v1

    .line 823
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 824
    move-result-object v1

    .line 827
    const/16 v4, 0x17

    .line 828
    aput-object v1, v3, v4

    .line 830
    const/16 v1, 0x18

    .line 832
    const-string/jumbo v4, "shadowDispersion"

    .line 834
    aput-object v4, v3, v1

    .line 837
    const/16 v1, 0x19

    .line 839
    aput-object v11, v3, v1

    .line 841
    const/16 v1, 0x1a

    .line 843
    aput-object v0, v3, v1

    .line 845
    const-string/jumbo v0, "start unpin  from poxX: "

    .line 847
    invoke-static {v2, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    move-result-object v0

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 854
    move-result-object v1

    .line 857
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 858
    int-to-float v1, v1

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 861
    const-string v1, " from posY: "

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 869
    move-result-object v1

    .line 872
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 873
    int-to-float v1, v1

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 876
    const-string v1, " from scaleX: "

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 884
    move-result v1

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 888
    const-string v1, " from scaleY: "

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 896
    move-result v1

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 900
    const-string v1, " from clipXWidth: "

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 908
    move-result-object v1

    .line 911
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 912
    move-result v1

    .line 915
    int-to-float v1, v1

    .line 916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 917
    const-string v1, " from clipYHeight: "

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 925
    move-result-object v1

    .line 928
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 929
    move-result v1

    .line 932
    int-to-float v1, v1

    .line 933
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 934
    const-string v1, " from Alpha: 0.0 To posX: "

    .line 937
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 942
    move-result-object v1

    .line 945
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 946
    int-to-float v1, v1

    .line 948
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 949
    const-string v1, " To posY: "

    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 957
    move-result-object v1

    .line 960
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 961
    int-to-float v1, v1

    .line 963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 964
    const-string v1, " To scaleX: "

    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 972
    move-result v1

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 976
    const-string v1, " To scaleY: "

    .line 979
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 984
    move-result v1

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 988
    const-string v1, " To clipXWidth: "

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 996
    move-result-object v1

    .line 999
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1000
    move-result v1

    .line 1003
    int-to-float v1, v1

    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1005
    const-string v1, " To clipYHeight: "

    .line 1008
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 1013
    move-result-object v1

    .line 1016
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 1017
    move-result v1

    .line 1020
    int-to-float v1, v1

    .line 1021
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1022
    const-string v1, " To alpha: "

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 1030
    move-result v1

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1034
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v1, "MiuiFreeformAnimation"

    .line 1042
    invoke-static {v0, v10, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 1044
    return-void

    .line 1047
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
    .line 1048
.end method

.method private backToShowCorner(Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V
    .locals 39

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v10

    .line 5
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    .line 6
    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 8
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 11
    move-result-object v0

    .line 14
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 15
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 17
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 19
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [F

    .line 23
    fill-array-data v1, :array_0

    .line 25
    const/4 v2, -0x2

    .line 28
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 29
    move-result-object v0

    .line 32
    move-wide/from16 v4, p2

    .line 33
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 35
    move-result-object v11

    .line 38
    new-instance v12, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$34;

    .line 39
    move-object v0, v12

    .line 41
    move-object/from16 v1, p0

    .line 42
    move-object/from16 v2, p4

    .line 44
    move-object/from16 v3, p1

    .line 46
    move-object v6, v10

    .line 48
    move-object/from16 v9, p5

    .line 49
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$34;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 51
    filled-new-array {v12}, [Lmiuix/animation/listener/TransitionListener;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v11, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 58
    move-result-object v38

    .line 61
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 66
    move-result-object v0

    .line 69
    const-string v12, "lCornerX"

    .line 70
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 76
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object v13

    .line 83
    const-string v14, "lCornerY"

    .line 84
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 86
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 90
    move-result v1

    .line 93
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    move-result-object v15

    .line 97
    const-string v16, "lCAlpha"

    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 100
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 104
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    move-result-object v17

    .line 111
    const-string v18, "lCRadius"

    .line 112
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 114
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 118
    move-result v1

    .line 121
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    move-result-object v19

    .line 125
    const-string v20, "lCDegreeRange"

    .line 126
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 128
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 132
    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    move-result-object v21

    .line 139
    const-string v22, "lCThickness"

    .line 140
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 142
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 146
    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 150
    move-result-object v23

    .line 153
    const-string v24, "rCornerX"

    .line 154
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 156
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 160
    move-result v1

    .line 163
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    move-result-object v25

    .line 167
    const-string v26, "rCornerY"

    .line 168
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 170
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 174
    move-result v1

    .line 177
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 178
    move-result-object v27

    .line 181
    const-string v28, "rCAlpha"

    .line 182
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 184
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 188
    move-result v1

    .line 191
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    move-result-object v29

    .line 195
    const-string v30, "rCRadius"

    .line 196
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 198
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 202
    move-result v1

    .line 205
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v31

    .line 209
    const-string v32, "rCDegreeRange"

    .line 210
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 212
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 216
    move-result v1

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 220
    move-result-object v33

    .line 223
    const-string v34, "rCThickness"

    .line 224
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 226
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 230
    move-result v1

    .line 233
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 234
    move-result-object v35

    .line 237
    const-string v36, "folmeStrokeThickness"

    .line 238
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 240
    move-result v1

    .line 243
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v37

    .line 247
    filled-new-array/range {v12 .. v38}, [Ljava/lang/Object;

    .line 248
    move-result-object v1

    .line 251
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 252
    return-void

    .line 255
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
    .line 256
.end method

.method private emphasisCorner(Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V
    .locals 39

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v10

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 6
    move-result-object v0

    .line 9
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 10
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    .line 12
    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 14
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 17
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 19
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [F

    .line 23
    fill-array-data v1, :array_0

    .line 25
    const/4 v2, -0x2

    .line 28
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 29
    move-result-object v0

    .line 32
    move-wide/from16 v4, p2

    .line 33
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 35
    move-result-object v11

    .line 38
    new-instance v12, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$33;

    .line 39
    move-object v0, v12

    .line 41
    move-object/from16 v1, p0

    .line 42
    move-object/from16 v2, p4

    .line 44
    move-object/from16 v3, p1

    .line 46
    move-object v6, v10

    .line 48
    move-object/from16 v9, p5

    .line 49
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$33;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 51
    filled-new-array {v12}, [Lmiuix/animation/listener/TransitionListener;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v11, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 58
    move-result-object v38

    .line 61
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 66
    move-result-object v0

    .line 69
    const-string v12, "lCornerX"

    .line 70
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 76
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object v13

    .line 83
    const-string v14, "lCornerY"

    .line 84
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 86
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 90
    move-result v1

    .line 93
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    move-result-object v15

    .line 97
    const-string v16, "lCAlpha"

    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 100
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 104
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    move-result-object v17

    .line 111
    const-string v18, "lCRadius"

    .line 112
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 114
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 118
    move-result v1

    .line 121
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    move-result-object v19

    .line 125
    const-string v20, "lCDegreeRange"

    .line 126
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 128
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 132
    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    move-result-object v21

    .line 139
    const-string v22, "lCThickness"

    .line 140
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 142
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 146
    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 150
    move-result-object v23

    .line 153
    const-string v24, "rCornerX"

    .line 154
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 156
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 160
    move-result v1

    .line 163
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    move-result-object v25

    .line 167
    const-string v26, "rCornerY"

    .line 168
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 170
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 174
    move-result v1

    .line 177
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 178
    move-result-object v27

    .line 181
    const-string v28, "rCAlpha"

    .line 182
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 184
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 188
    move-result v1

    .line 191
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    move-result-object v29

    .line 195
    const-string v30, "rCRadius"

    .line 196
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 198
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 202
    move-result v1

    .line 205
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v31

    .line 209
    const-string v32, "rCDegreeRange"

    .line 210
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 212
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 216
    move-result v1

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 220
    move-result-object v33

    .line 223
    const-string v34, "rCThickness"

    .line 224
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 226
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 230
    move-result v1

    .line 233
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 234
    move-result-object v35

    .line 237
    const-string v36, "folmeStrokeThickness"

    .line 238
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 240
    move-result v1

    .line 243
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v37

    .line 247
    filled-new-array/range {v12 .. v38}, [Ljava/lang/Object;

    .line 248
    move-result-object v1

    .line 251
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 252
    return-void

    .line 255
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
    .line 256
.end method

.method private fillExitFreeformWct(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 2
    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 7
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p2, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    invoke-virtual {p2, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 32
    move-result p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 38
    move-result-object p0

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 44
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2, p0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 47
    const/4 p0, -0x1

    .line 50
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 56
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 59
    invoke-virtual {v0, p0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {p0, v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 66
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 70
    move-result-object p0

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 76
    invoke-static {p0, v2}, Lmiui/app/MiuiFreeFormManager;->setFrontFreeFormStackInfo(IZ)V

    .line 78
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 81
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 84
    move-result-object p0

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 90
    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 94
    move-result-object p0

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 98
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 100
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->hasFreeformDesktopMemory(I)Z

    .line 102
    move-result p0

    .line 105
    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 108
    move-result-object p0

    .line 111
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 114
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->getFreeformLastScale(I)F

    .line 116
    move-result p0

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 121
    move-result p0

    .line 124
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 125
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 128
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 132
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 135
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 138
    invoke-virtual {v0, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 141
    move-result-object v1

    .line 144
    invoke-virtual {v1, p0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 145
    :goto_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 148
    move-result p0

    .line 151
    if-eqz p0, :cond_2

    .line 152
    const/4 p0, 0x5

    .line 154
    goto :goto_2

    .line 155
    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalPinedState()Z

    .line 156
    move-result p0

    .line 159
    if-eqz p0, :cond_3

    .line 160
    const/16 p0, 0x10

    .line 162
    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    .line 165
    move-result p0

    .line 168
    if-eqz p0, :cond_4

    .line 169
    const/16 p0, 0x11

    .line 171
    goto :goto_2

    .line 173
    :cond_4
    const/4 p0, 0x3

    .line 174
    :goto_2
    const/4 v1, 0x1

    .line 175
    shl-int p0, v1, p0

    .line 176
    invoke-virtual {v0, p0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 178
    invoke-virtual {v0, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformExiting(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 181
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 184
    move-result-object p0

    .line 187
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 188
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 190
    invoke-virtual {p2, p0, v0}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 192
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 195
    move-result-object p0

    .line 198
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 199
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 201
    invoke-virtual {p2, p0, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 203
    return-void
    .line 206
.end method

.method private findFixedRotationChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result p0

    .line 9
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 10
    if-ltz p0, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 22
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    .line 24
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    return-object v0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
    .line 33
.end method

.method private findTaskshouldAvoid(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 25
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 27
    move-result-object v3

    .line 30
    if-eq v2, p1, :cond_0

    .line 31
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 33
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 39
    move-result-object v2

    .line 42
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 43
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 45
    if-eqz v2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 51
    move-result-object p1

    .line 54
    invoke-direct {p0, v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->unlockingAppLock(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z

    .line 55
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    const/4 v3, 0x0

    .line 65
    :goto_1
    return-object v3
    .line 66
.end method

.method private getStrokeOffest(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeStrokeThickness()F

    .line 2
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 6
    const/high16 v1, 0x42480000    # 50.0f

    .line 8
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 10
    move-result v0

    .line 13
    div-float/2addr p1, v0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 15
    const/high16 v0, 0x40c00000    # 6.0f

    .line 17
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 19
    move-result p0

    .line 22
    mul-float/2addr p0, p1

    .line 23
    return p0
    .line 24
.end method

.method private hideCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;J)V
    .locals 39

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v9

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLeftCornerHide()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHide()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    const-string v0, ", but it has already be hidden"

    .line 18
    move-object/from16 v3, p2

    .line 20
    invoke-static {v3, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerStateStr()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    const-string v1, "CornerChange"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    move-object/from16 v3, p2

    .line 43
    :goto_0
    const/4 v0, 0x5

    .line 45
    move-object/from16 v10, p1

    .line 46
    invoke-virtual {v10, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCornerAnimType(I)V

    .line 48
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    .line 51
    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 56
    move-result-object v0

    .line 59
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 60
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 62
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 64
    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [F

    .line 68
    const/4 v2, 0x0

    .line 70
    const/high16 v4, 0x43480000    # 200.0f

    .line 71
    aput v4, v1, v2

    .line 73
    const/16 v2, 0xf

    .line 75
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 81
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 83
    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 85
    const/4 v2, 0x2

    .line 88
    new-array v4, v2, [F

    .line 89
    fill-array-data v4, :array_0

    .line 91
    const/4 v5, -0x2

    .line 94
    invoke-virtual {v1, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 95
    move-result-object v1

    .line 98
    check-cast v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 99
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 101
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 103
    new-array v2, v2, [F

    .line 106
    fill-array-data v2, :array_1

    .line 108
    invoke-virtual {v4, v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 111
    move-result-object v2

    .line 114
    const-string v4, "lCAlpha"

    .line 115
    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 117
    move-result-object v2

    .line 120
    const-string v4, "rCAlpha"

    .line 121
    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 123
    move-result-object v0

    .line 126
    const-string v2, "folmeStrokeThickness"

    .line 127
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 129
    move-result-object v0

    .line 132
    move-wide/from16 v4, p3

    .line 133
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 135
    move-result-object v11

    .line 138
    new-instance v12, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$35;

    .line 139
    move-object v0, v12

    .line 141
    move-object/from16 v1, p0

    .line 142
    move-object/from16 v2, p1

    .line 144
    move-object/from16 v3, p2

    .line 146
    move-object v6, v9

    .line 148
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$35;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 149
    filled-new-array {v12}, [Lmiuix/animation/listener/TransitionListener;

    .line 152
    move-result-object v0

    .line 155
    invoke-virtual {v11, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 156
    move-result-object v38

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 160
    move-result-object v0

    .line 163
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 164
    move-result-object v0

    .line 167
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 168
    move-result-object v0

    .line 171
    const-string v11, "lCornerX"

    .line 172
    const-string v12, "lCornerY"

    .line 174
    const-string v13, "lCAlpha"

    .line 176
    const-string v14, "lCRadius"

    .line 178
    const-string v15, "lCDegreeRange"

    .line 180
    const-string v16, "lCThickness"

    .line 182
    const-string v17, "rCornerX"

    .line 184
    const-string v18, "rCornerY"

    .line 186
    const-string v19, "rCAlpha"

    .line 188
    const-string v20, "rCRadius"

    .line 190
    const-string v21, "rCDegreeRange"

    .line 192
    const-string v22, "rCThickness"

    .line 194
    filled-new-array/range {v11 .. v22}, [Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 199
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 200
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 203
    move-result-object v0

    .line 206
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 207
    move-result-object v0

    .line 210
    const-string v12, "lCornerX"

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 213
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 217
    move-result v1

    .line 220
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    move-result-object v13

    .line 224
    const-string v14, "lCornerY"

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 227
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 231
    move-result v1

    .line 234
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 235
    move-result-object v15

    .line 238
    const-string v16, "lCAlpha"

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 241
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 245
    move-result v1

    .line 248
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    move-result-object v17

    .line 252
    const-string v18, "lCRadius"

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 255
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 259
    move-result v1

    .line 262
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    move-result-object v19

    .line 266
    const-string v20, "lCDegreeRange"

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 269
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 273
    move-result v1

    .line 276
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    move-result-object v21

    .line 280
    const-string v22, "lCThickness"

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 283
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 287
    move-result v1

    .line 290
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 291
    move-result-object v23

    .line 294
    const-string v24, "rCornerX"

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 297
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 301
    move-result v1

    .line 304
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 305
    move-result-object v25

    .line 308
    const-string v26, "rCornerY"

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 311
    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 315
    move-result v1

    .line 318
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 319
    move-result-object v27

    .line 322
    const-string v28, "rCAlpha"

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 325
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 329
    move-result v1

    .line 332
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v29

    .line 336
    const-string v30, "rCRadius"

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 339
    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 343
    move-result v1

    .line 346
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 347
    move-result-object v31

    .line 350
    const-string v32, "rCDegreeRange"

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 353
    move-result-object v1

    .line 356
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 357
    move-result v1

    .line 360
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 361
    move-result-object v33

    .line 364
    const-string v34, "rCThickness"

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 367
    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 371
    move-result v1

    .line 374
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    move-result-object v35

    .line 378
    const-string v36, "folmeStrokeThickness"

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 381
    move-result v1

    .line 384
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 385
    move-result-object v37

    .line 388
    filled-new-array/range {v12 .. v38}, [Ljava/lang/Object;

    .line 389
    move-result-object v1

    .line 392
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 393
    return-void

    .line 396
    nop

    .line 397
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 398
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
    .line 406
.end method

.method private hideLeftCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 26

    .line 1
    move-object/from16 v8, p1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 4
    move-result-object v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLeftCornerState()I

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    move-object/from16 v3, p2

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", but left corner has already be hide"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "CornerChange"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 38
    :cond_0
    move-object/from16 v3, p2

    .line 39
    const/4 v0, 0x6

    .line 41
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCornerAnimType(I)V

    .line 42
    const/4 v0, 0x0

    .line 45
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpLCornerState(I)V

    .line 46
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 49
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 54
    move-result-object v1

    .line 57
    iget-object v6, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 58
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 60
    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 62
    const/4 v2, 0x1

    .line 65
    new-array v2, v2, [F

    .line 66
    const/high16 v4, 0x43480000    # 200.0f

    .line 68
    aput v4, v2, v0

    .line 70
    const/16 v0, 0xf

    .line 72
    invoke-virtual {v1, v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 78
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 80
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 82
    const/4 v2, 0x2

    .line 85
    new-array v2, v2, [F

    .line 86
    fill-array-data v2, :array_0

    .line 88
    const/4 v4, -0x2

    .line 91
    invoke-virtual {v1, v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 92
    move-result-object v1

    .line 95
    const-string v2, "lCAlpha"

    .line 96
    invoke-virtual {v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 98
    move-result-object v10

    .line 101
    new-instance v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;

    .line 102
    move-object v0, v11

    .line 104
    move-object/from16 v1, p0

    .line 105
    move-object/from16 v2, p1

    .line 107
    move-object v4, v9

    .line 109
    move-object/from16 v7, p3

    .line 110
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$36;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 112
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 115
    move-result-object v0

    .line 118
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 119
    move-result-object v25

    .line 122
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 126
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 127
    move-result-object v0

    .line 130
    const-string v11, "lCornerX"

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 133
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 137
    move-result v1

    .line 140
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 141
    move-result-object v12

    .line 144
    const-string v13, "lCornerY"

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 147
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 151
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    move-result-object v14

    .line 158
    const-string v15, "lCAlpha"

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 161
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 165
    move-result v1

    .line 168
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    move-result-object v16

    .line 172
    const-string v17, "lCRadius"

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 175
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 179
    move-result v1

    .line 182
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 183
    move-result-object v18

    .line 186
    const-string v19, "lCDegreeRange"

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 189
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 193
    move-result v1

    .line 196
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 197
    move-result-object v20

    .line 200
    const-string v21, "lCThickness"

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 203
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 207
    move-result v1

    .line 210
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 211
    move-result-object v22

    .line 214
    const-string v23, "folmeStrokeThickness"

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 217
    move-result v1

    .line 220
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    move-result-object v24

    .line 224
    filled-new-array/range {v11 .. v25}, [Ljava/lang/Object;

    .line 225
    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 229
    return-void

    .line 232
    nop

    .line 233
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
    .line 234
.end method

.method private hideOtherFreeform(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 33
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 39
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->isFrontFreeFormStackInfo(I)Z

    .line 45
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 51
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    if-eq p1, v2, :cond_1

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    const-string v5, " hideOtherFreeform: miuiFreeformModeTaskInfo.PackageName = "

    .line 61
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v5, ", taskId="

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v5, ", hidetaskid="

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 92
    const-string v4, "MiuiFreeformAnimation"

    .line 93
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p1}, Lmiui/app/MiuiFreeFormManager;->isFullScreenStrategyNeededInDesktopMode(I)Z

    .line 98
    move-result v2

    .line 101
    if-nez v2, :cond_0

    .line 102
    const/16 v2, 0x10

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 106
    goto :goto_1

    .line 109
    :cond_0
    const/4 v2, 0x1

    .line 110
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setHideStackFromFullScreen(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 114
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 116
    move-result-object v4

    .line 119
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 120
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 122
    invoke-interface {v2, v4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformHide(I)V

    .line 124
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 127
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 129
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 132
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 134
    move-result-object v3

    .line 137
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 138
    invoke-virtual {v4, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->hide(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 140
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 143
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 146
    goto/16 :goto_0

    .line 148
    :cond_2
    return-void
    .line 150
.end method

.method private hideRightCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 26

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v8

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isRightCornerHide()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCornerX()F

    .line 12
    move-result v0

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 20
    move-result v1

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    move-object/from16 v3, p2

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", but right corner has already be hide"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    const-string v1, "CornerChange"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 52
    :cond_0
    move-object/from16 v3, p2

    .line 53
    const/4 v0, 0x7

    .line 55
    move-object/from16 v9, p1

    .line 56
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCornerAnimType(I)V

    .line 58
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 61
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 66
    move-result-object v0

    .line 69
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 70
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 72
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 74
    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [F

    .line 78
    const/4 v2, 0x0

    .line 80
    const/high16 v4, 0x43480000    # 200.0f

    .line 81
    aput v4, v1, v2

    .line 83
    const/16 v2, 0xf

    .line 85
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 91
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 93
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 95
    const/4 v2, 0x2

    .line 98
    new-array v2, v2, [F

    .line 99
    fill-array-data v2, :array_0

    .line 101
    const/4 v4, -0x2

    .line 104
    invoke-virtual {v1, v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 105
    move-result-object v1

    .line 108
    const-string v2, "rCAlpha"

    .line 109
    invoke-virtual {v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 111
    move-result-object v10

    .line 114
    new-instance v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$37;

    .line 115
    move-object v0, v11

    .line 117
    move-object/from16 v1, p0

    .line 118
    move-object/from16 v2, p1

    .line 120
    move-object/from16 v3, p2

    .line 122
    move-object v4, v8

    .line 124
    move-object/from16 v7, p3

    .line 125
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$37;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 127
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 134
    move-result-object v25

    .line 137
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 142
    move-result-object v0

    .line 145
    const-string v11, "rCornerX"

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 148
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 152
    move-result v1

    .line 155
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 156
    move-result-object v12

    .line 159
    const-string v13, "rCornerY"

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 162
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 166
    move-result v1

    .line 169
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 170
    move-result-object v14

    .line 173
    const-string v15, "rCAlpha"

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 176
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 180
    move-result v1

    .line 183
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    move-result-object v16

    .line 187
    const-string v17, "rCRadius"

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 190
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 194
    move-result v1

    .line 197
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 198
    move-result-object v18

    .line 201
    const-string v19, "rCDegreeRange"

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 204
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 208
    move-result v1

    .line 211
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    move-result-object v20

    .line 215
    const-string v21, "rCThickness"

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 218
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 222
    move-result v1

    .line 225
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 226
    move-result-object v22

    .line 229
    const-string v23, "folmeStrokeThickness"

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 232
    move-result v1

    .line 235
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    move-result-object v24

    .line 239
    filled-new-array/range {v11 .. v25}, [Ljava/lang/Object;

    .line 240
    move-result-object v1

    .line 243
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 244
    return-void

    .line 247
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
    .line 248
.end method

.method private holdCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 35

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v4

    .line 5
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 6
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 11
    move-result-object v0

    .line 14
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getActionMode()I

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 23
    move-result-object v0

    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 35
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    move-result-object v1

    .line 42
    const-string v2, "folmeStrokeThickness"

    .line 43
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 52
    move-result-object v0

    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 60
    move-result-object v0

    .line 63
    const-string v7, "lCornerX"

    .line 64
    const-string v8, "lCornerY"

    .line 66
    const-string v9, "lCAlpha"

    .line 68
    const-string v10, "lCRadius"

    .line 70
    const-string v11, "lCDegreeRange"

    .line 72
    const-string v12, "lCThickness"

    .line 74
    const-string v13, "rCornerX"

    .line 76
    const-string v14, "rCornerY"

    .line 78
    const-string v15, "rCAlpha"

    .line 80
    const-string v16, "rCRadius"

    .line 82
    const-string v17, "rCDegreeRange"

    .line 84
    const-string v18, "rCThickness"

    .line 86
    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 92
    :cond_0
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 95
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 97
    const/4 v1, 0x2

    .line 100
    new-array v1, v1, [F

    .line 101
    fill-array-data v1, :array_0

    .line 103
    const/4 v2, -0x2

    .line 106
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 107
    move-result-object v7

    .line 110
    new-instance v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$38;

    .line 111
    move-object v0, v8

    .line 113
    move-object/from16 v1, p0

    .line 114
    move-object/from16 v2, p1

    .line 116
    move-object/from16 v3, p2

    .line 118
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$38;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 120
    filled-new-array {v8}, [Lmiuix/animation/listener/TransitionListener;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {v7, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 127
    move-result-object v34

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 131
    move-result-object v0

    .line 134
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 138
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 139
    move-result-object v0

    .line 142
    const-string v8, "lCornerX"

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 149
    move-result v1

    .line 152
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    move-result-object v9

    .line 156
    const-string v10, "lCornerY"

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 159
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 163
    move-result v1

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    move-result-object v11

    .line 170
    const-string v12, "lCAlpha"

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 173
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 177
    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    move-result-object v13

    .line 184
    const-string v14, "lCRadius"

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 187
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 191
    move-result v1

    .line 194
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 195
    move-result-object v15

    .line 198
    const-string v16, "lCDegreeRange"

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 201
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 205
    move-result v1

    .line 208
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 209
    move-result-object v17

    .line 212
    const-string v18, "lCThickness"

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 215
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 219
    move-result v1

    .line 222
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    move-result-object v19

    .line 226
    const-string v20, "rCornerX"

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 229
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 233
    move-result v1

    .line 236
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    move-result-object v21

    .line 240
    const-string v22, "rCornerY"

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 243
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 247
    move-result v1

    .line 250
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 251
    move-result-object v23

    .line 254
    const-string v24, "rCAlpha"

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 257
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 261
    move-result v1

    .line 264
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 265
    move-result-object v25

    .line 268
    const-string v26, "rCRadius"

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 271
    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 275
    move-result v1

    .line 278
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    move-result-object v27

    .line 282
    const-string v28, "rCDegreeRange"

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 285
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 289
    move-result v1

    .line 292
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v29

    .line 296
    const-string v30, "rCThickness"

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 299
    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 303
    move-result v1

    .line 306
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    move-result-object v31

    .line 310
    const-string v32, "folmeStrokeThickness"

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 313
    move-result v1

    .line 316
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 317
    move-result-object v33

    .line 320
    filled-new-array/range {v8 .. v34}, [Ljava/lang/Object;

    .line 321
    move-result-object v1

    .line 324
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 325
    return-void

    .line 328
    nop

    .line 329
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
    .line 330
.end method

.method private isActivityOpeningOrClosing(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 10
    move-result p0

    .line 13
    if-eq p0, v1, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 16
    move-result p0

    .line 19
    const/4 p1, 0x4

    .line 20
    if-ne p0, p1, :cond_1

    .line 21
    :cond_0
    move v0, v1

    .line 23
    :cond_1
    return v0

    .line 24
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 25
    move-result p0

    .line 28
    const/4 p1, 0x2

    .line 29
    if-ne p0, p1, :cond_4

    .line 30
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 32
    move-result p0

    .line 35
    if-eq p0, p1, :cond_3

    .line 36
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 38
    move-result p0

    .line 41
    const/4 p1, 0x3

    .line 42
    if-ne p0, p1, :cond_4

    .line 43
    :cond_3
    move v0, v1

    .line 45
    :cond_4
    return v0
    .line 46
.end method

.method private isDisplayChange(Landroid/window/TransitionInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroid/window/TransitionInfo$Change;

    .line 20
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 22
    move-result v0

    .line 25
    and-int/lit8 v0, v0, 0x20

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return p0
    .line 47
.end method

.method private isHomeVisibleAndOnFullTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 9
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_4

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiDesktopModeController()Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 26
    move-result v0

    .line 29
    const/4 v3, 0x2

    .line 30
    if-ne v0, v3, :cond_0

    .line 31
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 33
    if-eqz p0, :cond_3

    .line 35
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 37
    if-eqz p0, :cond_3

    .line 39
    goto :goto_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeTaskRepository:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 44
    iget-object v0, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v5

    .line 67
    iget-object v6, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 68
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 70
    move-result-object v5

    .line 73
    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v4

    .line 79
    if-eq v6, v4, :cond_1

    .line 80
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 82
    move-result v4

    .line 85
    if-nez v4, :cond_2

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 89
    move-result p0

    .line 92
    if-ne p0, v3, :cond_3

    .line 93
    :goto_1
    move v1, v2

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    const-string p1, "isHomeVisibleAndOnFullTop "

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    const-string p1, "MiuiFreeformAnimation"

    .line 110
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    return v1
    .line 115
.end method

.method private isNeedRotation(Landroid/window/TransitionInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 20
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 22
    move-result v1

    .line 25
    const/4 v2, 0x6

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 29
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 35
    move-result v1

    .line 38
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 39
    move-result v0

    .line 42
    if-eq v1, v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 45
    move-result v0

    .line 48
    const v1, 0x7ffffff1

    .line 49
    if-ne v0, v1, :cond_0

    .line 52
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
    .line 57
.end method

.method private static synthetic lambda$exitFreeformWithoutAnimation$0(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 17
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 21
    return-void
    .line 24
.end method

.method private static synthetic lambda$startEnterMiniFreeformAlphaAnimation$2(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method

.method private static synthetic lambda$startMiuiFreeformMaximizeMoveToBackTransition$3(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method

.method private static synthetic lambda$startMoveToFrontWithoutAnimation$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method

.method private miuifreeformMoveEndOrCancel(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformMoveEnd(IZ)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method private miuifreeformMoveStart(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformMoveStart(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method private onInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 4
    return-void
    .line 7
.end method

.method private otherNormalFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 21
    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 27
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->findTaskshouldAvoid(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 29
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseBound()V

    .line 35
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledBounds()Landroid/graphics/Rect;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getScaledBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 46
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v3, v3, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 49
    move-result-object v2

    .line 52
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 53
    move-result-object v3

    .line 56
    invoke-virtual {v3, v1, p1, v2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->avoidAsPossible(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 60
    move-result-object p1

    .line 63
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 64
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 66
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 71
    const/16 p1, 0xc

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 76
    :cond_1
    :goto_0
    return-void
    .line 79
.end method

.method private showCorner(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V
    .locals 45

    .line 1
    move/from16 v11, p1

    .line 2
    move-wide/from16 v4, p3

    .line 4
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    move-result-object v12

    .line 9
    new-instance v13, Landroid/view/SurfaceControl$Transaction;

    .line 10
    invoke-direct {v13}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 12
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 15
    move-result-object v0

    .line 18
    iget-object v14, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 19
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 25
    move-result-object v0

    .line 28
    const-string v15, "lCornerX"

    .line 29
    const-string v16, "lCornerY"

    .line 31
    const-string v17, "lCAlpha"

    .line 33
    const-string v18, "lCRadius"

    .line 35
    const-string v19, "lCDegreeRange"

    .line 37
    const-string v20, "lCThickness"

    .line 39
    const-string v21, "rCornerX"

    .line 41
    const-string v22, "rCornerY"

    .line 43
    const-string v23, "rCAlpha"

    .line 45
    const-string v24, "rCRadius"

    .line 47
    const-string v25, "rCDegreeRange"

    .line 49
    const-string v26, "rCThickness"

    .line 51
    filled-new-array/range {v15 .. v26}, [Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 57
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 60
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 62
    const/4 v15, 0x1

    .line 65
    new-array v1, v15, [F

    .line 66
    const/4 v2, 0x0

    .line 68
    const/high16 v3, 0x43480000    # 200.0f

    .line 69
    aput v3, v1, v2

    .line 71
    const/16 v2, 0xf

    .line 73
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 83
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 85
    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 87
    const/4 v2, 0x2

    .line 90
    new-array v3, v2, [F

    .line 91
    fill-array-data v3, :array_0

    .line 93
    const/4 v6, -0x2

    .line 96
    invoke-virtual {v1, v6, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 97
    move-result-object v1

    .line 100
    check-cast v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 101
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 103
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 105
    new-array v2, v2, [F

    .line 108
    fill-array-data v2, :array_1

    .line 110
    invoke-virtual {v3, v6, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 113
    move-result-object v2

    .line 116
    const-string v3, "lCAlpha"

    .line 117
    invoke-virtual {v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 119
    move-result-object v2

    .line 122
    const-string v3, "rCAlpha"

    .line 123
    invoke-virtual {v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 125
    move-result-object v0

    .line 128
    const-string v2, "folmeStrokeThickness"

    .line 129
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 131
    move-result-object v0

    .line 134
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 135
    move-result-object v10

    .line 138
    new-instance v16, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$32;

    .line 139
    move-object/from16 v0, v16

    .line 141
    move-object/from16 v1, p0

    .line 143
    move-object/from16 v2, p5

    .line 145
    move-object/from16 v3, p2

    .line 147
    move-object v6, v12

    .line 149
    move-object v7, v13

    .line 150
    move-object v8, v14

    .line 151
    move/from16 v9, p1

    .line 152
    move-object v15, v10

    .line 154
    move-object/from16 v10, p6

    .line 155
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$32;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;ILjava/lang/Runnable;)V

    .line 157
    filled-new-array/range {v16 .. v16}, [Lmiuix/animation/listener/TransitionListener;

    .line 160
    move-result-object v0

    .line 163
    invoke-virtual {v15, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 164
    move-result-object v44

    .line 167
    const/4 v0, 0x1

    .line 168
    if-eq v11, v0, :cond_0

    .line 169
    const/4 v0, 0x4

    .line 171
    if-eq v11, v0, :cond_0

    .line 172
    const/16 v0, 0xb

    .line 174
    if-ne v11, v0, :cond_1

    .line 176
    :cond_0
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 181
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 182
    move-result-object v0

    .line 185
    const-string v15, "lCornerX"

    .line 186
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 188
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 192
    move-result v1

    .line 195
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 196
    move-result-object v16

    .line 199
    const-string v17, "lCornerY"

    .line 200
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 202
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 206
    move-result v1

    .line 209
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object v18

    .line 213
    const-string v19, "lCAlpha"

    .line 214
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 216
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 220
    move-result v1

    .line 223
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    move-result-object v20

    .line 227
    const-string v21, "lCRadius"

    .line 228
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 230
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 234
    move-result v1

    .line 237
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 238
    move-result-object v22

    .line 241
    const-string v23, "lCDegreeRange"

    .line 242
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 244
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 248
    move-result v1

    .line 251
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 252
    move-result-object v24

    .line 255
    const-string v25, "lCThickness"

    .line 256
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 258
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 262
    move-result v1

    .line 265
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 266
    move-result-object v26

    .line 269
    const-string v27, "rCornerX"

    .line 270
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 272
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 276
    move-result v1

    .line 279
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 280
    move-result-object v28

    .line 283
    const-string v29, "rCornerY"

    .line 284
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 286
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 290
    move-result v1

    .line 293
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 294
    move-result-object v30

    .line 297
    const-string v31, "rCAlpha"

    .line 298
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 300
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 304
    move-result v1

    .line 307
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    move-result-object v32

    .line 311
    const-string v33, "rCRadius"

    .line 312
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 314
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 318
    move-result v1

    .line 321
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    move-result-object v34

    .line 325
    const-string v35, "rCDegreeRange"

    .line 326
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 328
    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 332
    move-result v1

    .line 335
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    move-result-object v36

    .line 339
    const-string v37, "rCThickness"

    .line 340
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 342
    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 346
    move-result v1

    .line 349
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 350
    move-result-object v38

    .line 353
    const-string v39, "folmeStrokeThickness"

    .line 354
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 356
    move-result v1

    .line 359
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 360
    move-result-object v40

    .line 363
    filled-new-array/range {v15 .. v40}, [Ljava/lang/Object;

    .line 364
    move-result-object v1

    .line 367
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 368
    move-object/from16 v0, p0

    .line 371
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 373
    invoke-virtual {v0, v13, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 375
    move-result-object v0

    .line 378
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeAlpha()F

    .line 379
    move-result v3

    .line 382
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeColors()[F

    .line 383
    move-result-object v4

    .line 386
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 387
    move-result v5

    .line 390
    move-object v1, v13

    .line 391
    move-object v2, v14

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 393
    invoke-virtual {v13}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 396
    :cond_1
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 399
    move-result-object v0

    .line 402
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 403
    move-result-object v0

    .line 406
    const-string v18, "lCornerX"

    .line 407
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 409
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 413
    move-result v1

    .line 416
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 417
    move-result-object v19

    .line 420
    const-string v20, "lCornerY"

    .line 421
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 423
    move-result-object v1

    .line 426
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 427
    move-result v1

    .line 430
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 431
    move-result-object v21

    .line 434
    const-string v22, "lCAlpha"

    .line 435
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 437
    move-result-object v1

    .line 440
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 441
    move-result v1

    .line 444
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 445
    move-result-object v23

    .line 448
    const-string v24, "lCRadius"

    .line 449
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 451
    move-result-object v1

    .line 454
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 455
    move-result v1

    .line 458
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v25

    .line 462
    const-string v26, "lCDegreeRange"

    .line 463
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 465
    move-result-object v1

    .line 468
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 469
    move-result v1

    .line 472
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 473
    move-result-object v27

    .line 476
    const-string v28, "lCThickness"

    .line 477
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 479
    move-result-object v1

    .line 482
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 483
    move-result v1

    .line 486
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 487
    move-result-object v29

    .line 490
    const-string v30, "rCornerX"

    .line 491
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 493
    move-result-object v1

    .line 496
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 497
    move-result v1

    .line 500
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 501
    move-result-object v31

    .line 504
    const-string v32, "rCornerY"

    .line 505
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 507
    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 511
    move-result v1

    .line 514
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 515
    move-result-object v33

    .line 518
    const-string v34, "rCAlpha"

    .line 519
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 521
    move-result-object v1

    .line 524
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 525
    move-result v1

    .line 528
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 529
    move-result-object v35

    .line 532
    const-string v36, "rCRadius"

    .line 533
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 535
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 539
    move-result v1

    .line 542
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 543
    move-result-object v37

    .line 546
    const-string v38, "rCDegreeRange"

    .line 547
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 549
    move-result-object v1

    .line 552
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 553
    move-result v1

    .line 556
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 557
    move-result-object v39

    .line 560
    const-string v40, "rCThickness"

    .line 561
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 563
    move-result-object v1

    .line 566
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 567
    move-result v1

    .line 570
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 571
    move-result-object v41

    .line 574
    const-string v42, "folmeStrokeThickness"

    .line 575
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 577
    move-result v1

    .line 580
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 581
    move-result-object v43

    .line 584
    filled-new-array/range {v18 .. v44}, [Ljava/lang/Object;

    .line 585
    move-result-object v1

    .line 588
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 589
    return-void

    .line 592
    nop

    .line 593
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 594
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
    .line 602
.end method

.method private startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z
    .locals 14

    .line 1
    move-object v9, p0

    .line 2
    move/from16 v2, p2

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    move-result-object v10

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 9
    move-result v6

    .line 12
    iget-boolean v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mInFixedRotation:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mEndFixedRotation:I

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 20
    move-result v0

    .line 23
    :goto_0
    move v7, v0

    .line 24
    const v0, 0x7ffffff4

    .line 25
    const/4 v11, 0x0

    .line 28
    const/4 v1, 0x5

    .line 29
    const/4 v12, 0x1

    .line 30
    if-ne v2, v0, :cond_1

    .line 31
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 33
    move-result v0

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 39
    iget v1, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 43
    move-result-object v13

    .line 46
    if-eqz v13, :cond_5

    .line 47
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isEnteringMini()Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    move-object v0, p0

    .line 55
    move-object/from16 v1, p3

    .line 56
    move-object/from16 v2, p4

    .line 58
    move-object/from16 v3, p5

    .line 60
    move-object/from16 v4, p6

    .line 62
    move-object/from16 v5, p7

    .line 64
    move-object v8, v13

    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startEnterMiniFreeformAnim(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 67
    invoke-virtual {v13, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setIsEnteringMini(Z)V

    .line 70
    return v12

    .line 73
    :cond_1
    if-ne v2, v12, :cond_2

    .line 74
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 76
    move-result v0

    .line 79
    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 82
    move-result v0

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 86
    move-result v1

    .line 89
    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 92
    iget v1, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 96
    move-result-object v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    move-object v0, p0

    .line 102
    move-object/from16 v2, p3

    .line 103
    move-object/from16 v3, p4

    .line 105
    move-object/from16 v4, p5

    .line 107
    move-object/from16 v5, p6

    .line 109
    move-object/from16 v6, p7

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startFullScreenToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 113
    return v12

    .line 116
    :cond_2
    const/16 v0, 0x453

    .line 117
    if-ne v2, v0, :cond_3

    .line 119
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 121
    iget v1, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 125
    move-result-object v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    move-object v0, p0

    .line 131
    move-object/from16 v2, p3

    .line 132
    move-object/from16 v3, p4

    .line 134
    move-object/from16 v4, p5

    .line 136
    move-object/from16 v5, p6

    .line 138
    move-object/from16 v6, p7

    .line 140
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startFullScreenToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 142
    return v12

    .line 145
    :cond_3
    const/4 v0, 0x2

    .line 146
    if-ne v2, v12, :cond_4

    .line 147
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 149
    move-result v1

    .line 152
    if-ne v1, v12, :cond_4

    .line 153
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 155
    move-result v1

    .line 158
    if-eq v1, v0, :cond_4

    .line 159
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 161
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->hideOtherFreeform(I)V

    .line 163
    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 167
    move-result v1

    .line 170
    if-ne v1, v12, :cond_5

    .line 171
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 173
    move-result v1

    .line 176
    if-ne v1, v0, :cond_5

    .line 177
    if-eq v6, v7, :cond_5

    .line 179
    invoke-direct {p0, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isHomeVisibleAndOnFullTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 181
    move-result v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showOtherFreeform(I)V

    .line 189
    :cond_5
    :goto_1
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 192
    move-object v1, p1

    .line 194
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 195
    move-result v0

    .line 198
    if-nez v0, :cond_6

    .line 199
    return v11

    .line 201
    :cond_6
    xor-int/lit8 v8, p8, 0x1

    .line 202
    move-object v0, p0

    .line 204
    move-object v1, v10

    .line 205
    move/from16 v2, p2

    .line 206
    move-object/from16 v3, p3

    .line 208
    move-object/from16 v4, p4

    .line 210
    move-object/from16 v5, p5

    .line 212
    move-object/from16 v6, p6

    .line 214
    move-object/from16 v7, p7

    .line 216
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiuiFreeformMaximizeAnimation(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z

    .line 218
    move-result v0

    .line 221
    iget-object v1, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 222
    iget v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 224
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 226
    return v0
    .line 229
.end method

.method private startCloseTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v8, p2

    .line 6
    move-object/from16 v2, p4

    .line 8
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v3

    .line 13
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 14
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 16
    move-result v3

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v4, 0x5

    .line 21
    if-ne v3, v4, :cond_5

    .line 22
    iget-object v3, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 24
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 26
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 28
    move-result-object v10

    .line 31
    const-string v11, "MiuiFreeformAnimation"

    .line 32
    if-nez v10, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "not found MiuiFreeformModeTaskInfo by this taskId:"

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v9

    .line 55
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 58
    move-result-object v3

    .line 61
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 65
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    new-instance v2, Landroid/graphics/Rect;

    .line 71
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpEludeBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v3

    .line 76
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 80
    move-result-object v3

    .line 83
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 84
    int-to-float v4, v4

    .line 86
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->setFolmePosY(F)V

    .line 87
    :cond_1
    move-object v12, v2

    .line 90
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 93
    move-result v3

    .line 96
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 97
    move-result v2

    .line 100
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 101
    move-result v3

    .line 104
    div-float v13, v2, v3

    .line 105
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 107
    move-result v14

    .line 110
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 113
    move-result-object v3

    .line 116
    iget v4, v12, Landroid/graphics/Rect;->left:I

    .line 117
    int-to-float v4, v4

    .line 119
    iget v5, v12, Landroid/graphics/Rect;->top:I

    .line 120
    int-to-float v5, v5

    .line 122
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 123
    move-result-object v2

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 127
    move-result-object v3

    .line 130
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 131
    move-result v4

    .line 134
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 135
    move-result v5

    .line 138
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 139
    move-result-object v2

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 143
    move-result-object v3

    .line 146
    invoke-virtual {v2, v0, v3, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 147
    move-result-object v2

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 151
    move-result-object v4

    .line 154
    const/high16 v16, 0x3ec00000    # 0.375f

    .line 155
    if-eqz v14, :cond_2

    .line 157
    const v5, 0x3ed1eb85    # 0.41f

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    move/from16 v5, v16

    .line 163
    :goto_0
    iget-object v7, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 165
    move-object/from16 v3, p1

    .line 167
    move v6, v14

    .line 169
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setShadowAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FZLandroid/content/Context;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 170
    move-result-object v2

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 174
    move-result-object v3

    .line 177
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 178
    move-result v4

    .line 181
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 182
    move-result v5

    .line 185
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 186
    move-result-object v2

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 190
    move-result-object v3

    .line 193
    invoke-virtual {v2, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 197
    move-result-object v0

    .line 200
    invoke-virtual {v8, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 208
    move-result v2

    .line 211
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 212
    move-result v3

    .line 215
    invoke-virtual {v8, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 219
    move-result-object v0

    .line 222
    const/high16 v2, 0x3f800000    # 1.0f

    .line 223
    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 228
    move-result-object v0

    .line 231
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 232
    move-result v2

    .line 235
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 236
    move-result v3

    .line 239
    invoke-virtual {v8, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 240
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 243
    move-result-object v5

    .line 246
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 247
    move-result-object v0

    .line 250
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 251
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 253
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 255
    const/4 v8, 0x1

    .line 258
    new-array v2, v8, [F

    .line 259
    const/high16 v3, 0x43480000    # 200.0f

    .line 261
    aput v3, v2, v9

    .line 263
    const/16 v3, 0xf

    .line 265
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 267
    move-result-object v0

    .line 270
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 271
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 273
    invoke-virtual {v2, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 275
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 278
    move-result v2

    .line 281
    if-eqz v2, :cond_3

    .line 282
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 284
    move-result-object v2

    .line 287
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 288
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 290
    invoke-static {v2, v9}, Lmiui/app/MiuiFreeFormManager;->setFrontFreeFormStackInfo(IZ)V

    .line 292
    :cond_3
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 295
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 297
    const-string v3, "lCAlpha"

    .line 300
    invoke-virtual {v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 302
    move-result-object v2

    .line 305
    const-string v3, "rCAlpha"

    .line 306
    invoke-virtual {v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 308
    move-result-object v13

    .line 311
    new-instance v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;

    .line 312
    move-object v0, v7

    .line 314
    move-object/from16 v1, p0

    .line 315
    move-object v2, v10

    .line 317
    move-object/from16 v3, p3

    .line 318
    move v4, v14

    .line 320
    move-object v15, v7

    .line 321
    move-object/from16 v7, p5

    .line 322
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 324
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 327
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 329
    const-string v1, "FF_NoUI/FREEFORM_ACTION_CLOSE"

    .line 331
    invoke-direct {v0, v15, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 333
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 336
    move-result-object v0

    .line 339
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 340
    move-result-object v33

    .line 343
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 347
    move-result-object v0

    .line 350
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 351
    move-result-object v0

    .line 354
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 355
    move-result-object v0

    .line 358
    const/16 v1, 0xc

    .line 359
    new-array v1, v1, [Ljava/lang/Object;

    .line 361
    const-string v2, "folmePosX"

    .line 363
    aput-object v2, v1, v9

    .line 365
    iget v2, v12, Landroid/graphics/Rect;->left:I

    .line 367
    int-to-float v2, v2

    .line 369
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 370
    move-result-object v2

    .line 373
    aput-object v2, v1, v8

    .line 374
    const/4 v2, 0x2

    .line 376
    const-string v3, "folmePosY"

    .line 377
    aput-object v3, v1, v2

    .line 379
    iget v2, v12, Landroid/graphics/Rect;->top:I

    .line 381
    int-to-float v2, v2

    .line 383
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    move-result-object v2

    .line 387
    const/4 v3, 0x3

    .line 388
    aput-object v2, v1, v3

    .line 389
    const/4 v2, 0x4

    .line 391
    const-string v3, "folmeAlpha"

    .line 392
    aput-object v3, v1, v2

    .line 394
    const/high16 v2, 0x3f800000    # 1.0f

    .line 396
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    move-result-object v2

    .line 401
    const/4 v3, 0x5

    .line 402
    aput-object v2, v1, v3

    .line 403
    const/4 v2, 0x6

    .line 405
    const-string v3, "folmeScaleX"

    .line 406
    aput-object v3, v1, v2

    .line 408
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 410
    move-result v2

    .line 413
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 414
    move-result-object v2

    .line 417
    const/4 v3, 0x7

    .line 418
    aput-object v2, v1, v3

    .line 419
    const/16 v2, 0x8

    .line 421
    const-string v3, "folmeScaleY"

    .line 423
    aput-object v3, v1, v2

    .line 425
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 427
    move-result v2

    .line 430
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 431
    move-result-object v2

    .line 434
    const/16 v3, 0x9

    .line 435
    aput-object v2, v1, v3

    .line 437
    const/16 v2, 0xa

    .line 439
    const-string/jumbo v3, "shadowAlpha"

    .line 441
    aput-object v3, v1, v2

    .line 444
    if-eqz v14, :cond_4

    .line 446
    const v15, 0x3ed1eb85    # 0.41f

    .line 448
    goto :goto_1

    .line 451
    :cond_4
    move/from16 v15, v16

    .line 452
    :goto_1
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 454
    move-result-object v2

    .line 457
    const/16 v3, 0xb

    .line 458
    aput-object v2, v1, v3

    .line 460
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 462
    move-result-object v0

    .line 465
    const-string v17, "folmePosX"

    .line 466
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 468
    int-to-float v1, v1

    .line 470
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 471
    move-result v2

    .line 474
    int-to-float v2, v2

    .line 475
    const v3, 0x3e4ccccc    # 0.19999999f

    .line 476
    mul-float/2addr v2, v3

    .line 479
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 480
    move-result v4

    .line 483
    mul-float/2addr v4, v2

    .line 484
    add-float/2addr v4, v1

    .line 485
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 486
    move-result-object v18

    .line 489
    const-string v19, "folmePosY"

    .line 490
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 492
    int-to-float v1, v1

    .line 494
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 495
    move-result v2

    .line 498
    int-to-float v2, v2

    .line 499
    mul-float/2addr v2, v3

    .line 500
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 501
    move-result v4

    .line 504
    mul-float/2addr v4, v2

    .line 505
    add-float/2addr v4, v1

    .line 506
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 507
    move-result-object v20

    .line 510
    const-string v21, "folmeAlpha"

    .line 511
    const/4 v1, 0x0

    .line 513
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 514
    move-result-object v22

    .line 517
    const-string v23, "folmeScaleX"

    .line 518
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 520
    move-result v2

    .line 523
    const v4, 0x3f19999a    # 0.6f

    .line 524
    mul-float/2addr v2, v4

    .line 527
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 528
    move-result-object v24

    .line 531
    const-string v25, "folmeScaleY"

    .line 532
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 534
    move-result v2

    .line 537
    mul-float/2addr v2, v4

    .line 538
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 539
    move-result-object v26

    .line 542
    const-string/jumbo v27, "shadowAlpha"

    .line 543
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 546
    move-result-object v28

    .line 549
    const-string v29, "lCAlpha"

    .line 550
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 552
    move-result-object v30

    .line 555
    const-string v31, "rCAlpha"

    .line 556
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 558
    move-result-object v32

    .line 561
    filled-new-array/range {v17 .. v33}, [Ljava/lang/Object;

    .line 562
    move-result-object v1

    .line 565
    const-string/jumbo v2, "startCloseTransition Ani posX: "

    .line 566
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    move-result-object v0

    .line 572
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 573
    int-to-float v1, v1

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 579
    move-result v1

    .line 582
    int-to-float v1, v1

    .line 583
    mul-float/2addr v1, v3

    .line 584
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 585
    move-result v2

    .line 588
    mul-float/2addr v2, v1

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 590
    const-string v1, "posY: "

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 598
    int-to-float v1, v1

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 604
    move-result v1

    .line 607
    int-to-float v1, v1

    .line 608
    mul-float/2addr v1, v3

    .line 609
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 610
    move-result v2

    .line 613
    mul-float/2addr v2, v1

    .line 614
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, " scaleX: "

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 623
    move-result v1

    .line 626
    mul-float/2addr v1, v4

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 628
    const-string v1, " scaleY: "

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 636
    move-result v1

    .line 639
    mul-float/2addr v1, v4

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-static {v0, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 649
    return v8

    .line 652
    :cond_5
    return v9
    .line 653
.end method

.method private startEnterMiniFreeformAlphaAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    move/from16 v4, p8

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v6, "startEnterMiniFreeformAlphaAnimation miuiFreeformModeTaskInfo: "

    .line 14
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 26
    const-string v6, "MiuiFreeformAnimation"

    .line 27
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 32
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 34
    move-result-object v5

    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v9

    .line 43
    if-ge v8, v9, :cond_2

    .line 44
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v9

    .line 49
    check-cast v9, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v9

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    move-result-object v10

    .line 59
    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 60
    if-eq v9, v10, :cond_1

    .line 62
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 64
    invoke-virtual {v10, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 66
    move-result-object v9

    .line 69
    if-eqz v9, :cond_0

    .line 70
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 72
    move-result-object v10

    .line 75
    iget-object v10, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 76
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 78
    move-result v11

    .line 81
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 82
    move-result v12

    .line 85
    invoke-virtual {v2, v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 89
    move-result-object v10

    .line 92
    iget-object v10, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 93
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 95
    move-result v11

    .line 98
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 99
    move-result v12

    .line 102
    invoke-virtual {v3, v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 103
    :cond_0
    if-eqz v9, :cond_1

    .line 106
    iget-object v10, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 110
    move-result v11

    .line 113
    invoke-static {v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 114
    move-result v10

    .line 117
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 118
    move-result v11

    .line 121
    div-float/2addr v10, v11

    .line 122
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 123
    move-result-object v11

    .line 126
    iget-object v11, v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 127
    invoke-virtual {v2, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 132
    move-result-object v9

    .line 135
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 136
    invoke-virtual {v3, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 138
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    const/4 v3, 0x1

    .line 144
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 145
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 150
    move-result-object v8

    .line 153
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 154
    invoke-interface {v5, v8, v7}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 156
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 161
    move-result-object v8

    .line 164
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 165
    invoke-interface {v5, v8, v7}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLaunchMiniFreeformFromRect()Landroid/graphics/Rect;

    .line 170
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 174
    move-result v5

    .line 177
    if-nez v5, :cond_3

    .line 178
    const/4 v5, 0x0

    .line 180
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLaunchMiniFreeformFromRect(Landroid/graphics/Rect;)V

    .line 181
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 184
    move-result-object v5

    .line 187
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 188
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 193
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 196
    move-result-object v8

    .line 199
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 200
    const/4 v2, 0x2

    .line 202
    if-eqz v4, :cond_5

    .line 203
    if-ne v4, v2, :cond_4

    .line 205
    goto :goto_1

    .line 207
    :cond_4
    move v10, v7

    .line 208
    goto :goto_2

    .line 209
    :cond_5
    :goto_1
    move v10, v3

    .line 210
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 211
    move-result v11

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 215
    move-result-object v12

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalFreeForm()Z

    .line 219
    move-result v13

    .line 222
    invoke-virtual/range {v8 .. v13}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getPossibleBounds(Landroid/content/Context;ZZLjava/lang/String;Z)Landroid/graphics/RectF;

    .line 223
    move-result-object v5

    .line 226
    new-instance v8, Landroid/graphics/Rect;

    .line 227
    iget v9, v5, Landroid/graphics/RectF;->left:F

    .line 229
    float-to-int v9, v9

    .line 231
    iget v10, v5, Landroid/graphics/RectF;->top:F

    .line 232
    float-to-int v10, v10

    .line 234
    iget v11, v5, Landroid/graphics/RectF;->right:F

    .line 235
    float-to-int v11, v11

    .line 237
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 238
    float-to-int v5, v5

    .line 240
    invoke-direct {v8, v9, v10, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 244
    move-result-object v12

    .line 247
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 248
    if-eqz v4, :cond_7

    .line 250
    if-ne v4, v2, :cond_6

    .line 252
    goto :goto_3

    .line 254
    :cond_6
    move v14, v7

    .line 255
    goto :goto_4

    .line 256
    :cond_7
    :goto_3
    move v14, v3

    .line 257
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 258
    move-result v15

    .line 261
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 262
    move-result-object v2

    .line 265
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {v2, v4}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getScreenType(Landroid/content/Context;)I

    .line 268
    move-result v16

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalFreeForm()Z

    .line 272
    move-result v17

    .line 275
    invoke-virtual/range {v12 .. v17}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getFreeFormScale(Landroid/content/Context;ZZIZ)F

    .line 276
    move-result v2

    .line 279
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleX(F)V

    .line 280
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleY(F)V

    .line 283
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 286
    const/16 v4, 0x14

    .line 288
    invoke-virtual {v2, v4, v4, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 290
    move-result-object v2

    .line 293
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 294
    move-result-object v4

    .line 297
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 300
    move-result v9

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 304
    move-result-object v10

    .line 307
    invoke-virtual {v4, v5, v9, v8, v10}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMiniFreeformScale(Landroid/content/Context;ZLandroid/graphics/Rect;Ljava/lang/String;)F

    .line 308
    move-result v4

    .line 311
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 314
    move-result v9

    .line 317
    invoke-static {v5, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 318
    move-result v5

    .line 321
    div-float/2addr v5, v4

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerPosition()I

    .line 323
    move-result v9

    .line 326
    if-ne v9, v3, :cond_8

    .line 327
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 329
    int-to-float v3, v3

    .line 331
    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 332
    goto :goto_5

    .line 334
    :cond_8
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 335
    int-to-float v3, v3

    .line 337
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 338
    move-result v9

    .line 341
    int-to-float v9, v9

    .line 342
    mul-float/2addr v9, v4

    .line 343
    sub-float/2addr v3, v9

    .line 344
    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 345
    :goto_5
    int-to-float v9, v9

    .line 347
    float-to-int v3, v3

    .line 348
    float-to-int v9, v9

    .line 349
    invoke-virtual {v8, v3, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 350
    new-instance v3, Landroid/graphics/Rect;

    .line 353
    invoke-direct {v3, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 355
    invoke-static {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 358
    move-result-object v3

    .line 361
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 362
    invoke-virtual {v9, v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 364
    move-result-object v2

    .line 367
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 368
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 370
    invoke-virtual {v8, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 372
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 375
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 377
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 382
    move-result-object v9

    .line 385
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 386
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 388
    int-to-float v10, v10

    .line 390
    iget v11, v8, Landroid/graphics/Rect;->top:I

    .line 391
    int-to-float v11, v11

    .line 393
    invoke-virtual {v3, v2, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 394
    move-result-object v3

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 398
    move-result-object v9

    .line 401
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 402
    invoke-virtual {v3, v2, v9, v4, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 404
    move-result-object v3

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 408
    move-result-object v9

    .line 411
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 412
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 414
    move-result v10

    .line 417
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 418
    move-result v11

    .line 421
    invoke-virtual {v3, v2, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 422
    move-result-object v3

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 426
    move-result-object v9

    .line 429
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 430
    invoke-virtual {v3, v2, v9, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 432
    move-result-object v3

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 436
    move-result-object v5

    .line 439
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 440
    invoke-virtual {v3, v2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->show(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 442
    move-result-object v3

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 446
    move-result-object v5

    .line 449
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 450
    invoke-virtual {v3, v2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 452
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 455
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 457
    new-instance v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 460
    invoke-direct {v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 462
    invoke-virtual {v5, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 468
    move-result-object v9

    .line 471
    iget-object v9, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 472
    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 474
    invoke-virtual {v3, v9, v5}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 479
    move-result-object v5

    .line 482
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 483
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 485
    invoke-virtual {v3, v5, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 490
    move-result-object v5

    .line 493
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 494
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 496
    invoke-virtual {v3, v5, v2}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 498
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 501
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 504
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 507
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 510
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 513
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 516
    invoke-static/range {p1 .. p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 519
    move-result-object v2

    .line 522
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 523
    iput-object v5, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 525
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 527
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 529
    move-result-object v5

    .line 532
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 533
    move-result v5

    .line 536
    iput v5, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getEnterMiniFreeformReason()Ljava/lang/String;

    .line 539
    move-result-object v5

    .line 542
    iput-object v5, v2, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 543
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 545
    move-result-object v5

    .line 548
    invoke-virtual {v5, v2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 549
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 552
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->miniFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 554
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 557
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 559
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 562
    move-result v2

    .line 565
    const/16 v5, 0xc

    .line 566
    if-ne v2, v5, :cond_9

    .line 568
    new-instance v2, Landroid/graphics/Rect;

    .line 570
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 572
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 575
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 581
    move-result-object v2

    .line 584
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 585
    move-result-object v2

    .line 588
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 589
    move-result-object v2

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 593
    move-result-object v5

    .line 596
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 597
    int-to-float v5, v5

    .line 599
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 600
    move-result-object v5

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 604
    move-result-object v7

    .line 607
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 608
    int-to-float v7, v7

    .line 610
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 611
    move-result-object v7

    .line 614
    const-string v9, "folmePosX"

    .line 615
    const-string v10, "folmePosY"

    .line 617
    filled-new-array {v9, v5, v10, v7}, [Ljava/lang/Object;

    .line 619
    move-result-object v5

    .line 622
    invoke-interface {v2, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 623
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 626
    const-string/jumbo v5, "startEnterMiniFreeformAlphaAnimation setDestinationBounds: "

    .line 628
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    const-string v5, " scale: "

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 642
    const-string v4, "miuiFreeformModeTaskInfo: "

    .line 645
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-static {v2, v1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 650
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 653
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 655
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda2;

    .line 657
    move-object/from16 v2, p5

    .line 659
    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    .line 661
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 664
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 666
    return-void
    .line 669
.end method

.method private startEnterMiniFreeformAnim(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 9

    .line 1
    move v7, p6

    .line 2
    move/from16 v8, p7

    .line 3
    if-ne v7, v8, :cond_0

    .line 5
    move-object v0, p0

    .line 7
    move-object/from16 v1, p8

    .line 8
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startEnterMiniFreeformBoundsAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p0

    .line 19
    move-object/from16 v1, p8

    .line 20
    move-object v2, p1

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move-object v5, p4

    .line 25
    move-object v6, p5

    .line 26
    move v7, p6

    .line 27
    move/from16 v8, p7

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startEnterMiniFreeformAlphaAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;II)V

    .line 30
    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 33
    const/4 v1, -0x1

    .line 35
    const/4 v2, 0x1

    .line 36
    move-object/from16 v3, p8

    .line 37
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 39
    return-void
    .line 42
.end method

.method private startEnterMiniFreeformBoundsAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V
    .locals 28

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    move-object/from16 v0, p3

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 9
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 14
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    const/4 v3, 0x0

    .line 20
    invoke-interface {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 21
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 26
    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    invoke-interface {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 35
    move-result v1

    .line 38
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleX(F)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 42
    move-result v1

    .line 45
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleY(F)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLaunchMiniFreeformFromRect()Landroid/graphics/Rect;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 53
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 61
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 65
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLaunchMiniFreeformFromRect()Landroid/graphics/Rect;

    .line 69
    move-result-object v1

    .line 72
    :goto_0
    move-object v10, v1

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getLaunchMiniFreeformFromRect()Landroid/graphics/Rect;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 78
    move-result v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLaunchMiniFreeformFromRect(Landroid/graphics/Rect;)V

    .line 85
    :cond_1
    new-instance v11, Landroid/graphics/Rect;

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object v1

    .line 93
    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 97
    move-result v1

    .line 100
    int-to-float v1, v1

    .line 101
    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    mul-float/2addr v1, v2

    .line 104
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 105
    move-result v4

    .line 108
    int-to-float v4, v4

    .line 109
    div-float v12, v1, v4

    .line 110
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 112
    move-result v1

    .line 115
    int-to-float v1, v1

    .line 116
    mul-float/2addr v1, v2

    .line 117
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 118
    move-result v4

    .line 121
    int-to-float v4, v4

    .line 122
    div-float v13, v1, v4

    .line 123
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 125
    move-result-object v1

    .line 128
    iget-object v4, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isLandcapeFreeform()Z

    .line 131
    move-result v5

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 135
    move-result-object v6

    .line 138
    invoke-virtual {v1, v4, v5, v11, v6}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMiniFreeformScale(Landroid/content/Context;ZLandroid/graphics/Rect;Ljava/lang/String;)F

    .line 139
    move-result v14

    .line 142
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 143
    const/16 v4, 0x14

    .line 145
    invoke-virtual {v1, v4, v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 147
    move-result-object v1

    .line 150
    new-instance v4, Landroid/graphics/Rect;

    .line 151
    invoke-direct {v4, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 153
    invoke-static {v4, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 156
    move-result-object v4

    .line 159
    iget-object v5, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 160
    invoke-virtual {v5, v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->adjustBoundsForSidebarIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 162
    move-result-object v1

    .line 165
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 166
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 168
    invoke-virtual {v11, v4, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 170
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 175
    move-result v4

    .line 178
    invoke-static {v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 179
    move-result v1

    .line 182
    div-float v15, v1, v14

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 185
    move-result-object v1

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 189
    move-result-object v4

    .line 192
    iput-object v4, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 193
    iget-object v1, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 197
    move-result-object v4

    .line 200
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 201
    int-to-float v5, v5

    .line 203
    iget v6, v10, Landroid/graphics/Rect;->top:I

    .line 204
    int-to-float v6, v6

    .line 206
    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 207
    move-result-object v1

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 211
    move-result-object v4

    .line 214
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 215
    move-result v5

    .line 218
    int-to-float v5, v5

    .line 219
    mul-float/2addr v5, v2

    .line 220
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 221
    move-result v6

    .line 224
    int-to-float v6, v6

    .line 225
    div-float/2addr v5, v6

    .line 226
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 227
    move-result v6

    .line 230
    int-to-float v6, v6

    .line 231
    mul-float/2addr v6, v2

    .line 232
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 233
    move-result v2

    .line 236
    int-to-float v2, v2

    .line 237
    div-float/2addr v6, v2

    .line 238
    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 239
    move-result-object v1

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 243
    move-result-object v2

    .line 246
    new-instance v4, Landroid/graphics/Rect;

    .line 247
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 249
    move-result v5

    .line 252
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 253
    move-result v6

    .line 256
    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 260
    move-result-object v1

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 264
    move-result-object v2

    .line 267
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->show(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 268
    move-result-object v1

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 272
    move-result-object v2

    .line 275
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 276
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 279
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 281
    const/4 v1, 0x2

    .line 284
    new-array v1, v1, [F

    .line 285
    fill-array-data v1, :array_0

    .line 287
    const/4 v2, -0x2

    .line 290
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 291
    move-result-object v7

    .line 294
    new-instance v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$26;

    .line 295
    move-object v0, v6

    .line 297
    move-object/from16 v1, p0

    .line 298
    move-object/from16 v2, p1

    .line 300
    move-object/from16 v3, p2

    .line 302
    move-object v4, v11

    .line 304
    move-object/from16 v5, p4

    .line 305
    move/from16 p6, v13

    .line 307
    move-object v13, v6

    .line 309
    move v6, v15

    .line 310
    move/from16 v16, v15

    .line 311
    move-object v15, v7

    .line 313
    move-object/from16 v7, p5

    .line 314
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$26;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;FLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 316
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 319
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 321
    const-string v1, "FF_NoUI/FREEFORM_ACTION_SHOW"

    .line 323
    invoke-direct {v0, v13, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 325
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 328
    move-result-object v0

    .line 331
    invoke-virtual {v15, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 332
    move-result-object v27

    .line 335
    invoke-virtual {v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {v9, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 339
    invoke-virtual {v9, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 342
    invoke-virtual {v9, v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 345
    const/16 v0, 0x13

    .line 348
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 350
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 353
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->miniFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 355
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 358
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->clearAllRestoreMiniBounds()V

    .line 360
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 363
    invoke-static/range {p1 .. p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 366
    move-result-object v1

    .line 369
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 370
    iput-object v2, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 372
    iget-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 374
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 376
    move-result-object v2

    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 380
    move-result v2

    .line 383
    iput v2, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getEnterMiniFreeformReason()Ljava/lang/String;

    .line 386
    move-result-object v2

    .line 389
    iput-object v2, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 390
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 392
    move-result-object v2

    .line 395
    invoke-virtual {v2, v1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 396
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 402
    move-result-object v0

    .line 405
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 406
    move-result-object v0

    .line 409
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 410
    move-result-object v0

    .line 413
    const-string v17, "folmePosX"

    .line 414
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 416
    int-to-float v1, v1

    .line 418
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 419
    move-result-object v18

    .line 422
    const-string v19, "folmePosY"

    .line 423
    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 425
    int-to-float v1, v1

    .line 427
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 428
    move-result-object v20

    .line 431
    const-string v21, "folmeScaleX"

    .line 432
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 434
    move-result-object v22

    .line 437
    const-string v23, "folmeScaleY"

    .line 438
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 440
    move-result-object v24

    .line 443
    const-string v25, "radius"

    .line 444
    const/4 v1, 0x0

    .line 446
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 447
    move-result-object v26

    .line 450
    filled-new-array/range {v17 .. v26}, [Ljava/lang/Object;

    .line 451
    move-result-object v1

    .line 454
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 455
    move-result-object v0

    .line 458
    const-string v17, "folmePosX"

    .line 459
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    move-result-object v18

    .line 466
    const-string v19, "folmePosY"

    .line 467
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    move-result-object v20

    .line 474
    const-string v21, "folmeScaleX"

    .line 475
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 477
    move-result-object v22

    .line 480
    const-string v23, "folmeScaleY"

    .line 481
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 483
    move-result-object v24

    .line 486
    const-string v25, "radius"

    .line 487
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 489
    move-result-object v26

    .line 492
    filled-new-array/range {v17 .. v27}, [Ljava/lang/Object;

    .line 493
    move-result-object v1

    .line 496
    const-string/jumbo v2, "startEnterMiniFreeformBoundsAnimation Ani  toPosX: "

    .line 497
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    move-result-object v0

    .line 503
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    const-string v1, " toPosY: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, " toScaleX: "

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, " toScaleY: "

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, " toRadius: "

    .line 532
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 534
    move/from16 v3, v16

    .line 536
    invoke-static {v0, v14, v1, v3, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 538
    const-string v1, "MiuiFreeformAnimation"

    .line 541
    invoke-static {v0, v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 543
    return-void

    .line 546
    nop

    .line 547
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 548
.end method

.method private startFullScreenToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 10
    move-result-object v4

    .line 13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v4

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v5

    .line 21
    const/high16 v6, 0x3f800000    # 1.0f

    .line 22
    if-eqz v5, :cond_1

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 29
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 30
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    move-result-object v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v7

    .line 41
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    move-result-object v7

    .line 45
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 46
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 48
    move-result v7

    .line 51
    const/4 v8, 0x5

    .line 52
    if-eq v7, v8, :cond_0

    .line 53
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 55
    move-result v7

    .line 58
    const/4 v8, 0x3

    .line 59
    if-ne v7, v8, :cond_0

    .line 60
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 62
    move-result-object v5

    .line 65
    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v5

    .line 75
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 76
    new-instance v5, Landroid/graphics/Rect;

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 81
    move-result-object v7

    .line 84
    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 85
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 90
    move-result v8

    .line 93
    invoke-static {v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 94
    move-result v7

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 98
    move-result v8

    .line 101
    div-float/2addr v7, v8

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 103
    move-result-object v8

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 107
    move-result-object v9

    .line 110
    iput-object v9, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 111
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 115
    move-result-object v9

    .line 118
    iget v10, v4, Landroid/graphics/Rect;->left:I

    .line 119
    int-to-float v10, v10

    .line 121
    iget v11, v4, Landroid/graphics/Rect;->top:I

    .line 122
    int-to-float v11, v11

    .line 124
    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 125
    move-result-object v8

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 129
    move-result-object v9

    .line 132
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 133
    move-result v10

    .line 136
    int-to-float v10, v10

    .line 137
    mul-float/2addr v10, v6

    .line 138
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 139
    move-result v11

    .line 142
    int-to-float v11, v11

    .line 143
    div-float/2addr v10, v11

    .line 144
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 145
    move-result v11

    .line 148
    int-to-float v11, v11

    .line 149
    mul-float/2addr v11, v6

    .line 150
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 151
    move-result v12

    .line 154
    int-to-float v12, v12

    .line 155
    div-float/2addr v11, v12

    .line 156
    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 157
    move-result-object v8

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 161
    move-result-object v9

    .line 164
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 165
    move-result v10

    .line 168
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 169
    move-result v11

    .line 172
    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 173
    move-result-object v8

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 177
    move-result-object v9

    .line 180
    const/4 v10, 0x0

    .line 181
    invoke-virtual {v8, v2, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 182
    move-result-object v8

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 186
    move-result-object v9

    .line 189
    invoke-virtual {v8, v2, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 190
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 195
    move-result-object v8

    .line 198
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 199
    move-result v9

    .line 202
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 203
    move-result v11

    .line 206
    invoke-virtual {v2, v3, v8, v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 207
    move-result-object v2

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 211
    move-result-object v8

    .line 214
    invoke-virtual {v2, v3, v8, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 215
    move-result-object v2

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 219
    move-result-object v8

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 223
    move-result v9

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 227
    move-result v11

    .line 230
    invoke-virtual {v2, v3, v8, v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 231
    move-result-object v2

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 235
    move-result-object v8

    .line 238
    invoke-virtual {v2, v3, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 239
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 242
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 244
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$30;

    .line 247
    move-object/from16 v8, p5

    .line 249
    invoke-direct {v3, v0, v1, v8, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$30;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/graphics/Rect;)V

    .line 251
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 254
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 256
    const-string v8, "FF_NoUI/FREEFORM_ACTION_SHOW"

    .line 258
    invoke-direct {v0, v3, v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 260
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 263
    move-result-object v0

    .line 266
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 267
    move-result-object v0

    .line 270
    const/4 v2, 0x2

    .line 271
    new-array v2, v2, [F

    .line 272
    fill-array-data v2, :array_0

    .line 274
    const/4 v3, -0x2

    .line 277
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 278
    invoke-static {v8}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 281
    const/16 v2, 0x12

    .line 284
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 289
    move-result-object v2

    .line 292
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 293
    move-result-object v2

    .line 296
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 297
    move-result-object v2

    .line 300
    const-string v11, "folmePosX"

    .line 301
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 303
    int-to-float v3, v3

    .line 305
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 306
    move-result-object v12

    .line 309
    const-string v13, "folmePosY"

    .line 310
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 312
    int-to-float v3, v3

    .line 314
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    move-result-object v14

    .line 318
    const-string v15, "folmeScaleX"

    .line 319
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 321
    move-result v3

    .line 324
    int-to-float v3, v3

    .line 325
    mul-float/2addr v3, v6

    .line 326
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 327
    move-result v8

    .line 330
    int-to-float v8, v8

    .line 331
    div-float/2addr v3, v8

    .line 332
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v16

    .line 336
    const-string v17, "folmeScaleY"

    .line 337
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 339
    move-result v3

    .line 342
    int-to-float v3, v3

    .line 343
    mul-float/2addr v3, v6

    .line 344
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 345
    move-result v8

    .line 348
    int-to-float v8, v8

    .line 349
    div-float/2addr v3, v8

    .line 350
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 351
    move-result-object v18

    .line 354
    const-string v19, "radius"

    .line 355
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 357
    move-result-object v20

    .line 360
    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    .line 361
    move-result-object v3

    .line 364
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 365
    move-result-object v2

    .line 368
    const-string v11, "folmePosX"

    .line 369
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 371
    int-to-float v3, v3

    .line 373
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 374
    move-result-object v12

    .line 377
    const-string v13, "folmePosY"

    .line 378
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 380
    int-to-float v3, v3

    .line 382
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    move-result-object v14

    .line 386
    const-string v15, "folmeScaleX"

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 389
    move-result v3

    .line 392
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 393
    move-result-object v16

    .line 396
    const-string v17, "folmeScaleY"

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 399
    move-result v3

    .line 402
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 403
    move-result-object v18

    .line 406
    const-string v19, "radius"

    .line 407
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    move-result-object v20

    .line 412
    move-object/from16 v21, v0

    .line 413
    filled-new-array/range {v11 .. v21}, [Ljava/lang/Object;

    .line 415
    move-result-object v0

    .line 418
    const-string/jumbo v3, "startFullScreenToFreeformAnimation   from poxX: "

    .line 419
    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    move-result-object v0

    .line 425
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    const-string v2, " from posY: "

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    const-string v2, " from scaleX: "

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 446
    move-result v2

    .line 449
    int-to-float v2, v2

    .line 450
    mul-float/2addr v2, v6

    .line 451
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 452
    move-result v3

    .line 455
    int-to-float v3, v3

    .line 456
    div-float/2addr v2, v3

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 458
    const-string v2, " from scaleY: "

    .line 461
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 466
    move-result v2

    .line 469
    int-to-float v2, v2

    .line 470
    mul-float/2addr v2, v6

    .line 471
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 472
    move-result v3

    .line 475
    int-to-float v3, v3

    .line 476
    div-float/2addr v2, v3

    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 478
    const-string v2, " from Radius: 0 to poxX: "

    .line 481
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    const-string v2, " to posY: "

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const-string v2, " to scaleX: "

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 506
    move-result v2

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, " to scaleY: "

    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 518
    move-result v2

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 522
    const-string v2, " from Radius: "

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 530
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 533
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v0

    .line 544
    const-string v1, "MiuiFreeformAnimation"

    .line 545
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 550
    nop

    .line 551
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 552
.end method

.method private startHideFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 8
    move-result-object v3

    .line 11
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 14
    invoke-interface {v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformHide(I)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v2

    .line 22
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 25
    move-result v2

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpEludeBounds()Landroid/graphics/Rect;

    .line 39
    move-result-object v3

    .line 42
    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 45
    move-result v5

    .line 48
    invoke-static {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 49
    move-result v4

    .line 52
    div-float/2addr v4, v2

    .line 53
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 54
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 56
    new-instance v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$2;

    .line 59
    invoke-direct {v6, v0, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 61
    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 68
    move-result-object v0

    .line 71
    const/4 v5, 0x2

    .line 72
    new-array v5, v5, [F

    .line 73
    fill-array-data v5, :array_0

    .line 75
    const/4 v6, -0x2

    .line 78
    invoke-virtual {v0, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 79
    const-wide/16 v5, 0x32

    .line 82
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 84
    const/16 v5, 0x10

    .line 87
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 92
    move-result-object v5

    .line 95
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 99
    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 100
    move-result-object v5

    .line 103
    const-string v6, "folmePosX"

    .line 104
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 106
    int-to-float v7, v7

    .line 108
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    move-result-object v7

    .line 112
    const-string v8, "folmePosY"

    .line 113
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 115
    int-to-float v9, v9

    .line 117
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 118
    move-result-object v9

    .line 121
    const-string v10, "folmeScaleX"

    .line 122
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    move-result-object v11

    .line 127
    const-string v12, "folmeScaleY"

    .line 128
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    move-result-object v13

    .line 133
    const-string v14, "folmeAlpha"

    .line 134
    const/high16 v15, 0x3f800000    # 1.0f

    .line 136
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    move-result-object v15

    .line 141
    const-string v16, "radius"

    .line 142
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 144
    move-result-object v17

    .line 147
    filled-new-array/range {v6 .. v17}, [Ljava/lang/Object;

    .line 148
    move-result-object v6

    .line 151
    invoke-interface {v5, v6}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 152
    move-result-object v5

    .line 155
    const-string v6, "folmePosX"

    .line 156
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 158
    int-to-double v7, v7

    .line 160
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 161
    move-result v9

    .line 164
    int-to-float v9, v9

    .line 165
    mul-float/2addr v9, v2

    .line 166
    float-to-double v9, v9

    .line 167
    const-wide v11, 0x3fe3333333333333L    # 0.6

    .line 168
    mul-double/2addr v9, v11

    .line 173
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 174
    div-double/2addr v9, v13

    .line 176
    add-double/2addr v9, v7

    .line 177
    double-to-float v7, v9

    .line 178
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 179
    move-result-object v7

    .line 182
    const-string v8, "folmePosY"

    .line 183
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 185
    int-to-double v9, v9

    .line 187
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 188
    move-result v15

    .line 191
    int-to-float v15, v15

    .line 192
    mul-float/2addr v15, v2

    .line 193
    move-object/from16 p0, v0

    .line 194
    float-to-double v0, v15

    .line 196
    mul-double/2addr v0, v11

    .line 197
    div-double/2addr v0, v13

    .line 198
    add-double/2addr v0, v9

    .line 199
    double-to-float v0, v0

    .line 200
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    move-result-object v9

    .line 204
    const-string v10, "folmeScaleX"

    .line 205
    const v0, 0x3ecccccd    # 0.4f

    .line 207
    mul-float/2addr v0, v2

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 211
    move-result-object v11

    .line 214
    const-string v12, "folmeScaleY"

    .line 215
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 217
    move-result-object v13

    .line 220
    const-string v14, "folmeAlpha"

    .line 221
    const/4 v1, 0x0

    .line 223
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    move-result-object v15

    .line 227
    const-string v16, "radius"

    .line 228
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 230
    move-result-object v17

    .line 233
    move-object/from16 v18, p0

    .line 234
    filled-new-array/range {v6 .. v18}, [Ljava/lang/Object;

    .line 236
    move-result-object v1

    .line 239
    const-string/jumbo v6, "startHideFreeformAnimation   from poxX: "

    .line 240
    invoke-static {v5, v1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    move-result-object v1

    .line 246
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 247
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string v5, " from posY: "

    .line 252
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 257
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string v5, " from scaleX: "

    .line 262
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 267
    const-string v5, " from scaleY: "

    .line 270
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v5, " from Radius: "

    .line 275
    const-string v6, " to poxX: "

    .line 277
    invoke-static {v1, v2, v5, v4, v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 279
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    const-string v2, " to posY: "

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, " to scaleX: "

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, " to scaleY: "

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 310
    invoke-static {v1, v0, v5, v4, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 312
    const-string v0, "MiuiFreeformAnimation"

    .line 315
    move-object/from16 v2, p1

    .line 317
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    nop

    .line 323
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 324
.end method

.method private startHideFreeformTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p5

    .line 6
    move-object/from16 v3, p6

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    .line 10
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v5

    .line 15
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 16
    new-instance v5, Landroid/graphics/Rect;

    .line 19
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v6

    .line 24
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 25
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 30
    move-result v7

    .line 33
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 34
    move-result v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 38
    move-result v7

    .line 41
    div-float/2addr v6, v7

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 43
    move-result-object v7

    .line 46
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 47
    move-result-object v8

    .line 50
    iput-object v8, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 51
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 53
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 55
    move-result-object v8

    .line 58
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 59
    int-to-float v9, v9

    .line 61
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 62
    int-to-float v10, v10

    .line 64
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 65
    move-result-object v7

    .line 68
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 69
    move-result-object v8

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 73
    move-result v9

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 77
    move-result v10

    .line 80
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 81
    move-result-object v7

    .line 84
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 85
    move-result-object v8

    .line 88
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 89
    move-result v9

    .line 92
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 93
    move-result v10

    .line 96
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 97
    move-result-object v7

    .line 100
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 101
    move-result-object v8

    .line 104
    invoke-virtual {v7, v2, v8, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 105
    move-result-object v7

    .line 108
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 109
    move-result-object v8

    .line 112
    const/high16 v9, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {v7, v2, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 115
    move-result-object v7

    .line 118
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 119
    move-result-object v8

    .line 122
    invoke-virtual {v7, v2, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 123
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 126
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 128
    move-result-object v8

    .line 131
    iget v10, v5, Landroid/graphics/Rect;->left:I

    .line 132
    int-to-float v10, v10

    .line 134
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 135
    int-to-float v11, v11

    .line 137
    invoke-virtual {v7, v2, v8, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 138
    move-result-object v2

    .line 141
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 142
    move-result-object v7

    .line 145
    const v8, 0x3ecccccd    # 0.4f

    .line 146
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v17

    .line 152
    invoke-virtual {v2, v3, v7, v8, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 153
    move-result-object v2

    .line 156
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 157
    move-result-object v7

    .line 160
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 161
    move-result v8

    .line 164
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 165
    move-result v10

    .line 168
    invoke-virtual {v2, v3, v7, v8, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 169
    move-result-object v2

    .line 172
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 173
    move-result-object v7

    .line 176
    invoke-virtual {v2, v3, v7, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 177
    move-result-object v2

    .line 180
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 181
    move-result-object v7

    .line 184
    const/4 v8, 0x0

    .line 185
    invoke-virtual {v2, v3, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 186
    move-result-object v2

    .line 189
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 190
    move-result-object v7

    .line 193
    invoke-virtual {v2, v3, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 194
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 197
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 199
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$29;

    .line 202
    move-object/from16 v7, p7

    .line 204
    invoke-direct {v3, v0, v1, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$29;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 206
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 209
    move-result-object v0

    .line 212
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 213
    move-result-object v0

    .line 216
    const/4 v2, 0x2

    .line 217
    new-array v2, v2, [F

    .line 218
    fill-array-data v2, :array_0

    .line 220
    const/4 v3, -0x2

    .line 223
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 227
    move-result-object v2

    .line 230
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 234
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 235
    move-result-object v2

    .line 238
    const-string v18, "folmePosX"

    .line 239
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 241
    int-to-float v3, v3

    .line 243
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v19

    .line 247
    const-string v20, "folmePosY"

    .line 248
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 250
    int-to-float v3, v3

    .line 252
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 253
    move-result-object v21

    .line 256
    const-string v22, "folmeScaleX"

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 259
    move-result v3

    .line 262
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    move-result-object v23

    .line 266
    const-string v24, "folmeScaleY"

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 269
    move-result v3

    .line 272
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    move-result-object v25

    .line 276
    const-string v26, "folmeAlpha"

    .line 277
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    move-result-object v27

    .line 282
    const-string v28, "radius"

    .line 283
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 285
    move-result-object v29

    .line 288
    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    .line 289
    move-result-object v3

    .line 292
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 293
    move-result-object v2

    .line 296
    const-string v10, "folmePosX"

    .line 297
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 299
    int-to-float v3, v3

    .line 301
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 302
    move-result-object v11

    .line 305
    const-string v12, "folmePosY"

    .line 306
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 308
    int-to-float v3, v3

    .line 310
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 311
    move-result-object v13

    .line 314
    const-string v14, "folmeScaleX"

    .line 315
    const-string v16, "folmeScaleY"

    .line 317
    const-string v18, "folmeAlpha"

    .line 319
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    move-result-object v19

    .line 324
    const-string v20, "radius"

    .line 325
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    move-result-object v21

    .line 330
    move-object/from16 v15, v17

    .line 331
    move-object/from16 v22, v0

    .line 333
    filled-new-array/range {v10 .. v22}, [Ljava/lang/Object;

    .line 335
    move-result-object v0

    .line 338
    const-string/jumbo v3, "startHideFreeformTransition   from poxX: "

    .line 339
    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-result-object v0

    .line 345
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v2, " from posY: "

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const-string v2, " from scaleX: "

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 366
    move-result v2

    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, " from scaleY: "

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 378
    move-result v2

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, " from Radius: "

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, " to poxX: "

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    const-string v2, " to posY: "

    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const-string v2, " to scaleX: 0.4 to scaleY: 0.4 from Radius: "

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 418
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, "MiuiFreeformAnimation"

    .line 426
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    .line 431
    return v0

    .line 432
    nop

    .line 433
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 434
.end method

.method private startMiuiFreeformMaximizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    .line 4
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    move-result v7

    .line 7
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    .line 8
    invoke-virtual {v1, v9, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius(ZI)F

    move-result v7

    .line 9
    invoke-static {v8, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result v7

    .line 10
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    move-result v9

    mul-float/2addr v9, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v9, v8

    .line 12
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    move-result v10

    mul-float/2addr v10, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float v8, v9, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v7, v8

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    iput-object v11, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 15
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    iget v12, v5, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v13, v5, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v8, v2, v11, v12, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    move-result-object v8

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v8, v2, v11, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    move-result-object v8

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v8, v2, v11, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    move-result-object v8

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v8, v2, v11, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    move-result-object v8

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v8, v2, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object v8

    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    iget v11, v6, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v8, v11, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    move-result-object v2

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    move-result-object v2

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 27
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;

    move-object/from16 v6, p5

    invoke-direct {v3, v0, v1, v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$27;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    const-string v6, "FF_NoUI/FREEFORM_ACTION_ENTER_FULL_SCREEN"

    invoke-direct {v0, v3, v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 29
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 30
    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 31
    invoke-static {v6}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const-string v11, "folmePosX"

    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 33
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "folmePosY"

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 34
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const-string v15, "folmeScaleX"

    .line 35
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const-string v17, "folmeScaleY"

    .line 36
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const-string v19, "radius"

    .line 37
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    move-result-object v3

    .line 38
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const-string v11, "folmePosX"

    .line 39
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "folmePosY"

    .line 40
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const-string v15, "folmeScaleX"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const-string v17, "folmeScaleY"

    .line 42
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const-string v19, "radius"

    .line 43
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v21, v0

    filled-new-array/range {v11 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "startMiuiFreeformMaximizeAnimation   from poxX: "

    .line 44
    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from posY: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const-string v3, " from scaleX: "

    const-string v5, " from scaleY: "

    .line 46
    invoke-static {v0, v2, v3, v9, v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v2, " from Radius: "

    const-string v3, " shouldCallFinishCallback: "

    invoke-static {v0, v10, v2, v7, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " miuiFreeformModeTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFreeformAnimation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private startMiuiFreeformMaximizeAnimation(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z
    .locals 9

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    move-object v2, p1

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    const v3, 0x7ffffff1

    move v4, p2

    if-ne v4, v3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiuiFreeformMaximizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)V

    return v8

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startMiuiFreeformMaximizeMoveToBackTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    move-result-object p1

    .line 15
    const v1, 0x7ffffff3

    .line 16
    if-ne p2, v1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 21
    move-result p1

    .line 24
    const/4 p2, 0x1

    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 31
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 33
    move-result-object p4

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, p5, p4, v1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 42
    move-result-object p4

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p1, p5, p4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 52
    move-result-object p4

    .line 55
    invoke-virtual {p1, p5, p4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 60
    move-result-object p4

    .line 63
    invoke-virtual {p1, p5, p4, v0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 68
    move-result-object p3

    .line 71
    invoke-virtual {p1, p5, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 72
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 77
    new-instance p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;

    .line 79
    invoke-direct {p1, v0, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 81
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    move v0, p2

    .line 89
    :cond_1
    return v0
    .line 90
.end method

.method private startMoveToFrontAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v11, p6

    .line 6
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNeedAnimation()Z

    .line 8
    move-result v12

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v12, :cond_0

    .line 13
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 15
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 17
    invoke-virtual {v11, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setNeedAnimation(Z)V

    .line 20
    new-instance v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 23
    invoke-direct {v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 25
    invoke-virtual {v4, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setNeedAnimation(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 28
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 31
    move-result-object v5

    .line 34
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 37
    invoke-virtual {v3, v5, v4}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 39
    iget-object v4, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 42
    invoke-virtual {v4, v3}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 44
    :cond_0
    iget-object v3, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v3}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 49
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    if-eqz v3, :cond_1

    .line 54
    iget-object v3, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 56
    const/4 v5, -0x1

    .line 58
    invoke-virtual {v3, v11, v5, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 59
    :cond_1
    const/16 v3, 0xd

    .line 62
    invoke-virtual {v11, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 64
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    move-result-object v3

    .line 70
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 71
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v3

    .line 76
    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 79
    move-result v6

    .line 82
    invoke-static {v5, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 83
    move-result v5

    .line 86
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 87
    move-result v6

    .line 90
    div-float v9, v5, v6

    .line 91
    new-instance v13, Landroid/graphics/Rect;

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 95
    move-result-object v5

    .line 98
    invoke-direct {v13, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 99
    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 104
    move-result-object v6

    .line 107
    iget v7, v13, Landroid/graphics/Rect;->left:I

    .line 108
    int-to-float v7, v7

    .line 110
    iget v8, v13, Landroid/graphics/Rect;->top:I

    .line 111
    int-to-float v8, v8

    .line 113
    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 114
    move-result-object v5

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 118
    move-result-object v6

    .line 121
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 122
    move-result v7

    .line 125
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 126
    move-result v8

    .line 129
    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 130
    move-result-object v5

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 134
    move-result-object v6

    .line 137
    const/4 v7, 0x0

    .line 138
    invoke-virtual {v5, v0, v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 139
    move-result-object v5

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 143
    move-result-object v6

    .line 146
    invoke-virtual {v5, v0, v6, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 147
    move-result-object v5

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 151
    move-result-object v6

    .line 154
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 155
    move-result v7

    .line 158
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 159
    move-result v3

    .line 162
    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 163
    move-result-object v3

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 167
    move-result-object v5

    .line 170
    invoke-virtual {v3, v0, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 171
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    .line 174
    move-result v3

    .line 177
    const/4 v5, 0x2

    .line 178
    if-nez v3, :cond_2

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 181
    move-result-object v3

    .line 184
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 185
    const/16 v0, 0xa

    .line 188
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 190
    new-instance v3, Landroid/graphics/Rect;

    .line 193
    invoke-direct {v3, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 195
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 198
    move-result v6

    .line 201
    invoke-static {v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 202
    iget-object v6, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 205
    invoke-interface {v6, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getCaptionHeight(Z)I

    .line 207
    move-result v6

    .line 210
    int-to-float v6, v6

    .line 211
    const/high16 v7, 0x40000000    # 2.0f

    .line 212
    div-float/2addr v6, v7

    .line 214
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 215
    move-result v7

    .line 218
    mul-float/2addr v7, v6

    .line 219
    iget-object v6, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    move-result-object v6

    .line 225
    const v8, 0x7f0702db    # @dimen/dotRadius '2.0dp'

    .line 226
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    move-result v6

    .line 232
    int-to-float v6, v6

    .line 233
    add-float/2addr v7, v6

    .line 234
    iget-object v6, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 235
    const/high16 v8, 0x40800000    # 4.0f

    .line 237
    invoke-static {v6, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 239
    move-result v6

    .line 242
    add-float/2addr v6, v7

    .line 243
    float-to-int v6, v6

    .line 244
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->hasTipViewType(I)Z

    .line 245
    move-result v0

    .line 248
    if-nez v0, :cond_2

    .line 249
    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 251
    iget v7, v3, Landroid/graphics/Rect;->right:I

    .line 253
    add-int/2addr v0, v7

    .line 255
    div-int/2addr v0, v5

    .line 256
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 257
    add-int/2addr v3, v6

    .line 259
    invoke-static {v4, v0, v3, v4}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 260
    :cond_2
    invoke-virtual {v11, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 263
    invoke-virtual {v11, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 266
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 269
    move-result v0

    .line 272
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 273
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 276
    move-result v0

    .line 279
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 280
    invoke-direct {v1, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->otherNormalFreeformAvoidIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 283
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    .line 286
    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 288
    new-instance v15, Lmiuix/animation/base/AnimConfig;

    .line 291
    invoke-direct {v15}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 293
    const-string v14, "folmeAlpha"

    .line 296
    if-eqz v12, :cond_3

    .line 298
    new-array v0, v5, [F

    .line 300
    fill-array-data v0, :array_0

    .line 302
    const/4 v3, -0x2

    .line 305
    invoke-static {v3, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 306
    move-result-object v0

    .line 309
    new-array v7, v4, [F

    .line 310
    const-string v8, "folmePosZ"

    .line 312
    invoke-virtual {v15, v8, v0, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 314
    move-result-object v0

    .line 317
    new-array v5, v5, [F

    .line 318
    fill-array-data v5, :array_1

    .line 320
    invoke-static {v3, v5}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 323
    move-result-object v3

    .line 326
    new-array v5, v4, [F

    .line 327
    const-string v7, "folmeRotateX"

    .line 329
    invoke-virtual {v0, v7, v3, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 331
    move-result-object v0

    .line 334
    new-array v3, v2, [F

    .line 335
    const/high16 v5, 0x42480000    # 50.0f

    .line 337
    aput v5, v3, v4

    .line 339
    invoke-static {v2, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 341
    move-result-object v2

    .line 344
    new-array v3, v4, [F

    .line 345
    invoke-virtual {v0, v14, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 347
    :cond_3
    new-instance v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$25;

    .line 350
    move-object v0, v10

    .line 352
    move-object/from16 v1, p0

    .line 353
    move-object/from16 v2, p6

    .line 355
    move-object/from16 v3, p4

    .line 357
    move-object v4, v13

    .line 359
    move v5, v12

    .line 360
    move-object/from16 v7, p2

    .line 361
    move-object/from16 v8, p3

    .line 363
    move-object/from16 v21, v13

    .line 365
    move-object v13, v10

    .line 367
    move-object/from16 v10, p5

    .line 368
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$25;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;FLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 370
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 373
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 375
    const-string v1, "FF_NoUI/FREEFORM_ACTION_SHOW"

    .line 377
    invoke-direct {v0, v13, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 379
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 382
    move-result-object v0

    .line 385
    invoke-virtual {v15, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 386
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 389
    const/16 v0, 0xd

    .line 392
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    .line 397
    if-eqz v12, :cond_4

    .line 399
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 401
    move-result-object v1

    .line 404
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 405
    move-result-object v1

    .line 408
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 409
    move-result-object v1

    .line 412
    const-string v2, "folmeAlpha"

    .line 413
    const/4 v3, 0x0

    .line 415
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 416
    move-result-object v3

    .line 419
    const-string v4, "folmePosZ"

    .line 420
    const v5, 0x45abe000    # 5500.0f

    .line 422
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 425
    move-result-object v5

    .line 428
    const-string v6, "folmeRotateX"

    .line 429
    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 431
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 433
    move-result-object v7

    .line 436
    move-object/from16 p0, v2

    .line 437
    move-object/from16 p1, v3

    .line 439
    move-object/from16 p2, v4

    .line 441
    move-object/from16 p3, v5

    .line 443
    move-object/from16 p4, v6

    .line 445
    move-object/from16 p5, v7

    .line 447
    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    .line 449
    move-result-object v2

    .line 452
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 453
    move-result-object v1

    .line 456
    const-string v14, "folmeAlpha"

    .line 457
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v0

    .line 462
    const-string v16, "folmePosZ"

    .line 463
    const/4 v2, 0x0

    .line 465
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 466
    move-result-object v17

    .line 469
    const-string v18, "folmeRotateX"

    .line 470
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 472
    move-result-object v19

    .line 475
    move-object v2, v15

    .line 476
    move-object v15, v0

    .line 477
    move-object/from16 v20, v2

    .line 478
    filled-new-array/range {v14 .. v20}, [Ljava/lang/Object;

    .line 480
    move-result-object v0

    .line 483
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 484
    goto :goto_0

    .line 487
    :cond_4
    move-object v2, v15

    .line 488
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 489
    move-result-object v1

    .line 492
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 493
    move-result-object v1

    .line 496
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 497
    move-result-object v1

    .line 500
    const/4 v3, 0x0

    .line 501
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 502
    move-result-object v3

    .line 505
    filled-new-array {v14, v3}, [Ljava/lang/Object;

    .line 506
    move-result-object v3

    .line 509
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 510
    move-result-object v1

    .line 513
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 514
    move-result-object v0

    .line 517
    filled-new-array {v14, v0, v2}, [Ljava/lang/Object;

    .line 518
    move-result-object v0

    .line 521
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 522
    :goto_0
    const-string/jumbo v0, "startMoveToFrontTransition Ani  needAnimation\uff1a "

    .line 525
    const-string v1, " toPosX: "

    .line 528
    invoke-static {v0, v12, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    move-result-object v0

    .line 533
    move-object/from16 v1, v21

    .line 534
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 536
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    const-string v2, " toPosY: "

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, " toPosZ: "

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 556
    move-result-object v1

    .line 559
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosZ()F

    .line 560
    move-result v1

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 564
    const-string v1, " rotateX: "

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 572
    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeRotateX()F

    .line 576
    move-result v1

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, " alpha: "

    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 588
    move-result-object v1

    .line 591
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeAlpha()F

    .line 592
    move-result v1

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, " toScaleX: "

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 604
    move-result v1

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 608
    const-string v1, " toScaleY: "

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 616
    move-result v1

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 620
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v0

    .line 634
    const-string v1, "MiuiFreeformAnimation"

    .line 635
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    nop

    .line 641
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ed70a3d    # 0.42f
    .end array-data

    .line 642
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3ef9db23    # 0.488f
    .end array-data
    .line 650
.end method

.method private startMoveToFrontTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v4, p4

    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 5
    iget v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 9
    move-result-object v6

    .line 12
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object v1

    .line 16
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 17
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 19
    move-result v1

    .line 22
    const/4 v2, 0x5

    .line 23
    if-ne v1, v2, :cond_4

    .line 24
    if-nez v6, :cond_0

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 29
    move-result v1

    .line 32
    const/4 v7, 0x1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo;->getType()I

    .line 36
    move-result v1

    .line 39
    if-ne v1, v7, :cond_1

    .line 40
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 42
    iget-object v9, v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 44
    iget v10, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    const/4 v11, 0x1

    .line 48
    const/4 v12, 0x1

    .line 49
    const/4 v13, 0x0

    .line 50
    invoke-virtual/range {v8 .. v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->unPinFloatingWindow(Landroid/graphics/Rect;IZZZ)Z

    .line 51
    move-object v0, p0

    .line 54
    move-object v1, v6

    .line 55
    move-object/from16 v2, p5

    .line 56
    move-object/from16 v3, p2

    .line 58
    move-object v4, p1

    .line 60
    move-object/from16 v5, p3

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyUnPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    .line 63
    return v7

    .line 66
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo;->getType()I

    .line 67
    move-result v1

    .line 70
    const/16 v2, 0x450

    .line 71
    if-ne v1, v2, :cond_2

    .line 73
    move-object v0, p0

    .line 75
    move-object v1, v6

    .line 76
    move-object/from16 v2, p5

    .line 77
    move-object/from16 v3, p2

    .line 79
    move-object v4, p1

    .line 81
    move-object/from16 v5, p3

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyUnPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    .line 84
    return v7

    .line 87
    :cond_2
    if-eqz p7, :cond_3

    .line 88
    move-object v1, p1

    .line 90
    move-object/from16 v3, p3

    .line 91
    move-object/from16 v5, p5

    .line 93
    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMoveToFrontWithoutAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 95
    goto :goto_0

    .line 98
    :cond_3
    move-object v1, p1

    .line 99
    move-object/from16 v3, p3

    .line 100
    move-object/from16 v5, p5

    .line 102
    move-object v0, p0

    .line 104
    move-object/from16 v2, p2

    .line 105
    move-object/from16 v4, p4

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMoveToFrontAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 109
    :goto_0
    return v7

    .line 112
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 113
    return v0
    .line 114
.end method

.method private startMoveToFrontWithoutAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo p3, "startMoveToFrontWithoutAnimation miuiFreeformModeTaskInfo: "

    .line 7
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    const-string p3, "MiuiFreeformAnimation"

    .line 20
    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 25
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 27
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;

    .line 29
    const/16 v0, 0x10

    .line 31
    invoke-direct {p3, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 33
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 36
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    invoke-direct {p0, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->adjustFreeformOrientationIfNeed(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 41
    return-void
    .line 44
.end method

.method private startShowFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 6
    move-result-object v2

    .line 9
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 12
    move-result v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 16
    move-result-object v3

    .line 19
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 22
    move-result v5

    .line 25
    invoke-static {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 26
    move-result v4

    .line 29
    div-float/2addr v4, v2

    .line 30
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 31
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 33
    new-instance v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$1;

    .line 36
    invoke-direct {v6, v0, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/Rect;)V

    .line 38
    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 45
    move-result-object v0

    .line 48
    const/4 v5, 0x2

    .line 49
    new-array v5, v5, [F

    .line 50
    fill-array-data v5, :array_0

    .line 52
    const/4 v6, -0x2

    .line 55
    invoke-virtual {v0, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 56
    const-wide/16 v5, 0x32

    .line 59
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 61
    const/16 v5, 0x11

    .line 64
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 66
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 72
    move-result-object v5

    .line 75
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 79
    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 80
    move-result-object v5

    .line 83
    const-string v6, "folmePosX"

    .line 84
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 86
    int-to-double v7, v7

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 89
    move-result v9

    .line 92
    int-to-float v9, v9

    .line 93
    mul-float/2addr v9, v2

    .line 94
    float-to-double v9, v9

    .line 95
    const-wide v19, 0x3fe3333333333333L    # 0.6

    .line 96
    mul-double v9, v9, v19

    .line 101
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    .line 103
    div-double v9, v9, v21

    .line 105
    add-double/2addr v9, v7

    .line 107
    double-to-float v7, v9

    .line 108
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    move-result-object v7

    .line 112
    const-string v8, "folmePosY"

    .line 113
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 115
    int-to-double v9, v9

    .line 117
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 118
    move-result v11

    .line 121
    int-to-float v11, v11

    .line 122
    mul-float/2addr v11, v2

    .line 123
    float-to-double v11, v11

    .line 124
    mul-double v11, v11, v19

    .line 125
    div-double v11, v11, v21

    .line 127
    add-double/2addr v11, v9

    .line 129
    double-to-float v9, v11

    .line 130
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 131
    move-result-object v9

    .line 134
    const-string v10, "folmeScaleX"

    .line 135
    const v11, 0x3ecccccd    # 0.4f

    .line 137
    mul-float v15, v2, v11

    .line 140
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    move-result-object v11

    .line 145
    const-string v12, "folmeScaleY"

    .line 146
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    move-result-object v13

    .line 151
    const-string v14, "folmeAlpha"

    .line 152
    const/16 v16, 0x0

    .line 154
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 156
    move-result-object v16

    .line 159
    const-string v17, "radius"

    .line 160
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 162
    move-result-object v18

    .line 165
    move v1, v15

    .line 166
    move-object/from16 v15, v16

    .line 167
    move-object/from16 v16, v17

    .line 169
    move-object/from16 v17, v18

    .line 171
    filled-new-array/range {v6 .. v17}, [Ljava/lang/Object;

    .line 173
    move-result-object v6

    .line 176
    invoke-interface {v5, v6}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 177
    move-result-object v5

    .line 180
    const-string v6, "folmePosX"

    .line 181
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 183
    int-to-float v7, v7

    .line 185
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 186
    move-result-object v7

    .line 189
    const-string v8, "folmePosY"

    .line 190
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 192
    int-to-float v9, v9

    .line 194
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 195
    move-result-object v9

    .line 198
    const-string v10, "folmeScaleX"

    .line 199
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    move-result-object v11

    .line 204
    const-string v12, "folmeScaleY"

    .line 205
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    move-result-object v13

    .line 210
    const-string v14, "folmeAlpha"

    .line 211
    const/high16 v15, 0x3f800000    # 1.0f

    .line 213
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    move-result-object v15

    .line 218
    const-string v16, "radius"

    .line 219
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    move-result-object v17

    .line 224
    move-object/from16 v18, v0

    .line 225
    filled-new-array/range {v6 .. v18}, [Ljava/lang/Object;

    .line 227
    move-result-object v0

    .line 230
    const-string/jumbo v6, "startShowFreeformAnimation   from poxX: "

    .line 231
    invoke-static {v5, v0, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move-result-object v0

    .line 237
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 238
    int-to-double v5, v5

    .line 240
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 241
    move-result v7

    .line 244
    int-to-float v7, v7

    .line 245
    mul-float/2addr v7, v2

    .line 246
    float-to-double v7, v7

    .line 247
    mul-double v7, v7, v19

    .line 248
    div-double v7, v7, v21

    .line 250
    add-double/2addr v7, v5

    .line 252
    double-to-float v5, v7

    .line 253
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 254
    const-string v5, " from posY: "

    .line 257
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 262
    int-to-double v5, v5

    .line 264
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 265
    move-result v7

    .line 268
    int-to-float v7, v7

    .line 269
    mul-float/2addr v7, v2

    .line 270
    float-to-double v7, v7

    .line 271
    mul-double v7, v7, v19

    .line 272
    div-double v7, v7, v21

    .line 274
    add-double/2addr v7, v5

    .line 276
    double-to-float v5, v7

    .line 277
    const-string v6, " from scaleX: "

    .line 278
    const-string v7, " from scaleY: "

    .line 280
    invoke-static {v0, v5, v6, v1, v7}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 282
    const-string v5, " from Radius: "

    .line 285
    const-string v6, " from alpha: 0.0 to poxX: "

    .line 287
    invoke-static {v0, v1, v5, v4, v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 289
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, " to posY: "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, " to scaleX: "

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, " to scaleY: "

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, " to Radius: "

    .line 320
    const-string v3, " to alpha: 1.0 miuiFreeformModeTaskInfo: "

    .line 322
    invoke-static {v0, v2, v1, v4, v3}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 324
    const-string v1, "MiuiFreeformAnimation"

    .line 327
    move-object/from16 v2, p1

    .line 329
    invoke-static {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 331
    return-void

    .line 334
    nop

    .line 335
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 336
.end method

.method private startShowFreeformTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p5

    .line 6
    move-object/from16 v3, p6

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    .line 10
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v5

    .line 15
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 16
    new-instance v5, Landroid/graphics/Rect;

    .line 19
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v6

    .line 24
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 25
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 30
    move-result v7

    .line 33
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 34
    move-result v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 38
    move-result v7

    .line 41
    div-float/2addr v6, v7

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 43
    move-result-object v7

    .line 46
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 47
    move-result-object v8

    .line 50
    iput-object v8, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 51
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 53
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 55
    move-result-object v8

    .line 58
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 59
    int-to-float v9, v9

    .line 61
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 62
    int-to-float v10, v10

    .line 64
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 65
    move-result-object v7

    .line 68
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 69
    move-result-object v8

    .line 72
    const v9, 0x3ecccccd    # 0.4f

    .line 73
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    move-result-object v17

    .line 79
    invoke-virtual {v7, v2, v8, v9, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 80
    move-result-object v7

    .line 83
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 84
    move-result-object v8

    .line 87
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 88
    move-result v9

    .line 91
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 92
    move-result v10

    .line 95
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 96
    move-result-object v7

    .line 99
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 100
    move-result-object v8

    .line 103
    invoke-virtual {v7, v2, v8, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 104
    move-result-object v7

    .line 107
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 108
    move-result-object v8

    .line 111
    const/4 v9, 0x0

    .line 112
    invoke-virtual {v7, v3, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 113
    move-result-object v7

    .line 116
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 117
    move-result-object v8

    .line 120
    invoke-virtual {v7, v2, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 121
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 124
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 126
    move-result-object v8

    .line 129
    iget v10, v5, Landroid/graphics/Rect;->left:I

    .line 130
    int-to-float v10, v10

    .line 132
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 133
    int-to-float v11, v11

    .line 135
    invoke-virtual {v7, v2, v8, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 136
    move-result-object v2

    .line 139
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 140
    move-result-object v7

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 144
    move-result v8

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 148
    move-result v10

    .line 151
    invoke-virtual {v2, v3, v7, v8, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 152
    move-result-object v2

    .line 155
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 156
    move-result-object v7

    .line 159
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 160
    move-result v8

    .line 163
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 164
    move-result v10

    .line 167
    invoke-virtual {v2, v3, v7, v8, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 168
    move-result-object v2

    .line 171
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 172
    move-result-object v7

    .line 175
    invoke-virtual {v2, v3, v7, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 176
    move-result-object v2

    .line 179
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 180
    move-result-object v7

    .line 183
    const/high16 v8, 0x3f800000    # 1.0f

    .line 184
    invoke-virtual {v2, v3, v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 186
    move-result-object v2

    .line 189
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 190
    move-result-object v7

    .line 193
    invoke-virtual {v2, v3, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 194
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 197
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 199
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;

    .line 202
    move-object/from16 v7, p7

    .line 204
    invoke-direct {v3, v0, v1, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 206
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 209
    move-result-object v0

    .line 212
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 213
    move-result-object v0

    .line 216
    const/4 v2, 0x2

    .line 217
    new-array v2, v2, [F

    .line 218
    fill-array-data v2, :array_0

    .line 220
    const/4 v3, -0x2

    .line 223
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 227
    move-result-object v2

    .line 230
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 234
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 235
    move-result-object v2

    .line 238
    const-string v10, "folmePosX"

    .line 239
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 241
    int-to-float v3, v3

    .line 243
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v11

    .line 247
    const-string v12, "folmePosY"

    .line 248
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 250
    int-to-float v3, v3

    .line 252
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 253
    move-result-object v13

    .line 256
    const-string v14, "folmeScaleX"

    .line 257
    const-string v16, "folmeScaleY"

    .line 259
    const-string v18, "folmeAlpha"

    .line 261
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    move-result-object v19

    .line 266
    const-string v20, "radius"

    .line 267
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 269
    move-result-object v21

    .line 272
    move-object/from16 v15, v17

    .line 273
    filled-new-array/range {v10 .. v21}, [Ljava/lang/Object;

    .line 275
    move-result-object v3

    .line 278
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 279
    move-result-object v2

    .line 282
    const-string v18, "folmePosX"

    .line 283
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 285
    int-to-float v3, v3

    .line 287
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 288
    move-result-object v19

    .line 291
    const-string v20, "folmePosY"

    .line 292
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 294
    int-to-float v3, v3

    .line 296
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 297
    move-result-object v21

    .line 300
    const-string v22, "folmeScaleX"

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 303
    move-result v3

    .line 306
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    move-result-object v23

    .line 310
    const-string v24, "folmeScaleY"

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 313
    move-result v3

    .line 316
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 317
    move-result-object v25

    .line 320
    const-string v26, "folmeAlpha"

    .line 321
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    move-result-object v27

    .line 326
    const-string v28, "radius"

    .line 327
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 329
    move-result-object v29

    .line 332
    move-object/from16 v30, v0

    .line 333
    filled-new-array/range {v18 .. v30}, [Ljava/lang/Object;

    .line 335
    move-result-object v0

    .line 338
    const-string/jumbo v3, "startShowFreeformTransition   from poxX: "

    .line 339
    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-result-object v0

    .line 345
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v2, " from posY: "

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const-string v2, " from scaleX: 0.4 from scaleY: 0.4 from Radius: "

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 366
    const-string v2, " from alpha: 0.0 to poxX: "

    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    const-string v2, " to posY: "

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    const-string v2, " to scaleX: "

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 394
    move-result v2

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 398
    const-string v2, " to scaleY: "

    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 406
    move-result v2

    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 410
    const-string v2, " to Radius: "

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 418
    const-string v2, " to alpha: 1.0 miuiFreeformModeTaskInfo: "

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v0

    .line 432
    const-string v1, "MiuiFreeformAnimation"

    .line 433
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x1

    .line 438
    return v0

    .line 439
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 440
.end method

.method private unlockingAppLock(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 16
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->mBehindAppLockPkg:Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    const-string v1, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    .line 28
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    const/4 p0, 0x1

    .line 50
    :cond_1
    :goto_0
    return p0
    .line 51
.end method


# virtual methods
.method public applyForeGroundPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x7

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x6

    .line 14
    :goto_0
    move v8, v0

    .line 15
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 16
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 19
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 21
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 24
    invoke-virtual {v0, v7, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->setPinFloatingWindowAnimationInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 31
    move-result v2

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 35
    move-result v3

    .line 38
    invoke-virtual {v0, v7, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->drawIcon(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)V

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 42
    move-result-object v15

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 46
    move-result-object v0

    .line 49
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 50
    iget-object v0, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v0, v4, v5, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 62
    move-result v2

    .line 65
    invoke-virtual {v0, v4, v5, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 66
    move-result-object v9

    .line 69
    const v12, 0x3ecccccd    # 0.4f

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 73
    move-result v13

    .line 76
    iget-object v14, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 77
    move-object v10, v4

    .line 79
    move-object v11, v5

    .line 80
    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setShadowAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FZLandroid/content/Context;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 81
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 84
    new-instance v9, Lmiuix/animation/base/AnimConfig;

    .line 87
    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 89
    new-instance v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$3;

    .line 92
    move-object v0, v10

    .line 94
    move-object/from16 v1, p0

    .line 95
    move-object/from16 v2, p1

    .line 97
    move-object v3, v15

    .line 99
    move v6, v8

    .line 100
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$3;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 101
    filled-new-array {v10}, [Lmiuix/animation/listener/TransitionListener;

    .line 104
    move-result-object v0

    .line 107
    invoke-virtual {v9, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 108
    move-result-object v0

    .line 111
    move-object/from16 v34, v0

    .line 112
    const/4 v1, 0x2

    .line 114
    new-array v2, v1, [F

    .line 115
    fill-array-data v2, :array_0

    .line 117
    const/4 v3, -0x2

    .line 120
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 121
    move-result-object v0

    .line 124
    new-array v1, v1, [F

    .line 125
    fill-array-data v1, :array_1

    .line 127
    const-string v2, "alpha"

    .line 130
    const-wide/16 v3, -0x2

    .line 132
    invoke-virtual {v0, v2, v3, v4, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    .line 134
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 137
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 143
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 144
    move-result-object v0

    .line 147
    const-string v8, "folmeAlpha"

    .line 148
    const/high16 v1, 0x3f800000    # 1.0f

    .line 150
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 152
    move-result-object v9

    .line 155
    const-string v10, "radius"

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 158
    move-result v1

    .line 161
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 162
    move-result-object v11

    .line 165
    const-string v12, "clipXWidth"

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 168
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 172
    move-result v1

    .line 175
    int-to-float v1, v1

    .line 176
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    move-result-object v13

    .line 180
    const-string v14, "clipYHeight"

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 183
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 187
    move-result v1

    .line 190
    int-to-float v1, v1

    .line 191
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    move-result-object v15

    .line 195
    const-string/jumbo v16, "shadowAlpha"

    .line 196
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 199
    const/4 v2, 0x3

    .line 201
    aget v1, v1, v2

    .line 202
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    move-result-object v17

    .line 207
    const-string v18, "folmeScaleX"

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 210
    move-result v1

    .line 213
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    move-result-object v19

    .line 217
    const-string v20, "folmeScaleY"

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 220
    move-result v1

    .line 223
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    move-result-object v21

    .line 227
    const-string v22, "folmePosX"

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 230
    move-result-object v1

    .line 233
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 234
    int-to-float v1, v1

    .line 236
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    move-result-object v23

    .line 240
    const-string v24, "folmePosY"

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 243
    move-result-object v1

    .line 246
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 247
    int-to-float v1, v1

    .line 249
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    move-result-object v25

    .line 253
    filled-new-array/range {v8 .. v25}, [Ljava/lang/Object;

    .line 254
    move-result-object v1

    .line 257
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 258
    move-result-object v0

    .line 261
    const-string v16, "folmeAlpha"

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 264
    move-result v1

    .line 267
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 268
    move-result-object v17

    .line 271
    const-string v18, "radius"

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 274
    move-result v1

    .line 277
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 278
    move-result-object v19

    .line 281
    const-string v20, "clipXWidth"

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 284
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 288
    move-result v1

    .line 291
    int-to-float v1, v1

    .line 292
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v21

    .line 296
    const-string v22, "clipYHeight"

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 299
    move-result-object v1

    .line 302
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 303
    move-result v1

    .line 306
    int-to-float v1, v1

    .line 307
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    move-result-object v23

    .line 311
    const-string/jumbo v24, "shadowAlpha"

    .line 312
    const/4 v1, 0x0

    .line 315
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 316
    move-result-object v25

    .line 319
    const-string v26, "folmeScaleX"

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 322
    move-result v1

    .line 325
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    move-result-object v27

    .line 329
    const-string v28, "folmeScaleY"

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 332
    move-result v1

    .line 335
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    move-result-object v29

    .line 339
    const-string v30, "folmePosX"

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 342
    move-result-object v1

    .line 345
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 346
    int-to-float v1, v1

    .line 348
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 349
    move-result-object v31

    .line 352
    const-string v32, "folmePosY"

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 355
    move-result-object v1

    .line 358
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 359
    int-to-float v1, v1

    .line 361
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 362
    move-result-object v33

    .line 365
    filled-new-array/range {v16 .. v34}, [Ljava/lang/Object;

    .line 366
    move-result-object v1

    .line 369
    const-string v2, "applyForeGroundPinAnimation  from poxX: "

    .line 370
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move-result-object v0

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 376
    move-result-object v1

    .line 379
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 380
    int-to-float v1, v1

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, " from posY: "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 391
    move-result-object v1

    .line 394
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 395
    int-to-float v1, v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, " from scaleX: "

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 406
    move-result v1

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, " from scaleY: "

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 418
    move-result v1

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, " from clipXWidth: "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 430
    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 434
    move-result v1

    .line 437
    int-to-float v1, v1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " from clipYHeight: "

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 447
    move-result-object v1

    .line 450
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 451
    move-result v1

    .line 454
    int-to-float v1, v1

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, " To posX: "

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 464
    move-result-object v1

    .line 467
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 468
    int-to-float v1, v1

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, " To posY: "

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 479
    move-result-object v1

    .line 482
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 483
    int-to-float v1, v1

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, " To scaleX: "

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 494
    move-result v1

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, " To scaleY: "

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 506
    move-result v1

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, " To clipXWidth: "

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 518
    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 522
    move-result v1

    .line 525
    int-to-float v1, v1

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, " To clipYHeight: "

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 535
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 539
    move-result v1

    .line 542
    int-to-float v1, v1

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 544
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    move-result-object v0

    .line 558
    const-string v1, "MiuiFreeformAnimation"

    .line 559
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 564
    nop

    .line 565
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data

    .line 566
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3e800000    # 0.25f
    .end array-data
    .line 574
.end method

.method public applyForegroundUnPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 33

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/16 v0, 0x9

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x8

    .line 15
    :goto_0
    move v9, v0

    .line 17
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 18
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 21
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 23
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    invoke-virtual {v0, v8, v1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->setUpMiuiFreeWindowFloatIconAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FLandroid/view/SurfaceControl$Transaction;)V

    .line 30
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 35
    move-result v1

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleY()F

    .line 39
    move-result v2

    .line 42
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->drawIcon(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 46
    move-result v0

    .line 49
    const/4 v10, 0x2

    .line 50
    const/4 v11, 0x3

    .line 51
    if-eqz v0, :cond_1

    .line 52
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 54
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v8, v11, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 57
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 61
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v8, v10, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 64
    const/16 v0, 0xa

    .line 67
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 69
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 72
    move-result-object v12

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 76
    move-result-object v0

    .line 79
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 80
    invoke-static {v11}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 82
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 87
    move-result-object v1

    .line 90
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 91
    int-to-float v1, v1

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object v2

    .line 97
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 98
    int-to-float v2, v2

    .line 100
    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 101
    move-result-object v0

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 105
    move-result v1

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 109
    move-result v2

    .line 112
    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 113
    move-result-object v0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 117
    move-result v1

    .line 120
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 121
    move-result-object v0

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 125
    move-result-object v1

    .line 128
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 129
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 132
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 135
    iget-object v0, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 140
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(I)V

    .line 144
    new-instance v13, Lmiuix/animation/base/AnimConfig;

    .line 147
    invoke-direct {v13}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 149
    new-instance v14, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$4;

    .line 152
    move-object v0, v14

    .line 154
    move-object/from16 v1, p0

    .line 155
    move-object/from16 v2, p1

    .line 157
    move-object v3, v12

    .line 159
    move v6, v9

    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$4;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 161
    filled-new-array {v14}, [Lmiuix/animation/listener/TransitionListener;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 168
    move-result-object v0

    .line 171
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 172
    move-result v1

    .line 175
    if-eqz v1, :cond_2

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 178
    move-result v1

    .line 181
    if-nez v1, :cond_2

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 184
    move-result-object v1

    .line 187
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 188
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 190
    iget-object v13, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 194
    move-result-object v15

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 198
    move-result v16

    .line 201
    const/16 v17, 0x0

    .line 202
    const/16 v18, 0x0

    .line 204
    move v14, v1

    .line 206
    invoke-virtual/range {v13 .. v18}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayout(ILandroid/graphics/Rect;FZZ)Z

    .line 207
    move-result v2

    .line 210
    if-eqz v2, :cond_2

    .line 211
    iget-object v2, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 213
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 215
    move-result-object v1

    .line 218
    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {v8, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_2
    new-array v1, v10, [F

    .line 224
    fill-array-data v1, :array_0

    .line 226
    const/4 v2, -0x2

    .line 229
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 230
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->addRunningAnimationType(I)V

    .line 233
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 236
    move-result-object v1

    .line 239
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 240
    move-result-object v1

    .line 243
    const-string v12, "folmeAlpha"

    .line 244
    const/4 v2, 0x0

    .line 246
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 247
    move-result-object v13

    .line 250
    const-string v14, "folmePosX"

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 253
    move-result-object v2

    .line 256
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 257
    int-to-float v2, v2

    .line 259
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 260
    move-result-object v15

    .line 263
    const-string v16, "folmePosY"

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 266
    move-result-object v2

    .line 269
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 270
    int-to-float v2, v2

    .line 272
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    move-result-object v17

    .line 276
    const-string v18, "folmeScaleX"

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 279
    move-result v2

    .line 282
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 283
    move-result-object v19

    .line 286
    const-string v20, "folmeScaleY"

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 289
    move-result v2

    .line 292
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v21

    .line 296
    const-string v22, "clipXWidth"

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 299
    move-result-object v2

    .line 302
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 303
    move-result v2

    .line 306
    int-to-float v2, v2

    .line 307
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    move-result-object v23

    .line 311
    const-string v24, "clipYHeight"

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 314
    move-result-object v2

    .line 317
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 318
    move-result v2

    .line 321
    int-to-float v2, v2

    .line 322
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    move-result-object v25

    .line 326
    const-string v26, "radius"

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedRadius()F

    .line 329
    move-result v2

    .line 332
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v27

    .line 336
    const-string/jumbo v28, "shadowAlpha"

    .line 337
    sget-object v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 340
    aget v3, v2, v11

    .line 342
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    move-result-object v29

    .line 347
    filled-new-array/range {v12 .. v29}, [Ljava/lang/Object;

    .line 348
    move-result-object v3

    .line 351
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 352
    move-result-object v1

    .line 355
    const-string v14, "folmeAlpha"

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationAlpha()F

    .line 358
    move-result v3

    .line 361
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 362
    move-result-object v15

    .line 365
    const-string v16, "folmePosX"

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 368
    move-result-object v3

    .line 371
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 372
    int-to-float v3, v3

    .line 374
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    move-result-object v17

    .line 378
    const-string v18, "folmePosY"

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 381
    move-result-object v3

    .line 384
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 385
    int-to-float v3, v3

    .line 387
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 388
    move-result-object v19

    .line 391
    const-string v20, "folmeScaleX"

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 394
    move-result v3

    .line 397
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    move-result-object v21

    .line 401
    const-string v22, "folmeScaleY"

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 404
    move-result v3

    .line 407
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 408
    move-result-object v23

    .line 411
    const-string v24, "clipXWidth"

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 414
    move-result-object v3

    .line 417
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 418
    move-result v3

    .line 421
    int-to-float v3, v3

    .line 422
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 423
    move-result-object v25

    .line 426
    const-string v26, "clipYHeight"

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 429
    move-result-object v3

    .line 432
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 433
    move-result v3

    .line 436
    int-to-float v3, v3

    .line 437
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 438
    move-result-object v27

    .line 441
    const-string v28, "radius"

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 444
    move-result v3

    .line 447
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 448
    move-result-object v29

    .line 451
    const-string/jumbo v30, "shadowAlpha"

    .line 452
    aget v2, v2, v11

    .line 455
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 457
    move-result-object v31

    .line 460
    move-object/from16 v32, v0

    .line 461
    filled-new-array/range {v14 .. v32}, [Ljava/lang/Object;

    .line 463
    move-result-object v0

    .line 466
    const-string v2, "applyForegroundUnPinAnimation  from poxX: "

    .line 467
    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    move-result-object v0

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 473
    move-result-object v1

    .line 476
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 477
    int-to-float v1, v1

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, " from posY: "

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 488
    move-result-object v1

    .line 491
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 492
    int-to-float v1, v1

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, " from scaleX: "

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleX()F

    .line 503
    move-result v1

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, " from scaleY: "

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedScaleY()F

    .line 515
    move-result v1

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 519
    const-string v1, " from clipXWidth: "

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 527
    move-result-object v1

    .line 530
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 531
    move-result v1

    .line 534
    int-to-float v1, v1

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, " from clipYHeight: "

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedClipRect()Landroid/graphics/Rect;

    .line 544
    move-result-object v1

    .line 547
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 548
    move-result v1

    .line 551
    int-to-float v1, v1

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, " To posX: "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 561
    move-result-object v1

    .line 564
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 565
    int-to-float v1, v1

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, " To posY: "

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 576
    move-result-object v1

    .line 579
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 580
    int-to-float v1, v1

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, " To scaleX: "

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 591
    move-result v1

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, " To scaleY: "

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 603
    move-result v1

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, " To clipXWidth: "

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 615
    move-result-object v1

    .line 618
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 619
    move-result v1

    .line 622
    int-to-float v1, v1

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 624
    const-string v1, " To clipYHeight: "

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 632
    move-result-object v1

    .line 635
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 636
    move-result v1

    .line 639
    int-to-float v1, v1

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    move-result-object v0

    .line 655
    const-string v1, "MiuiFreeformAnimation"

    .line 656
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void

    .line 661
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
    .line 662
.end method

.method public cancelAutoLayoutAnim(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 12
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 21
    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 25
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 29
    move-result v2

    .line 32
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 33
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 35
    move-result-object v4

    .line 38
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 39
    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 41
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 48
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 51
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 56
    move-result-object v2

    .line 59
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 60
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 62
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v3

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 68
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 71
    move-result-object v2

    .line 74
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 77
    invoke-virtual {v1, v2, v0}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 82
    invoke-virtual {p0, v1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 84
    new-instance p0, Landroid/graphics/Rect;

    .line 87
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 92
    const/4 p0, 0x0

    .line 95
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 99
    move-result-object p0

    .line 102
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 106
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 107
    move-result-object p0

    .line 110
    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "cancelAutoLayoutAnim miuiFreeformModeTaskInfo:"

    .line 116
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    const-string p1, "MiuiFreeformAnimation"

    .line 128
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void
    .line 133
.end method

.method public exitFreeformWithoutAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "exitFreeformWithoutAnimation miuiFreeformModeTaskInfo: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiFreeformAnimation"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 21
    move-result v0

    .line 24
    const/16 v1, 0xd

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->interruptMoveToFrontAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 33
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 36
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->fillExitFreeformWct(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 49
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda1;

    .line 51
    invoke-direct {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 56
    return-void
    .line 59
.end method

.method public getPendingMaximizeMiuiFreeform()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPickerTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPickerFreeformModeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 8
    move-result p1

    .line 11
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->isNotVisibleFreeform(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 34
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 36
    return-object p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return-object p0
    .line 41
.end method

.method public hideCornerAndStroke(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v10, Landroid/view/SurfaceControl$Transaction;

    .line 9
    invoke-direct {v10}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 11
    const/4 v11, 0x0

    .line 14
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCornerAnimType(I)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 18
    move-result-object v2

    .line 21
    iget-object v12, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 24
    move-result-object v2

    .line 27
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 32
    move-result-object v2

    .line 35
    const-string v13, "lCornerX"

    .line 36
    const-string v14, "lCornerY"

    .line 38
    const-string v15, "lCAlpha"

    .line 40
    const-string v16, "lCRadius"

    .line 42
    const-string v17, "lCDegreeRange"

    .line 44
    const-string v18, "lCThickness"

    .line 46
    const-string v19, "rCornerX"

    .line 48
    const-string v20, "rCornerY"

    .line 50
    const-string v21, "rCAlpha"

    .line 52
    const-string v22, "rCRadius"

    .line 54
    const-string v23, "rCDegreeRange"

    .line 56
    const-string v24, "rCThickness"

    .line 58
    const-string v25, "folmeStrokeThickness"

    .line 60
    filled-new-array/range {v13 .. v25}, [Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 65
    invoke-interface {v2, v3}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 69
    move-result-object v2

    .line 72
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 76
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 77
    move-result-object v2

    .line 80
    const-string v13, "lCornerX"

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 83
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 87
    move-result v3

    .line 90
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    move-result-object v14

    .line 94
    const-string v15, "lCornerY"

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 97
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 101
    move-result v3

    .line 104
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    move-result-object v16

    .line 108
    const-string v17, "lCAlpha"

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 111
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 115
    move-result v3

    .line 118
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 119
    move-result-object v18

    .line 122
    const-string v19, "lCRadius"

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 125
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 129
    move-result v3

    .line 132
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    move-result-object v20

    .line 136
    const-string v21, "lCDegreeRange"

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 139
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 143
    move-result v3

    .line 146
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 147
    move-result-object v22

    .line 150
    const-string v23, "lCThickness"

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 153
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 157
    move-result v3

    .line 160
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v24

    .line 164
    const-string v25, "rCornerX"

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 167
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 171
    move-result v3

    .line 174
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    move-result-object v26

    .line 178
    const-string v27, "rCornerY"

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 181
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerY()F

    .line 185
    move-result v3

    .line 188
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    move-result-object v28

    .line 192
    const-string v29, "rCAlpha"

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 195
    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 199
    move-result v3

    .line 202
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 203
    move-result-object v30

    .line 206
    const-string v31, "rCRadius"

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 209
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 213
    move-result v3

    .line 216
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 217
    move-result-object v32

    .line 220
    const-string v33, "rCDegreeRange"

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 223
    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 227
    move-result v3

    .line 230
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    move-result-object v34

    .line 234
    const-string v35, "rCThickness"

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 237
    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 241
    move-result v3

    .line 244
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 245
    move-result-object v36

    .line 248
    const-string v37, "folmeStrokeThickness"

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 251
    move-result v3

    .line 254
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    move-result-object v38

    .line 258
    filled-new-array/range {v13 .. v38}, [Ljava/lang/Object;

    .line 259
    move-result-object v3

    .line 262
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 263
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 266
    const/4 v5, 0x0

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeColors()[F

    .line 269
    move-result-object v6

    .line 272
    const/4 v7, 0x0

    .line 273
    move-object v3, v10

    .line 274
    move-object v4, v12

    .line 275
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 276
    move-result-object v2

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 280
    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 284
    move-result v5

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 288
    move-result-object v3

    .line 291
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 292
    move-result v6

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 296
    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 300
    move-result v7

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 304
    move-result-object v3

    .line 307
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 308
    move-result v8

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestLCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 312
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 316
    move-result v9

    .line 319
    move-object v3, v10

    .line 320
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setLeftBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 321
    move-result-object v2

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 325
    move-result-object v3

    .line 328
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCornerX()F

    .line 329
    move-result v5

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 333
    move-result-object v3

    .line 336
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCAlpha()F

    .line 337
    move-result v6

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 341
    move-result-object v3

    .line 344
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCThickness()F

    .line 345
    move-result v7

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 349
    move-result-object v3

    .line 352
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCRadius()F

    .line 353
    move-result v8

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestRCornerState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;

    .line 357
    move-result-object v3

    .line 360
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler$CornerTipState;->getCDegreeRange()F

    .line 361
    move-result v9

    .line 364
    move-object v3, v10

    .line 365
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setRightBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 366
    move-result-object v2

    .line 369
    invoke-virtual {v2, v10, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 370
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 373
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setLeftCornerState(I)V

    .line 376
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setRightCornerState(I)V

    .line 379
    iget-boolean v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->CORNER_DEBUG:Z

    .line 382
    if-eqz v0, :cond_1

    .line 384
    const-string v0, " hide all corners and stroke for task "

    .line 386
    move-object/from16 v2, p2

    .line 388
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    move-result-object v0

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 394
    move-result-object v1

    .line 397
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 398
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 400
    const-string v2, "CornerChange"

    .line 402
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 404
    :cond_1
    return-void
    .line 407
.end method

.method public initCornerTipHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 2
    return-void
    .line 4
.end method

.method public initPinHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 2
    return-void
    .line 4
.end method

.method public interruptCornerAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "lCornerX"

    .line 14
    const-string v2, "lCornerY"

    .line 16
    const-string v3, "lCAlpha"

    .line 18
    const-string v4, "lCRadius"

    .line 20
    const-string v5, "lCDegreeRange"

    .line 22
    const-string v6, "lCThickness"

    .line 24
    const-string v7, "rCornerX"

    .line 26
    const-string v8, "rCornerY"

    .line 28
    const-string v9, "rCAlpha"

    .line 30
    const-string v10, "rCRadius"

    .line 32
    const-string v11, "rCDegreeRange"

    .line 34
    const-string v12, "rCThickness"

    .line 36
    const-string v13, "folmeStrokeThickness"

    .line 38
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    .line 44
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->CORNER_DEBUG:Z

    .line 47
    if-eqz p0, :cond_0

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "interrupt animation, current values :"

    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 58
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    const-string p1, "MiuiFreeformAnimation"

    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
    .line 74
.end method

.method public interruptMoveToFrontAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNeedAnimation()Z

    .line 2
    move-result p0

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v2

    .line 11
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 14
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 22
    move-result-object p0

    .line 25
    const-string v1, "folmeAlpha"

    .line 26
    const-string v3, "folmePosZ"

    .line 28
    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    move-result-object v4

    .line 34
    const-string v5, "folmeRotateX"

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v6

    .line 40
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 49
    move-result-object p0

    .line 52
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 57
    move-result-object p0

    .line 60
    const-string p1, "folmeAlpha"

    .line 61
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 67
    :goto_0
    return-void
    .line 70
.end method

.method public bridge synthetic mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 8
    if-eqz p1, :cond_2

    .line 10
    if-eqz p2, :cond_2

    .line 12
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 14
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    goto/16 :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 22
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 26
    move-result-object p2

    .line 29
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 34
    const-string v0, "Transition type "

    .line 36
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettype(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)I

    .line 41
    move-result v0

    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " for task#"

    .line 48
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, " has been aborted."

    .line 56
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 64
    const-string v0, "MiuiFreeformAnimation"

    .line 65
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettype(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)I

    .line 70
    move-result p3

    .line 73
    const/16 v0, 0x450

    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    const/4 v2, 0x0

    .line 78
    if-ne p3, v0, :cond_1

    .line 79
    new-instance p3, Landroid/view/SurfaceControl$Transaction;

    .line 81
    invoke-direct {p3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 90
    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 94
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 96
    move-result-object v3

    .line 99
    iput-boolean v2, v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasPendingUnpinTransition:Z

    .line 100
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 102
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(I)V

    .line 104
    const/4 p2, 0x3

    .line 107
    invoke-static {p2}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 108
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeCornerTipHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 111
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 113
    move-result-object v2

    .line 116
    invoke-virtual {p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;->setDestStrokeColorsAndThickness(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 117
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 120
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 122
    move-result-object p2

    .line 125
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 126
    move-result-object p2

    .line 129
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 130
    int-to-float p2, p2

    .line 132
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 133
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 137
    move-result-object v2

    .line 140
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 141
    int-to-float v2, v2

    .line 143
    invoke-virtual {p0, p3, v0, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 144
    move-result-object p0

    .line 147
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 148
    move-result-object p2

    .line 151
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 152
    move-result p2

    .line 155
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 156
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 160
    move-result v2

    .line 163
    invoke-virtual {p0, p3, v0, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 164
    move-result-object p0

    .line 167
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 168
    move-result-object p0

    .line 171
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 172
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 176
    move-result p2

    .line 179
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 180
    move-result-object p0

    .line 183
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 184
    move-result-object p2

    .line 187
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 188
    move-result-object p2

    .line 191
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 192
    move-result-object v3

    .line 195
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 196
    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeAlpha()F

    .line 200
    move-result v6

    .line 203
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 204
    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeColors()[F

    .line 208
    move-result-object v7

    .line 211
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 212
    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 216
    move-result v8

    .line 219
    move-object v4, p3

    .line 220
    move-object v5, v0

    .line 221
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 222
    move-result-object p0

    .line 225
    invoke-virtual {p0, p3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 226
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 229
    goto :goto_0

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettype(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)I

    .line 233
    move-result p2

    .line 236
    const p3, 0x7ffffff1

    .line 237
    if-ne p2, p3, :cond_2

    .line 240
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 242
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 244
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 247
    move-result-object p3

    .line 250
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 251
    move-result-object p3

    .line 254
    iget-object p3, p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 255
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 257
    const/4 v3, 0x0

    .line 259
    invoke-virtual {v0, p2, p3, v3, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 260
    move-result-object v0

    .line 263
    invoke-virtual {v0, p2, p3, v1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 264
    move-result-object v0

    .line 267
    invoke-virtual {v0, p2, p3, v2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 268
    move-result-object v0

    .line 271
    invoke-virtual {v0, p2, p3, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 272
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 275
    new-instance p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 278
    invoke-direct {p2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 280
    new-instance p3, Landroid/window/WindowContainerTransaction;

    .line 283
    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 285
    invoke-virtual {p2, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformExiting(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 288
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;->-$$Nest$fgettaskInfo(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 291
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 295
    move-result-object p1

    .line 298
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 299
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 301
    invoke-virtual {p3, p1, p2}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 303
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 306
    invoke-virtual {p0, p3}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 308
    :cond_2
    :goto_0
    return-void
    .line 311
.end method

.method public bridge synthetic setAnimScaleSetting(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setPickerTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPickerFreeformModeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    return-void
    .line 4
.end method

.method public showOtherFreeform(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 33
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 39
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 45
    move-result v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->isFrontFreeFormStackInfo(I)Z

    .line 51
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    if-eq p1, v2, :cond_0

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    const-string v5, " showOtherFreeform: miuiFreeformModeTaskInfo.PackageName = "

    .line 61
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v5, ", taskId="

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v5, ", showtaskid="

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 92
    const-string v4, "MiuiFreeformAnimation"

    .line 93
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v2, 0x11

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    return-void
    .line 106
.end method

.method public startAllPinShellTransition(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V
    .locals 5

    .line 1
    const-string v0, "MiuiFreeformAnimation"

    .line 2
    const-string/jumbo v1, "startAllPinShellTransition"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 10
    const v1, 0x7ffffff2

    .line 12
    invoke-virtual {v0, v1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 15
    move-result-object p2

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 35
    new-instance v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 37
    invoke-direct {v4, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 39
    invoke-virtual {v3, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 51
    return-void
    .line 53
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 21

    .line 1
    move-object/from16 v9, p0

    .line 2
    move-object/from16 v10, p2

    .line 4
    move-object/from16 v11, p3

    .line 6
    move-object/from16 v12, p4

    .line 8
    invoke-direct {v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->findFixedRotationChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    .line 10
    move-result-object v0

    .line 13
    const/4 v13, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v13

    .line 20
    :goto_0
    iput-boolean v2, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mInFixedRotation:Z

    .line 21
    const/4 v3, -0x1

    .line 23
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    .line 26
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v3

    .line 31
    :goto_1
    iput v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mEndFixedRotation:I

    .line 32
    invoke-direct {v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isDisplayChange(Landroid/window/TransitionInfo;)Z

    .line 34
    move-result v14

    .line 37
    invoke-direct {v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isNeedRotation(Landroid/window/TransitionInfo;)Z

    .line 38
    move-result v15

    .line 41
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v16

    .line 49
    move/from16 v17, v13

    .line 50
    move/from16 v18, v17

    .line 52
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_18

    .line 58
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 63
    move-object v4, v0

    .line 64
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v2, "startAnimation change: "

    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, " info.getType(): "

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 83
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    const-string v2, "MiuiFreeformAnimation"

    .line 94
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 99
    move-result v0

    .line 102
    const/4 v5, 0x2

    .line 103
    and-int/2addr v0, v5

    .line 104
    if-eqz v0, :cond_3

    .line 105
    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    move-result-object v8

    .line 111
    if-nez v8, :cond_4

    .line 112
    invoke-direct {v9, v10, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isActivityOpeningOrClosing(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    .line 114
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 120
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onAppTransition(Landroid/window/TransitionInfo;)Z

    .line 122
    move-result v0

    .line 125
    or-int v18, v18, v0

    .line 126
    goto :goto_2

    .line 128
    :cond_4
    iget v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 129
    if-ne v0, v3, :cond_5

    .line 131
    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 134
    move-result v0

    .line 137
    const v3, 0x7ffffff1

    .line 138
    const/4 v6, 0x5

    .line 141
    if-eq v0, v1, :cond_f

    .line 142
    if-eq v0, v5, :cond_d

    .line 144
    const/4 v7, 0x3

    .line 146
    if-eq v0, v7, :cond_f

    .line 147
    const/4 v2, 0x4

    .line 149
    if-eq v0, v2, :cond_9

    .line 150
    const/4 v1, 0x6

    .line 152
    if-eq v0, v1, :cond_6

    .line 153
    goto/16 :goto_a

    .line 155
    :cond_6
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 157
    move-result-object v0

    .line 160
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 161
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 163
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 165
    move-result v0

    .line 168
    if-ne v0, v6, :cond_7

    .line 169
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 171
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 173
    move-result-object v1

    .line 176
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 179
    move-result-object v0

    .line 182
    if-eqz v0, :cond_7

    .line 183
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 185
    move-result-object v1

    .line 188
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 189
    move-result v2

    .line 192
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 193
    move-result v3

    .line 196
    invoke-virtual {v11, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 197
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 200
    move-result-object v1

    .line 203
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 204
    move-result v2

    .line 207
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 208
    move-result v3

    .line 211
    invoke-virtual {v12, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 212
    iget-object v1, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 217
    move-result v2

    .line 220
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 221
    move-result v1

    .line 224
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 225
    move-result v0

    .line 228
    div-float/2addr v1, v0

    .line 229
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 230
    move-result-object v0

    .line 233
    invoke-virtual {v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 234
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 237
    move-result-object v0

    .line 240
    invoke-virtual {v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 241
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 244
    move-result v0

    .line 247
    const/16 v1, 0x454

    .line 248
    if-ne v0, v1, :cond_8

    .line 250
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 252
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 254
    move-result-object v1

    .line 257
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 260
    move-result-object v1

    .line 263
    if-eqz v1, :cond_17

    .line 264
    move-object/from16 v0, p0

    .line 266
    move-object/from16 v2, p1

    .line 268
    move-object v3, v4

    .line 270
    move-object/from16 v4, p3

    .line 271
    move-object/from16 v5, p4

    .line 273
    move-object/from16 v6, p5

    .line 275
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFreeformOrientationChangedShowAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 277
    move-result v0

    .line 280
    goto/16 :goto_5

    .line 281
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 283
    move-result v2

    .line 286
    move-object/from16 v0, p0

    .line 287
    move-object/from16 v1, p1

    .line 289
    move-object v3, v4

    .line 291
    move-object/from16 v4, p3

    .line 292
    move-object/from16 v5, p4

    .line 294
    move-object/from16 v6, p5

    .line 296
    move-object/from16 v7, p2

    .line 298
    move v8, v15

    .line 300
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z

    .line 301
    move-result v0

    .line 304
    goto/16 :goto_8

    .line 305
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 307
    move-result v0

    .line 310
    const v2, 0x7ffffff2

    .line 311
    if-ne v0, v2, :cond_a

    .line 314
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 316
    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 320
    move-result-object v1

    .line 323
    if-eqz v1, :cond_17

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 326
    move-result v3

    .line 329
    move-object/from16 v0, p0

    .line 330
    move-object/from16 v2, p1

    .line 332
    move-object/from16 v5, p3

    .line 334
    move-object/from16 v6, p4

    .line 336
    move-object/from16 v7, p5

    .line 338
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyPinAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 340
    move-result v0

    .line 343
    goto/16 :goto_5

    .line 344
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 346
    move-result v0

    .line 349
    const/16 v2, 0x451

    .line 350
    if-ne v0, v2, :cond_b

    .line 352
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 354
    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 356
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 358
    move-result-object v0

    .line 361
    if-eqz v0, :cond_17

    .line 362
    const/16 v2, 0x10

    .line 364
    invoke-virtual {v9, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 366
    goto/16 :goto_9

    .line 369
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 371
    move-result v0

    .line 374
    if-ne v0, v3, :cond_c

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 377
    move-result v2

    .line 380
    xor-int/lit8 v19, v15, 0x1

    .line 381
    move-object/from16 v0, p0

    .line 383
    move-object v1, v8

    .line 385
    move-object v3, v4

    .line 386
    move-object/from16 v4, p3

    .line 387
    move-object/from16 v5, p4

    .line 389
    move-object/from16 v6, p5

    .line 391
    move-object/from16 v7, p2

    .line 393
    move/from16 v8, v19

    .line 395
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiuiFreeformMaximizeAnimation(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z

    .line 397
    move-result v0

    .line 400
    goto/16 :goto_8

    .line 401
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 403
    move-result v2

    .line 406
    move-object/from16 v0, p0

    .line 407
    move-object/from16 v1, p1

    .line 409
    move-object v3, v4

    .line 411
    move-object/from16 v4, p3

    .line 412
    move-object/from16 v5, p4

    .line 414
    move-object/from16 v6, p5

    .line 416
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiuiFreeformMaximizeMoveToBackTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 418
    move-result v0

    .line 421
    or-int v0, v17, v0

    .line 422
    invoke-direct {v9, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isHomeVisibleAndOnFullTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 424
    move-result v1

    .line 427
    if-eqz v1, :cond_e

    .line 428
    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 430
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showOtherFreeform(I)V

    .line 432
    goto :goto_3

    .line 435
    :cond_d
    move-object/from16 v0, p0

    .line 436
    move-object/from16 v1, p3

    .line 438
    move-object/from16 v2, p4

    .line 440
    move-object v3, v4

    .line 442
    move-object v4, v8

    .line 443
    move-object/from16 v5, p5

    .line 444
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCloseTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 446
    move-result v0

    .line 449
    or-int v0, v17, v0

    .line 450
    invoke-direct {v9, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isHomeVisibleAndOnFullTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 452
    move-result v1

    .line 455
    if-eqz v1, :cond_e

    .line 456
    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 458
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showOtherFreeform(I)V

    .line 460
    :cond_e
    :goto_3
    move v1, v0

    .line 463
    goto/16 :goto_9

    .line 464
    :cond_f
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 466
    move-result-object v0

    .line 469
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/wm/shell/sosc/SoScUtils;->adjustSurfaceForMinimizedMode(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 470
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 473
    move-result v7

    .line 476
    iget-boolean v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mInFixedRotation:Z

    .line 477
    if-eqz v0, :cond_10

    .line 479
    iget v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mEndFixedRotation:I

    .line 481
    goto :goto_4

    .line 483
    :cond_10
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 484
    move-result v0

    .line 487
    :goto_4
    move/from16 v19, v0

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 490
    move-result v0

    .line 493
    const v1, 0x7ffffff4

    .line 494
    if-ne v0, v1, :cond_11

    .line 497
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 499
    move-result v0

    .line 502
    if-ne v0, v6, :cond_11

    .line 503
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 505
    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 507
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 509
    move-result-object v6

    .line 512
    if-eqz v6, :cond_17

    .line 513
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isEnteringMini()Z

    .line 515
    move-result v0

    .line 518
    if-eqz v0, :cond_17

    .line 519
    move-object/from16 v0, p0

    .line 521
    move-object v1, v4

    .line 523
    move-object/from16 v2, p3

    .line 524
    move-object/from16 v3, p4

    .line 526
    move-object/from16 v4, p5

    .line 528
    move-object/from16 v5, p2

    .line 530
    move-object/from16 v17, v6

    .line 532
    move v6, v7

    .line 534
    move/from16 v7, v19

    .line 535
    move-object/from16 v20, v8

    .line 537
    move-object/from16 v8, v17

    .line 539
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startEnterMiniFreeformAnim(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 541
    move-object/from16 v0, v17

    .line 544
    invoke-virtual {v0, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setIsEnteringMini(Z)V

    .line 546
    move-object/from16 v6, v20

    .line 549
    iget v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 551
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showOtherFreeform(I)V

    .line 553
    const/4 v1, 0x1

    .line 556
    goto/16 :goto_9

    .line 557
    :cond_11
    move-object v6, v8

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 560
    move-result v0

    .line 563
    const/16 v1, 0x452

    .line 564
    if-ne v0, v1, :cond_12

    .line 566
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 568
    iget v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 570
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 572
    move-result-object v1

    .line 575
    if-eqz v1, :cond_17

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 578
    move-result v3

    .line 581
    move-object/from16 v0, p0

    .line 582
    move-object/from16 v2, p1

    .line 584
    move-object/from16 v5, p3

    .line 586
    move-object/from16 v6, p4

    .line 588
    move-object/from16 v7, p5

    .line 590
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startShowFreeformTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 592
    move-result v0

    .line 595
    :goto_5
    or-int v1, v17, v0

    .line 596
    goto/16 :goto_9

    .line 598
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 600
    move-result v0

    .line 603
    if-ne v0, v3, :cond_13

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 606
    move-result v2

    .line 609
    xor-int/lit8 v8, v15, 0x1

    .line 610
    move-object/from16 v0, p0

    .line 612
    move-object v1, v6

    .line 614
    move-object v3, v4

    .line 615
    move-object/from16 v4, p3

    .line 616
    move-object/from16 v5, p4

    .line 618
    move-object/from16 v6, p5

    .line 620
    move-object/from16 v7, p2

    .line 622
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiuiFreeformMaximizeAnimation(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z

    .line 624
    move-result v0

    .line 627
    goto/16 :goto_8

    .line 628
    :cond_13
    iget-object v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 630
    if-eqz v0, :cond_14

    .line 632
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 634
    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getDesktopModeLaunchFullscreenNotHideOtherAppList()Ljava/util/List;

    .line 638
    move-result-object v0

    .line 641
    iget-object v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 642
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 644
    move-result-object v1

    .line 647
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 648
    move-result v0

    .line 651
    goto :goto_6

    .line 652
    :cond_14
    move v0, v13

    .line 653
    :goto_6
    const-string v1, "isLaunchWidgetPicker="

    .line 654
    const-string v3, ",taskInfo.getWindowingMode()="

    .line 656
    invoke-static {v1, v0, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    move-result-object v1

    .line 661
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 662
    move-result v3

    .line 665
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    const-string v3, ", taskInfo.getActivityType()="

    .line 669
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 674
    move-result v3

    .line 677
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    move-result-object v1

    .line 684
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 688
    move-result v1

    .line 691
    const/4 v2, 0x1

    .line 692
    if-ne v1, v2, :cond_15

    .line 693
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 695
    move-result v1

    .line 698
    if-eq v1, v5, :cond_15

    .line 699
    iget v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 701
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->isSplitRootTask(I)Z

    .line 703
    move-result v1

    .line 706
    if-nez v1, :cond_15

    .line 707
    if-nez v0, :cond_15

    .line 709
    iget v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 711
    invoke-direct {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->hideOtherFreeform(I)V

    .line 713
    goto :goto_7

    .line 716
    :cond_15
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 717
    move-result v0

    .line 720
    const/4 v1, 0x1

    .line 721
    if-ne v0, v1, :cond_16

    .line 722
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 724
    move-result v0

    .line 727
    if-ne v0, v5, :cond_16

    .line 728
    invoke-direct {v9, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isHomeVisibleAndOnFullTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 730
    move-result v0

    .line 733
    if-eqz v0, :cond_16

    .line 734
    iget v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 736
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showOtherFreeform(I)V

    .line 738
    :cond_16
    :goto_7
    move-object/from16 v0, p0

    .line 741
    move-object/from16 v1, p3

    .line 743
    move-object/from16 v2, p4

    .line 745
    move-object v3, v4

    .line 747
    move-object v4, v6

    .line 748
    move-object/from16 v5, p5

    .line 749
    move-object/from16 v6, p2

    .line 751
    move v7, v14

    .line 753
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMoveToFrontTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)Z

    .line 754
    move-result v0

    .line 757
    :goto_8
    or-int v0, v17, v0

    .line 758
    goto/16 :goto_3

    .line 760
    :goto_9
    move/from16 v17, v1

    .line 762
    :cond_17
    :goto_a
    const/4 v1, 0x1

    .line 764
    const/4 v3, -0x1

    .line 765
    goto/16 :goto_2

    .line 766
    :cond_18
    if-eqz v17, :cond_19

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 770
    :cond_19
    iget-object v0, v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 773
    move-object/from16 v1, p1

    .line 775
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    if-eqz v17, :cond_1a

    .line 780
    if-nez v15, :cond_1a

    .line 782
    const/4 v0, 0x1

    .line 784
    return v0

    .line 785
    :cond_1a
    const/4 v0, 0x1

    .line 786
    if-eqz v18, :cond_1b

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 789
    const/4 v1, 0x0

    .line 792
    move-object/from16 v2, p5

    .line 793
    invoke-interface {v2, v1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 795
    return v0

    .line 798
    :cond_1b
    return v13
    .line 799
.end method

.method public startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p5, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setCornerAnimType(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p0, p5, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startStrokeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-direct {p0, p5, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->holdCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0, p5, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->hideCornerAndStroke(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-direct {p0, p5, p2, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->hideRightCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-direct {p0, p5, p2, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->hideLeftCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-direct {p0, p5, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->hideCorner(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_6
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->backToShowCorner(Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_7
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->emphasisCorner(Ljava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :pswitch_8
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showCorner(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCornerAnimation(ILjava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V
    .locals 7

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startCornerAnimation(ILjava/lang/String;JLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startExitFreeformShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "startExitFreeformShellTransition miuiFreeformModeTaskInfo: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiFreeformAnimation"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 22
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 24
    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    const/4 v2, 0x1

    .line 30
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 34
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 36
    move-result-object v1

    .line 39
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 42
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 45
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->fillExitFreeformWct(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 50
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 53
    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 59
    const v3, 0x7ffffff3

    .line 61
    invoke-virtual {v2, v3, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 64
    move-result-object p0

    .line 67
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 68
    invoke-direct {v0, v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 70
    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 77
    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 79
    :goto_0
    return-void
    .line 82
.end method

.method public startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0xd

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    const/16 v0, 0xe

    .line 13
    if-ne p1, v0, :cond_1

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->interruptMoveToFrontAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 17
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 23
    :pswitch_0
    goto :goto_0

    .line 26
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFreeformKillAllAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 27
    goto :goto_0

    .line 30
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyAutoLayoutTranslateAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 31
    goto :goto_0

    .line 34
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyAutoLayoutAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 35
    goto :goto_0

    .line 38
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFullScreentToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 39
    goto :goto_0

    .line 42
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startShowFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 43
    goto :goto_0

    .line 46
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startHideFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 47
    goto :goto_0

    .line 50
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFreeformEludeToShowAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 51
    goto :goto_0

    .line 54
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFreeformEludeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 55
    goto :goto_0

    .line 58
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyMiuiFreeformAvoidAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 59
    goto :goto_0

    .line 62
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFreeformToMiniAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 63
    goto :goto_0

    .line 66
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyFreeformOrientationChangedHideAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 67
    goto :goto_0

    .line 70
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyMiniFreeformTapAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 71
    const/16 p0, 0xa

    .line 74
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 76
    goto :goto_0

    .line 79
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyResizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 80
    goto :goto_0

    .line 83
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyBottomCaptionDragAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 84
    goto :goto_0

    .line 87
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->applyTranslateAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 88
    :goto_0
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 92
.end method

.method public startMaximizeShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 7
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 28
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 31
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 37
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 40
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 49
    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 55
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 61
    move-result-object v1

    .line 64
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 69
    :goto_0
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 72
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 74
    const/16 v2, 0x8

    .line 77
    invoke-virtual {v1, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 79
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 82
    const/4 v5, -0x1

    .line 84
    const/high16 v6, 0x3f800000    # 1.0f

    .line 85
    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setExiting(Z)V

    .line 89
    invoke-virtual {v1, v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 92
    move-result-object v2

    .line 95
    invoke-virtual {v2, v6}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 96
    move-result-object v2

    .line 99
    invoke-virtual {v2, v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformExiting(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 100
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 104
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 107
    move-result-object v2

    .line 110
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 115
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 118
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 120
    const v3, 0x7ffffff1

    .line 122
    invoke-virtual {v2, v3, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 125
    move-result-object v0

    .line 128
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 129
    invoke-direct {v2, v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 131
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 137
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 139
    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 143
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 145
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 151
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 154
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual {v1, v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 160
    move-result-object v2

    .line 163
    invoke-virtual {v2, v6}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 164
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 168
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 171
    move-result-object p1

    .line 174
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 175
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 177
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 179
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 182
    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 184
    :goto_1
    return-void
    .line 187
.end method

.method public startMiniFreeformDoubleTapShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 7
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 28
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 31
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 37
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 40
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 43
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 49
    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 61
    move-result-object v1

    .line 64
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 67
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 69
    :goto_0
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 72
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 74
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 77
    const/16 v5, 0x20

    .line 79
    const/high16 v6, 0x3f800000    # 1.0f

    .line 81
    const/4 v7, -0x1

    .line 83
    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setExiting(Z)V

    .line 86
    invoke-virtual {v1, v7}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 89
    move-result-object v2

    .line 92
    invoke-virtual {v2, v6}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 93
    move-result-object v2

    .line 96
    invoke-virtual {v2, v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformExiting(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 97
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 101
    move-result-object v2

    .line 104
    invoke-virtual {v2, v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 105
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 108
    move-result-object v2

    .line 111
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 116
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 119
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 121
    const v3, 0x7ffffff1

    .line 123
    invoke-virtual {v2, v3, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 126
    move-result-object v0

    .line 129
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 130
    invoke-direct {v2, v3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 132
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 140
    move-result-object v1

    .line 143
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 152
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 155
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 158
    invoke-virtual {v1, v7}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 161
    move-result-object v2

    .line 164
    invoke-virtual {v2, v6}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 165
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 169
    move-result-object v2

    .line 172
    invoke-virtual {v2, v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 173
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 176
    move-result-object v2

    .line 179
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 180
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 184
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 187
    invoke-virtual {v1, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 189
    :goto_1
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 192
    move-result-object v0

    .line 195
    invoke-static {p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 196
    move-result-object v1

    .line 199
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 200
    iput-object p0, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 202
    const-string/jumbo p0, "\u5168\u5c4f"

    .line 204
    iput-object p0, v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    .line 212
    const-string v0, " start anim applyMiniFreeformDoubleTapAnimation: miuiFreeformModeTaskInfo"

    .line 214
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p0

    .line 225
    const-string p1, "MiuiFreeformAnimation"

    .line 226
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
    .line 231
.end method

.method public startMiuiDesktopFullScreenToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startFullScreenToFreeformAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V

    .line 7
    return-void
    .line 10
.end method

.method public startMiuiDesktopMaximizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;)V
    .locals 9

    .line 1
    invoke-direct {p0, p6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->isNeedRotation(Landroid/window/TransitionInfo;)Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v8, v0, 0x1

    .line 6
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    move-object v7, p6

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startMiuiFreeformMaximizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/TransitionInfo;Z)V

    .line 15
    return-void
    .line 18
.end method

.method public startMiuiFreeformEnteringDktAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Ljava/lang/Float;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v5

    .line 15
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 16
    new-instance v5, Landroid/graphics/Rect;

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v6

    .line 24
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 25
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 30
    move-result v7

    .line 33
    invoke-static {v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 34
    move-result v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 38
    move-result v7

    .line 41
    div-float/2addr v6, v7

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 43
    move-result-object v7

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 47
    move-result-object v8

    .line 50
    iput-object v8, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 51
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 55
    move-result-object v8

    .line 58
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 59
    int-to-float v9, v9

    .line 61
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 62
    int-to-float v10, v10

    .line 64
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 65
    move-result-object v7

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 69
    move-result-object v8

    .line 72
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 73
    move-result v9

    .line 76
    int-to-float v9, v9

    .line 77
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    .line 78
    move-result v10

    .line 81
    mul-float/2addr v10, v9

    .line 82
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 83
    move-result v9

    .line 86
    int-to-float v9, v9

    .line 87
    div-float/2addr v10, v9

    .line 88
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 89
    move-result v9

    .line 92
    int-to-float v9, v9

    .line 93
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    .line 94
    move-result v11

    .line 97
    mul-float/2addr v11, v9

    .line 98
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 99
    move-result v9

    .line 102
    int-to-float v9, v9

    .line 103
    div-float/2addr v11, v9

    .line 104
    invoke-virtual {v7, v2, v8, v10, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 105
    move-result-object v7

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 109
    move-result-object v8

    .line 112
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 113
    move-result v9

    .line 116
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 117
    move-result v10

    .line 120
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 121
    move-result-object v7

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 125
    move-result-object v8

    .line 128
    invoke-virtual {v7, v2, v8, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 129
    move-result-object v7

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 133
    move-result-object v8

    .line 136
    invoke-virtual {v7, v2, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 137
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 142
    move-result-object v7

    .line 145
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 146
    move-result v8

    .line 149
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 150
    move-result v9

    .line 153
    invoke-virtual {v2, v3, v7, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 154
    move-result-object v2

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 158
    move-result-object v7

    .line 161
    invoke-virtual {v2, v3, v7, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 162
    move-result-object v2

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 166
    move-result-object v7

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 170
    move-result v8

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 174
    move-result v9

    .line 177
    invoke-virtual {v2, v3, v7, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 178
    move-result-object v2

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 182
    move-result-object v7

    .line 185
    invoke-virtual {v2, v3, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 186
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 189
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 191
    new-instance v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$39;

    .line 194
    move-object/from16 v7, p5

    .line 196
    invoke-direct {v3, v0, v1, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$39;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 198
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 203
    const-string v7, "FF_NoUI/MULTI_TASK_TYPE_FREE_FORM"

    .line 205
    invoke-direct {v0, v3, v7}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 207
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 210
    move-result-object v0

    .line 213
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 214
    move-result-object v0

    .line 217
    const/4 v2, 0x2

    .line 218
    new-array v2, v2, [F

    .line 219
    fill-array-data v2, :array_0

    .line 221
    const/4 v3, -0x2

    .line 224
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 225
    invoke-static {v7}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 231
    move-result-object v2

    .line 234
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 235
    move-result-object v2

    .line 238
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 239
    move-result-object v2

    .line 242
    const-string v7, "folmePosX"

    .line 243
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 245
    int-to-float v3, v3

    .line 247
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 248
    move-result-object v8

    .line 251
    const-string v9, "folmePosY"

    .line 252
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 254
    int-to-float v3, v3

    .line 256
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    move-result-object v10

    .line 260
    const-string v11, "folmeScaleX"

    .line 261
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 263
    move-result v3

    .line 266
    int-to-float v3, v3

    .line 267
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    .line 268
    move-result v12

    .line 271
    mul-float/2addr v12, v3

    .line 272
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 273
    move-result v3

    .line 276
    int-to-float v3, v3

    .line 277
    div-float/2addr v12, v3

    .line 278
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    move-result-object v12

    .line 282
    const-string v13, "folmeScaleY"

    .line 283
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 285
    move-result v3

    .line 288
    int-to-float v3, v3

    .line 289
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    .line 290
    move-result v14

    .line 293
    mul-float/2addr v14, v3

    .line 294
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 295
    move-result v3

    .line 298
    int-to-float v3, v3

    .line 299
    div-float/2addr v14, v3

    .line 300
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 301
    move-result-object v14

    .line 304
    const-string v15, "radius"

    .line 305
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    move-result-object v16

    .line 310
    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    .line 311
    move-result-object v3

    .line 314
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 315
    move-result-object v2

    .line 318
    const-string v8, "folmePosX"

    .line 319
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 321
    int-to-float v3, v3

    .line 323
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 324
    move-result-object v9

    .line 327
    const-string v10, "folmePosY"

    .line 328
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 330
    int-to-float v3, v3

    .line 332
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v11

    .line 336
    const-string v12, "folmeScaleX"

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 339
    move-result v3

    .line 342
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 343
    move-result-object v13

    .line 346
    const-string v14, "folmeScaleY"

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 349
    move-result v3

    .line 352
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 353
    move-result-object v15

    .line 356
    const-string v16, "radius"

    .line 357
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 359
    move-result-object v17

    .line 362
    move-object/from16 v18, v0

    .line 363
    filled-new-array/range {v8 .. v18}, [Ljava/lang/Object;

    .line 365
    move-result-object v0

    .line 368
    const-string/jumbo v3, "startMiuiFreeformEnteringDktAnimation   from poxX: "

    .line 369
    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/IStateStyle;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move-result-object v0

    .line 375
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const-string v2, " from posY: "

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, " from scaleX: "

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 396
    move-result v2

    .line 399
    int-to-float v2, v2

    .line 400
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    .line 401
    move-result v3

    .line 404
    mul-float/2addr v3, v2

    .line 405
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 406
    move-result v2

    .line 409
    int-to-float v2, v2

    .line 410
    div-float/2addr v3, v2

    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, " from scaleY: "

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 420
    move-result v2

    .line 423
    int-to-float v2, v2

    .line 424
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    .line 425
    move-result v3

    .line 428
    mul-float/2addr v3, v2

    .line 429
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 430
    move-result v2

    .line 433
    int-to-float v2, v2

    .line 434
    div-float/2addr v3, v2

    .line 435
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 436
    const-string v2, " from Radius: "

    .line 439
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 444
    const-string v3, " to poxX: "

    .line 447
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 452
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v3, " to posY: "

    .line 457
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string v3, " to scaleX: "

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 472
    move-result v3

    .line 475
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 476
    const-string v3, " to scaleY: "

    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 484
    move-result v3

    .line 487
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 494
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 497
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object v0

    .line 508
    const-string v1, "MiuiFreeformAnimation"

    .line 509
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 514
    nop

    .line 515
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 516
.end method

.method public startPinShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "startPinShellTransition: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiFreeformAnimation"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 24
    const v2, 0x7ffffff2

    .line 26
    invoke-virtual {v1, v2, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 29
    move-result-object p0

    .line 32
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 33
    invoke-direct {p2, v2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 35
    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
    .line 41
.end method

.method public startStrokeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 2
    move-result-object v7

    .line 5
    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    .line 6
    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 11
    move-result-object v0

    .line 14
    iget-object v9, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 15
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 17
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 19
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [F

    .line 23
    fill-array-data v1, :array_0

    .line 25
    const/4 v2, -0x2

    .line 28
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 29
    move-result-object v10

    .line 32
    new-instance v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$31;

    .line 33
    move-object v0, v11

    .line 35
    move-object v1, p0

    .line 36
    move-object v2, p2

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, v8

    .line 39
    move-object v5, v9

    .line 40
    move-object v6, v7

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$31;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)V

    .line 42
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 45
    move-result-object p2

    .line 48
    invoke-virtual {v10, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 49
    move-result-object p2

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 53
    invoke-virtual {p0, v8, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeAlpha()F

    .line 59
    move-result v3

    .line 62
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeColors()[F

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 67
    move-result v5

    .line 70
    move-object v1, v8

    .line 71
    move-object v2, v9

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 73
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 76
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedStrokeThickness()F

    .line 87
    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    move-result-object v0

    .line 94
    const-string v1, "folmeStrokeThickness"

    .line 95
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 100
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 101
    move-result-object p0

    .line 104
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeThickness()F

    .line 105
    move-result p1

    .line 108
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    move-result-object p1

    .line 112
    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 116
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 117
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
    .line 122
.end method

.method public startUnpinShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;ZLandroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "startUnpinShellTransition: needTransition : "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "MiuiFreeformAnimation"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-eqz p2, :cond_0

    .line 30
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 34
    const/16 v1, 0x450

    .line 36
    invoke-virtual {v0, v1, p3, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 38
    move-result-object p0

    .line 41
    new-instance p3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;

    .line 42
    invoke-direct {p3, v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$PendingTransition;-><init>(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 44
    invoke-virtual {p2, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 p0, 0x1

    .line 50
    iput-boolean p0, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasPendingUnpinTransition:Z

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 54
    invoke-virtual {p0, p3}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 56
    :goto_0
    const/4 p0, 0x3

    .line 59
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->hasTipViewType(I)Z

    .line 60
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    invoke-static {p0}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 66
    :cond_1
    return-void
    .line 69
.end method

.method public updateFreeformForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v1

    .line 7
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v2, "updateFreeformForUnhandledTransition change: "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, " miuiFreeformModeTaskInfo: "

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    const-string v2, "MiuiFreeformAnimation"

    .line 37
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    move-result-object v1

    .line 49
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 50
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 52
    move-result v1

    .line 55
    const/4 v2, 0x5

    .line 56
    if-ne v1, v2, :cond_4

    .line 57
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 61
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v3, 0x3

    .line 66
    if-nez v1, :cond_1

    .line 67
    iget-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasPendingUnpinTransition:Z

    .line 69
    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 73
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 75
    move-result v4

    .line 78
    invoke-virtual {v1, v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(II)V

    .line 79
    iput-boolean v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mHasPendingUnpinTransition:Z

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 88
    move-result-object v1

    .line 91
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 92
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 100
    move-result v3

    .line 103
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 104
    move-result v2

    .line 107
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 108
    move-result v3

    .line 111
    div-float/2addr v2, v3

    .line 112
    new-instance v3, Landroid/graphics/Rect;

    .line 113
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 115
    move-result-object v4

    .line 118
    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 119
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 122
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 124
    move-result-object v5

    .line 127
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 128
    int-to-float v6, v6

    .line 130
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 131
    int-to-float v7, v7

    .line 133
    invoke-virtual {v4, p2, v5, v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 134
    move-result-object v4

    .line 137
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 138
    move-result-object v5

    .line 141
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 142
    move-result v6

    .line 145
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 146
    move-result v7

    .line 149
    invoke-virtual {v4, p2, v5, v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 150
    move-result-object v4

    .line 153
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 154
    move-result-object v5

    .line 157
    invoke-virtual {v4, p2, v5, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 158
    move-result-object v4

    .line 161
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 162
    move-result-object v5

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 166
    move-result v6

    .line 169
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 170
    move-result v7

    .line 173
    invoke-virtual {v4, p2, v5, v6, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 174
    move-result-object v4

    .line 177
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 178
    move-result-object v5

    .line 181
    invoke-virtual {v4, p2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 182
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 185
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 187
    move-result-object p2

    .line 190
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 191
    int-to-float v4, v4

    .line 193
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 194
    int-to-float v3, v3

    .line 196
    invoke-virtual {p0, p3, p2, v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 197
    move-result-object p0

    .line 200
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 201
    move-result-object p2

    .line 204
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 205
    move-result v3

    .line 208
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 209
    move-result v0

    .line 212
    invoke-virtual {p0, p3, p2, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 213
    move-result-object p0

    .line 216
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 217
    move-result-object p2

    .line 220
    invoke-virtual {p0, p3, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 221
    move-result-object p0

    .line 224
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 225
    move-result-object p2

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 229
    move-result v0

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 233
    move-result v1

    .line 236
    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 237
    move-result-object p0

    .line 240
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 241
    move-result-object p1

    .line 244
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 245
    goto/16 :goto_1

    .line 248
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isForegroundPin()Z

    .line 250
    move-result v1

    .line 253
    if-nez v1, :cond_4

    .line 254
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 256
    move-result v1

    .line 259
    if-ne v1, v3, :cond_4

    .line 260
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 262
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinFloatingWindowPos:Landroid/graphics/Rect;

    .line 264
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 266
    move-result v6

    .line 269
    const/4 v7, 0x1

    .line 270
    const/4 v8, 0x1

    .line 271
    const/4 v9, 0x0

    .line 272
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->unPinFloatingWindow(Landroid/graphics/Rect;IZZZ)Z

    .line 273
    invoke-static {v3}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 276
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 279
    move-result v1

    .line 282
    const/4 v4, 0x1

    .line 283
    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 286
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 288
    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 292
    const/4 v3, 0x2

    .line 294
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 295
    const/16 v1, 0xa

    .line 298
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->showFreeFormGuideDialog(I)V

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 303
    move-result-wide v5

    .line 306
    iput-wide v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mEnterFreeFormTime:J

    .line 307
    new-instance v5, Landroid/graphics/Rect;

    .line 309
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 311
    move-result-object v6

    .line 314
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 315
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 318
    invoke-interface {v6, v4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->getCaptionHeight(Z)I

    .line 320
    move-result v4

    .line 323
    int-to-float v4, v4

    .line 324
    const/high16 v6, 0x40000000    # 2.0f

    .line 325
    div-float/2addr v4, v6

    .line 327
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 328
    move-result v6

    .line 331
    mul-float/2addr v6, v4

    .line 332
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 335
    move-result-object v4

    .line 338
    const v7, 0x7f0702db    # @dimen/dotRadius '2.0dp'

    .line 339
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 342
    move-result v4

    .line 345
    int-to-float v4, v4

    .line 346
    add-float/2addr v6, v4

    .line 347
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mContext:Landroid/content/Context;

    .line 348
    const/high16 v7, 0x40800000    # 4.0f

    .line 350
    invoke-static {v4, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 352
    move-result v4

    .line 355
    add-float/2addr v4, v6

    .line 356
    float-to-int v4, v4

    .line 357
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->hasTipViewType(I)Z

    .line 358
    move-result v1

    .line 361
    if-nez v1, :cond_3

    .line 362
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 364
    int-to-float v1, v1

    .line 366
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 367
    move-result v6

    .line 370
    div-int/2addr v6, v3

    .line 371
    int-to-float v3, v6

    .line 372
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 373
    move-result v6

    .line 376
    mul-float/2addr v6, v3

    .line 377
    add-float/2addr v6, v1

    .line 378
    float-to-int v1, v6

    .line 379
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 380
    add-int/2addr v3, v4

    .line 382
    invoke-static {v2, v1, v3, v2}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 383
    :cond_3
    :goto_0
    const-wide/16 v1, 0x0

    .line 386
    iput-wide v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mPinedStartTime:J

    .line 388
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModePinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 390
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 392
    move-result v2

    .line 395
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->removeBubble(I)V

    .line 396
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 399
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 401
    move-result-object v2

    .line 404
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 405
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 407
    move-result-object v3

    .line 410
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 411
    int-to-float v3, v3

    .line 413
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 414
    move-result-object v4

    .line 417
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 418
    int-to-float v4, v4

    .line 420
    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 421
    move-result-object v1

    .line 424
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 425
    move-result-object v2

    .line 428
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 429
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 431
    move-result v3

    .line 434
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 435
    move-result v4

    .line 438
    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 439
    move-result-object v1

    .line 442
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 443
    move-result-object v2

    .line 446
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 447
    const/high16 v3, 0x3f800000    # 1.0f

    .line 449
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 451
    move-result-object v1

    .line 454
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 455
    move-result-object v2

    .line 458
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 459
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 461
    move-result v4

    .line 464
    invoke-virtual {v1, p2, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 465
    move-result-object v1

    .line 468
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 469
    move-result-object v2

    .line 472
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 473
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 475
    move-result-object v4

    .line 478
    invoke-virtual {v1, p2, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 479
    move-result-object v1

    .line 482
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 483
    move-result-object v2

    .line 486
    invoke-virtual {v1, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 487
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->mMiuiFreeformModeSurfaceTransactionHelper:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 490
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 492
    move-result-object p2

    .line 495
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 496
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 498
    move-result-object v1

    .line 501
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 502
    int-to-float v1, v1

    .line 504
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 505
    move-result-object v2

    .line 508
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 509
    int-to-float v2, v2

    .line 511
    invoke-virtual {p0, p3, p2, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 512
    move-result-object p0

    .line 515
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 516
    move-result-object p2

    .line 519
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 520
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 522
    move-result v1

    .line 525
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationScaleX()F

    .line 526
    move-result v2

    .line 529
    invoke-virtual {p0, p3, p2, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 530
    move-result-object p0

    .line 533
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 534
    move-result-object p2

    .line 537
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 538
    invoke-virtual {p0, p3, p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 540
    move-result-object p0

    .line 543
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 544
    move-result-object p2

    .line 547
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 548
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationRadius()F

    .line 550
    move-result v1

    .line 553
    invoke-virtual {p0, p3, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 554
    move-result-object p0

    .line 557
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 558
    move-result-object p2

    .line 561
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 562
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationClipRect()Landroid/graphics/Rect;

    .line 564
    move-result-object v1

    .line 567
    invoke-virtual {p0, p3, p2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 568
    move-result-object p0

    .line 571
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 572
    move-result-object p1

    .line 575
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 576
    const/4 p0, 0x0

    .line 579
    iput-object p0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconBitmap:Landroid/graphics/Bitmap;

    .line 580
    const/4 p0, -0x1

    .line 582
    iput p0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconWidth:I

    .line 583
    iput p0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mExitIconHeight:I

    .line 585
    :cond_4
    :goto_1
    return-void
    .line 587
.end method
