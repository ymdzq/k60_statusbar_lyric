.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# static fields
.field public static final ACCESSABLE_MARGIN_DIP:I = 0x6

.field public static final ACCESSABLE_MARGIN_DIP_PAD:I = 0x14

.field public static final ROTATING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeDisplayInfo"

.field public static final UNDEFINED:I


# instance fields
.field private mBottomMargin:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mImeHeight:I

.field private final mInsetsState:Landroid/view/InsetsState;

.field private mIsImeShowing:Z

.field private mLastIsWideScreen:Z

.field private mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private final mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private rotatedStatus:I


# direct methods
.method public static synthetic $r8$lambda$FLBxA4387Chw4HRwc6q3HHG6HpY(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->lambda$new$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$RF8FfT9KKT2ULexm5EJx0zB0o5I(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->lambda$new$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/common/DisplayController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayLayout(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmInsetsState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Landroid/view/InsetsState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mInsetsState:Landroid/view/InsetsState;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIsWideScreen(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mLastIsWideScreen:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmLastIsWideScreen(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mLastIsWideScreen:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/sysui/ShellInit;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    .line 5
    invoke-direct {v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 10
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->rotatedStatus:I

    .line 13
    new-instance v2, Landroid/view/InsetsState;

    .line 15
    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mInsetsState:Landroid/view/InsetsState;

    .line 20
    sget v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

    .line 22
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mBottomMargin:I

    .line 24
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;

    .line 26
    invoke-direct {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V

    .line 28
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 31
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V

    .line 35
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 38
    new-instance v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;

    .line 40
    invoke-direct {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V

    .line 42
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

    .line 45
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 49
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 51
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 53
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 55
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 57
    new-instance p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 60
    invoke-virtual {p4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 62
    move-result-object p2

    .line 65
    invoke-direct {p1, p4, p2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 69
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 72
    invoke-virtual {p5, v1, v2}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 74
    new-instance p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$$ExternalSyntheticLambda1;

    .line 77
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V

    .line 79
    invoke-virtual {p6, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 82
    return-void
    .line 85
.end method

.method private lambda$new$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method private synthetic lambda$new$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 1
    if-eq p2, p3, :cond_0

    .line 2
    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->rotatedStatus:I

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 7
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "MiuiFreeformModeDisplayInfo"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p2, "  "

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 38
    const-string v0, "displayWidth="

    .line 39
    invoke-static {p2, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "displayheight="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 72
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "isImeShowing="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mIsImeShowing:Z

    .line 99
    const-string v2, "imeHeight="

    .line 101
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object p2

    .line 106
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mImeHeight:I

    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    return-void
    .line 119
.end method

.method public getDisplayController()Lcom/android/wm/shell/common/DisplayController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDisplayHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 4
    return p0
    .line 6
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDisplayWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 4
    return p0
    .line 6
.end method

.method public getImeHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mImeHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMoveableBounds(III)Landroid/graphics/Rect;
    .locals 1

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 19
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getMoveableBounds(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 5
    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 6
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->showingStatusBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getScreenType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 9
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 11
    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 12
    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 13
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 14
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mBottomMargin:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v0, p0

    .line 15
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getMoveableBoundsByDx(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 3
    move-result-object p0

    .line 6
    return-object p0
    .line 7
.end method

.method public getMoveableBoundsByDy(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 3
    move-result-object p0

    .line 6
    return-object p0
    .line 7
.end method

.method public getRotatedStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->rotatedStatus:I

    .line 2
    return p0
    .line 4
.end method

.method public getRotation()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 4
    return p0
    .line 6
.end method

.method public isImeShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mIsImeShowing:Z

    .line 2
    return p0
    .line 4
.end method

.method public onTransitionFinished(Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTransitionFinished(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 2
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->rotatedStatus:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->rotatedStatus:I

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiFreeformModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    move-result-object p0

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mAvoidTasksPending:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskStateChanged(IILandroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->mAvoidTasksPending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTransitionStarting(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setImeVisibility(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mIsImeShowing:Z

    .line 2
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mImeHeight:I

    .line 4
    return-void
    .line 6
.end method

.method public updateDisplayLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public updateDisplayStableInsets(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

    .line 7
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->mBottomMargin:I

    .line 9
    return-void
    .line 11
.end method
