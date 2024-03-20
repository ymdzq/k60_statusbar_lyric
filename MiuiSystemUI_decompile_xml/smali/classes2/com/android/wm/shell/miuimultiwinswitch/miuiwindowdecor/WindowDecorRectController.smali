.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentWindowDecorRects:Ljava/util/List;

.field private final mHideDisplayCutoutController:Ljava/util/Optional;

.field private final mImpl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

.field private final mLastWindowDecorRects:Ljava/util/List;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mSplitScreen:Ljava/util/Optional;

.field private final mWindowDecorRectListeners:Ljava/util/List;

.field private mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

.field private final windowDecorWidth:I

.field private final windowDecorheight:I


# direct methods
.method public static synthetic $r8$lambda$Jvd2rU_hCORse4s9dziWFbQXqr8(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->lambda$dispatchWindowDecorRects$3(Landroid/graphics/Rect;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$Q3-pjSuu_VOtGeHI2UiX9ShEoHE(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->lambda$dispatchWindowDecorRects$2(Landroid/graphics/Rect;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$U6is826XASLEgMmb8QpUxnXlE1M(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->lambda$dispatchWindowDecorRects$1(Landroid/graphics/Rect;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic $r8$lambda$fufjJ4sBiTuTHH82JradbDJSqZY(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->lambda$dispatchWindowDecorRects$0(Landroid/graphics/Rect;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mLastWindowDecorRects:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorRectListeners:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;)V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mImpl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 35
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mSplitScreen:Ljava/util/Optional;

    .line 37
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mHideDisplayCutoutController:Ljava/util/Optional;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p2

    .line 44
    const p3, 0x7f07027a    # @dimen/decor_caption_width '62.0dp'

    .line 45
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result p2

    .line 51
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->windowDecorWidth:I

    .line 52
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 54
    move-result p2

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p1

    .line 61
    const p3, 0x7f070277    # @dimen/decor_caption_bottom_padding '6.0dp'

    .line 62
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result p1

    .line 68
    add-int/2addr p1, p2

    .line 69
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->windowDecorheight:I

    .line 70
    return-void
    .line 72
.end method

.method private calculateWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/Rect;
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 7
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 9
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 11
    move-result-object v1

    .line 14
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v3

    .line 20
    iget v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->windowDecorWidth:I

    .line 21
    sub-int/2addr v3, v4

    .line 23
    div-int/lit8 v3, v3, 0x2

    .line 24
    add-int/2addr v3, v2

    .line 26
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 27
    add-int/2addr v3, v4

    .line 29
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mSplitScreen:Ljava/util/Optional;

    .line 32
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mContext:Landroid/content/Context;

    .line 40
    iget v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->windowDecorWidth:I

    .line 42
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->windowDecorheight:I

    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 46
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isForceBlack()Z

    .line 48
    move-result v7

    .line 51
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mSplitScreen:Ljava/util/Optional;

    .line 52
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    move-object v8, v2

    .line 58
    check-cast v8, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 59
    move-object v4, p1

    .line 61
    invoke-static/range {v3 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->calCulateCaptionOffsetY(Landroid/content/Context;Landroid/app/TaskInfo;IIZLcom/android/wm/shell/sosc/SoScSplitScreenController;)I

    .line 62
    move-result p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 68
    add-int/2addr v1, p1

    .line 70
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 71
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->windowDecorheight:I

    .line 73
    add-int/2addr v1, p0

    .line 75
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    return-object v0
    .line 78
.end method

.method private static synthetic lambda$dispatchWindowDecorRects$0(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    return p0
    .line 4
.end method

.method private static synthetic lambda$dispatchWindowDecorRects$1(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 2
    return p0
    .line 4
.end method

.method private static synthetic lambda$dispatchWindowDecorRects$2(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 2
    return p0
    .line 4
.end method

.method private static synthetic lambda$dispatchWindowDecorRects$3(Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2
    return p0
    .line 4
.end method

.method private splitScreenVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mSplitScreen:Ljava/util/Optional;

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mSplitScreen:Ljava/util/Optional;

    .line 10
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method


# virtual methods
.method public asWindowDecorRectDispatcher()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mImpl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

    .line 2
    return-object p0
    .line 4
.end method

.method public dispatchFullScreenWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->splitScreenVisible()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 25
    move-result v0

    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 32
    move-result v0

    .line 35
    const/4 v1, 0x3

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->calculateWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/Rect;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchWindowDecorRects(Ljava/util/List;)V

    .line 50
    :cond_2
    :goto_0
    return-void
    .line 53
.end method

.method public dispatchSplitScreenWindowDecorRect(Landroid/util/SparseArray;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->splitScreenVisible()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 34
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 36
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 38
    move-result v0

    .line 41
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 45
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 48
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 50
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 52
    move-result v1

    .line 55
    if-eq v0, v1, :cond_0

    .line 56
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->supportSoScMinimizedMode()Z

    .line 63
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 69
    move-result v0

    .line 72
    if-eq v0, v3, :cond_3

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 75
    move-result v0

    .line 78
    :goto_0
    if-ge v2, v0, :cond_3

    .line 79
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    invoke-direct {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->calculateWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/Rect;

    .line 87
    move-result-object v1

    .line 90
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 91
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 99
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 101
    return-void

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 105
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mCurrentWindowDecorRects:Ljava/util/List;

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchWindowDecorRects(Ljava/util/List;)V

    .line 115
    :cond_4
    :goto_1
    return-void
    .line 118
.end method

.method public dispatchWindowDecorRects(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorRectListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 17
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;

    .line 21
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 27
    move-result-object v0

    .line 30
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;

    .line 31
    const/4 v2, 0x2

    .line 33
    invoke-direct {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 37
    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;

    .line 41
    const/4 v2, 0x3

    .line 43
    invoke-direct {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 47
    move-result-object v0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mLastWindowDecorRects:Ljava/util/List;

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorRectListeners:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 68
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 78
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;

    .line 79
    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;->onWindowDecorRectChanged(Ljava/util/List;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mLastWindowDecorRects:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mLastWindowDecorRects:Ljava/util/List;

    .line 92
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
    .line 97
.end method

.method public getWindowDecorViewModel()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public registerWindowDecorRectListener(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorRectListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public setWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    return-void
    .line 4
.end method

.method public unRegisterWindowDecorRectListener(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->mWindowDecorRectListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method
