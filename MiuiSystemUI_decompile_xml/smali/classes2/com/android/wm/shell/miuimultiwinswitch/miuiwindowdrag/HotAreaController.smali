.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final DRAGWIN_SCALE:F = 0.5f

.field public static final ENTERDRAG_SCALE:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "HotAreaController"


# instance fields
.field private mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private mHotAreaList:Ljava/util/List;

.field private mIsEnteredOtherArea:Z

.field private mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

.field private mOriginHotAreaType:I

.field private final mScreenSize:Landroid/graphics/Point;

.field private mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mIsEnteredOtherArea:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 13
    new-instance v0, Landroid/graphics/Point;

    .line 15
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mScreenSize:Landroid/graphics/Point;

    .line 20
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    .line 25
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 27
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 29
    return-void
    .line 31
.end method

.method private clearAllHotAreas()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 4
    return-void
    .line 7
.end method

.method public static getFreeformHotArea(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 10
    move-result p1

    .line 13
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getScreenType(Landroid/content/Context;)I

    .line 14
    move-result p0

    .line 17
    const/4 v1, 0x3

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq p0, v1, :cond_2

    .line 20
    if-ne p0, v2, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    if-ne p1, v2, :cond_1

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    .line 28
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 30
    int-to-float v2, v1

    .line 32
    const v3, 0x3dbc01a3    # 0.0918f

    .line 33
    mul-float/2addr v2, v3

    .line 36
    float-to-int v2, v2

    .line 37
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 38
    invoke-direct {p1, p0, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    return-object p1

    .line 43
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    .line 44
    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 46
    int-to-float v2, v1

    .line 48
    const v3, 0x3d27ef9e    # 0.041f

    .line 49
    mul-float/2addr v2, v3

    .line 52
    float-to-int v2, v2

    .line 53
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 54
    invoke-direct {p1, p0, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    return-object p1

    .line 59
    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    .line 60
    new-instance p0, Landroid/graphics/Rect;

    .line 62
    iget p1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 64
    int-to-float v1, p1

    .line 66
    const v2, 0x3d4ccccd    # 0.05f

    .line 67
    mul-float/2addr v1, v2

    .line 70
    float-to-int v1, v1

    .line 71
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 72
    int-to-float v2, v0

    .line 74
    const v3, 0x3d5d2f1b    # 0.054f

    .line 75
    mul-float/2addr v2, v3

    .line 78
    float-to-int v2, v2

    .line 79
    int-to-float p1, p1

    .line 80
    const v3, 0x3f733333    # 0.95f

    .line 81
    mul-float/2addr p1, v3

    .line 84
    float-to-int p1, p1

    .line 85
    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    return-object p0

    .line 89
    :cond_3
    new-instance p0, Landroid/graphics/Rect;

    .line 90
    iget p1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 92
    int-to-float v1, p1

    .line 94
    const v2, 0x3da3d70a    # 0.08f

    .line 95
    mul-float/2addr v1, v2

    .line 98
    float-to-int v1, v1

    .line 99
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 100
    int-to-float v2, v0

    .line 102
    const v3, 0x3d23d70a    # 0.04f

    .line 103
    mul-float/2addr v2, v3

    .line 106
    float-to-int v2, v2

    .line 107
    int-to-float p1, p1

    .line 108
    const v3, 0x3f6b851f    # 0.92f

    .line 109
    mul-float/2addr p1, v3

    .line 112
    float-to-int p1, p1

    .line 113
    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    return-object p0
    .line 117
.end method

.method private isRectContainPoint(Landroid/graphics/Rect;II)Z
    .locals 2

    .line 1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4
    if-ge p0, v0, :cond_0

    .line 6
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 10
    if-ge v1, p1, :cond_0

    .line 12
    if-lt p2, p0, :cond_0

    .line 14
    if-gt p2, v0, :cond_0

    .line 16
    if-lt p3, v1, :cond_0

    .line 18
    if-gt p3, p1, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public static restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V
    .locals 1

    .line 1
    if-eqz p0, :cond_6

    .line 2
    if-eqz p1, :cond_6

    .line 4
    if-eqz p2, :cond_6

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->isValid()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    const/4 v0, 0x0

    .line 20
    cmpg-float v0, p3, v0

    .line 21
    if-gtz v0, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    const/high16 v0, 0x41a00000    # 20.0f

    .line 36
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 38
    move-result p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 43
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 45
    move-result p0

    .line 48
    :goto_0
    float-to-int p0, p0

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    .line 50
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 52
    invoke-static {v0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getMoveableBounds(I)Landroid/graphics/Rect;

    .line 58
    move-result-object p0

    .line 61
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 62
    iget p3, p0, Landroid/graphics/Rect;->left:I

    .line 64
    if-ge p1, p3, :cond_2

    .line 66
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 68
    invoke-virtual {v0, p3, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 70
    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 73
    iget p3, p0, Landroid/graphics/Rect;->right:I

    .line 75
    if-le p1, p3, :cond_3

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 79
    move-result p1

    .line 82
    sub-int/2addr p3, p1

    .line 83
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 84
    invoke-virtual {v0, p3, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 86
    :cond_3
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 89
    iget p3, p0, Landroid/graphics/Rect;->top:I

    .line 91
    if-ge p1, p3, :cond_4

    .line 93
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 95
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 97
    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 100
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 102
    if-le p1, p0, :cond_5

    .line 104
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 108
    move-result p3

    .line 111
    sub-int/2addr p0, p3

    .line 112
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 113
    :cond_5
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 116
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 118
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 120
    :cond_6
    :goto_1
    return-void
    .line 123
.end method

.method public static scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 9
    return-object p0
    .line 12
.end method

.method private setFreeformHotAreaScale(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 6
    move-result-object p0

    .line 9
    const-string v0, "HotAreaController"

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 14
    move-result p0

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v1, "setFreeformHotAreaScale from MiuiFreeformModeTaskInfo, freeformScale="

    .line 20
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 37
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, "setFreeformHotAreaScale from MiuiFreeFormStackInfo, freeformScale="

    .line 47
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 59
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo p0, "setFreeformHotAreaScale failed!"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/high16 p0, 0x3f800000    # 1.0f

    .line 70
    :goto_0
    const/high16 p2, 0x3f000000    # 0.5f

    .line 72
    mul-float/2addr p0, p2

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 78
    return-void
    .line 81
.end method


# virtual methods
.method public enterHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 10
    move-result v0

    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mIsEnteredOtherArea:Z

    .line 17
    :cond_0
    return-object p1
    .line 19
.end method

.method public getCurrentPosHotAreaType(FF)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getOriginHotAreaType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    .line 2
    return p0
    .line 4
.end method

.method public getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    const-string v2, "HotAreaController"

    .line 5
    if-ltz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mScreenSize:Landroid/graphics/Point;

    .line 9
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 11
    int-to-float v1, v1

    .line 13
    cmpl-float v1, p1, v1

    .line 14
    if-lez v1, :cond_1

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v3, "getTargetHotAreaAtLocation x is outside screen! x="

    .line 20
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 35
    move-result p1

    .line 38
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mScreenSize:Landroid/graphics/Point;

    .line 39
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 41
    int-to-float v1, v1

    .line 43
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 44
    move-result p1

    .line 47
    :cond_1
    cmpg-float v1, p2, v0

    .line 48
    if-ltz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mScreenSize:Landroid/graphics/Point;

    .line 52
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 54
    int-to-float v1, v1

    .line 56
    cmpl-float v1, p2, v1

    .line 57
    if-lez v1, :cond_3

    .line 59
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    const-string v3, "getTargetHotAreaAtLocation y is outside screen! y="

    .line 63
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 78
    move-result p2

    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mScreenSize:Landroid/graphics/Point;

    .line 82
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 84
    int-to-float v0, v0

    .line 86
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 87
    move-result p2

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    move-result v0

    .line 96
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 97
    if-ltz v0, :cond_5

    .line 99
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 106
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 107
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaRegion()Landroid/graphics/Rect;

    .line 109
    move-result-object v1

    .line 112
    float-to-int v3, p1

    .line 113
    float-to-int v4, p2

    .line 114
    invoke-direct {p0, v1, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->isRectContainPoint(Landroid/graphics/Rect;II)Z

    .line 115
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 121
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 127
    goto :goto_0

    .line 129
    :cond_5
    const/4 v0, 0x0

    .line 130
    :goto_0
    if-nez v0, :cond_6

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v3, "x:"

    .line 135
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    const-string p1, " y:"

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 149
    const-string p1, " mHotAreaList:"

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 165
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_6
    return-object v0
    .line 169
.end method

.method public initHotAreas(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    const-string v1, "initHotAreas"

    const-string v7, "HotAreaController"

    .line 1
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->clearAllHotAreas()V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v2

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getScreenType(Landroid/content/Context;)I

    move-result v4

    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 10
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x5

    if-ne v10, v12, :cond_0

    .line 12
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->supportedSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v10

    move v12, v11

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x6

    if-ne v10, v12, :cond_1

    .line 14
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    iget v12, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->isSupportFreeform(I)Z

    move-result v10

    move v12, v10

    move v10, v11

    goto :goto_0

    .line 15
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->supportedSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v10

    .line 16
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    iget v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12, v13}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->isSupportFreeform(I)Z

    move-result v12

    :goto_0
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    if-ne v5, v11, :cond_6

    .line 17
    iput v13, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    const/4 v5, 0x2

    if-eq v4, v14, :cond_2

    if-ne v4, v5, :cond_1b

    :cond_2
    const/high16 v4, 0x41a00000    # 20.0f

    if-ne v2, v5, :cond_4

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v6

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 20
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 21
    filled-new-array {v5, v6}, [Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 22
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    invoke-direct {v2, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 23
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 24
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v15

    div-float/2addr v14, v8

    invoke-virtual {v2, v14}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 25
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    div-float/2addr v5, v9

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 26
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 28
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    div-float/2addr v5, v8

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 30
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    div-float/2addr v5, v9

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 31
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    .line 32
    invoke-static {v5, v2, v13, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v2

    .line 33
    new-instance v5, Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {v14, v11, v4, v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    float-to-int v6, v6

    .line 35
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, v11, v4, v14}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v4

    float-to-int v4, v4

    .line 36
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    invoke-direct {v5, v6, v13, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 38
    invoke-virtual {v2, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 39
    invoke-virtual {v2, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 40
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 41
    invoke-static {v4, v2, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    .line 43
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e75c28f    # 0.24f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 44
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 45
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3f428f5c    # 0.76f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 46
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v2, v4, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 48
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v13

    .line 49
    :goto_1
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 51
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 52
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 53
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    mul-float/2addr v2, v15

    div-float/2addr v2, v8

    .line 54
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v15

    div-float/2addr v3, v9

    .line 55
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 56
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 57
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 59
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 60
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 61
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 62
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 63
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v15

    div-float/2addr v11, v8

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 64
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    div-float/2addr v4, v9

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 65
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v6, 0x2

    invoke-direct {v4, v6, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 67
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    div-float/2addr v6, v8

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 69
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    div-float/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 70
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v6, 0x1

    .line 71
    invoke-static {v5, v4, v13, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v4

    .line 72
    new-instance v5, Landroid/graphics/Rect;

    .line 73
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x40400000    # 3.0f

    invoke-static {v11, v15, v14, v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    float-to-int v6, v6

    .line 74
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, v15, v14, v11}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v10

    float-to-int v10, v10

    .line 75
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v5, v6, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 77
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 79
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 80
    invoke-static {v2, v4, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    .line 82
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 83
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e051eb8    # 0.13f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 84
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3f51eb85    # 0.82f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 85
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v2, v4, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    move v5, v1

    goto :goto_2

    :cond_5
    move v5, v13

    .line 88
    :goto_2
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 90
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 91
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 92
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 93
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 94
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 95
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_6
    const v15, 0x3eac0831    # 0.336f

    const v19, 0x3de66666    # 0.1125f

    const/4 v11, 0x5

    if-ne v5, v11, :cond_f

    .line 96
    iput v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    if-eq v4, v14, :cond_b

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    goto/16 :goto_5

    :cond_7
    if-ne v2, v5, :cond_9

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    invoke-direct {v4, v11, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 99
    new-instance v5, Landroid/graphics/Rect;

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    invoke-direct {v5, v13, v13, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 102
    invoke-direct {v0, v4, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->setFreeformHotAreaScale(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 103
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 104
    invoke-static {v3, v4, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v3

    .line 105
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    .line 106
    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    .line 107
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    .line 108
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    int-to-float v1, v1

    const v10, 0x3f29fbe7    # 0.664f

    mul-float/2addr v1, v10

    float-to-int v1, v1

    int-to-float v4, v4

    const v10, 0x3d75c28f    # 0.06f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-direct {v5, v6, v13, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    div-float/2addr v1, v8

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 111
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v9

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 112
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 113
    :cond_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 115
    new-instance v5, Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    invoke-direct {v5, v13, v13, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 118
    invoke-direct {v0, v4, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->setFreeformHotAreaScale(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 119
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 120
    invoke-static {v3, v4, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v3

    .line 121
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    .line 122
    :goto_4
    new-instance v5, Landroid/graphics/Rect;

    .line 123
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    int-to-float v4, v4

    const v6, 0x3d75c28f    # 0.06f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-direct {v5, v13, v13, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    div-float/2addr v1, v8

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 126
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v9

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 127
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_b
    const/4 v5, 0x2

    :goto_5
    if-ne v2, v5, :cond_d

    .line 128
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 130
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 131
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 132
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 133
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v11, v14

    div-float/2addr v11, v8

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 135
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v9

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 136
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v6, 0x2

    invoke-direct {v4, v6, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 138
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 139
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v14

    div-float/2addr v6, v8

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 140
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v14

    div-float/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 141
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v6, 0x1

    .line 142
    invoke-static {v5, v4, v13, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v4

    .line 143
    new-instance v5, Landroid/graphics/Rect;

    .line 144
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v19

    sub-float/2addr v6, v11

    float-to-int v6, v6

    .line 145
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v19

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 146
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v5, v6, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 148
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 149
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 150
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 151
    invoke-static {v2, v4, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v2

    .line 152
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    .line 153
    :goto_6
    new-instance v5, Landroid/graphics/Rect;

    .line 154
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v4, v4

    const v8, 0x3d2c0831    # 0.042f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 155
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f733333    # 0.95f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 156
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    invoke-direct {v5, v6, v4, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 158
    invoke-direct {v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->setFreeformHotAreaScale(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 159
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 160
    :cond_d
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 162
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 163
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 164
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 165
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const v4, 0x3eb33333    # 0.35f

    .line 166
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    const v11, 0x3f333333    # 0.7f

    .line 167
    invoke-virtual {v6, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 168
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x2

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 170
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    const v4, 0x3f333333    # 0.7f

    .line 172
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 173
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 174
    invoke-static {v4, v6, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v4

    .line 175
    new-instance v5, Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v19

    sub-float/2addr v6, v11

    float-to-int v6, v6

    .line 177
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v19

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 178
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v5, v6, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 181
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 182
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 183
    invoke-static {v2, v4, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v2

    .line 184
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    .line 185
    :goto_7
    new-instance v5, Landroid/graphics/Rect;

    .line 186
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v8, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v4, v4

    const v8, 0x3d2c0831    # 0.042f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 187
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f6b851f    # 0.92f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 188
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    invoke-direct {v5, v6, v4, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 190
    invoke-direct {v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->setFreeformHotAreaScale(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 191
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 192
    :cond_f
    iget v5, v6, Landroid/graphics/Rect;->left:I

    const v11, 0x3dbc01a3    # 0.0918f

    const v20, 0x3e178d50    # 0.148f

    if-nez v5, :cond_18

    iget v5, v6, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_18

    const/4 v5, 0x1

    .line 193
    iput v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    if-eq v4, v14, :cond_14

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    goto/16 :goto_a

    :cond_10
    if-ne v2, v5, :cond_12

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 195
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 196
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 197
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 198
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 199
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v6, v14

    div-float/2addr v6, v8

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 201
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v9

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 202
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 204
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v8

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 206
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v9

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 207
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 208
    invoke-static {v4, v2, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v2

    .line 209
    new-instance v4, Landroid/graphics/Rect;

    .line 210
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    .line 211
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v10, 0x3f29fbe7    # 0.664f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    .line 212
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v4, v5, v13, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 214
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 215
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 216
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 217
    invoke-static {v4, v2, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 220
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    .line 221
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3f266666    # 0.65f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 222
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v2, v4, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    move v5, v1

    goto :goto_8

    :cond_11
    move v5, v13

    .line 225
    :goto_8
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 227
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 228
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 229
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 230
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 231
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 232
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 233
    :cond_12
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 235
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 236
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    .line 237
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 238
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 239
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 240
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 241
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x2

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 243
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 244
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 245
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 246
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 247
    invoke-static {v4, v6, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 248
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-virtual {v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDividerWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x41c00000    # 24.0f

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 249
    new-instance v4, Landroid/graphics/Rect;

    .line 250
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v2

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 251
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    .line 252
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-direct {v4, v13, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    invoke-virtual {v10, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    move v5, v1

    goto :goto_9

    :cond_13
    move v5, v13

    .line 255
    :goto_9
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 257
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 258
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 259
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 260
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 261
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 262
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_14
    const/4 v5, 0x2

    :goto_a
    if-ne v2, v5, :cond_16

    .line 263
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 264
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 265
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 266
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 267
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 268
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 269
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 270
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 271
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x2

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 273
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 274
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 275
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 276
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 277
    invoke-static {v4, v6, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v4

    .line 278
    new-instance v5, Landroid/graphics/Rect;

    .line 279
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v19

    sub-float/2addr v6, v11

    float-to-int v6, v6

    .line 280
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v19

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 281
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v5, v6, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 284
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 285
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 286
    invoke-static {v2, v4, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 287
    new-instance v2, Landroid/graphics/Rect;

    .line 288
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e75c28f    # 0.24f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 289
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 290
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3f428f5c    # 0.76f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 291
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v2, v4, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 293
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    move v5, v1

    goto :goto_b

    :cond_15
    move v5, v13

    .line 294
    :goto_b
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 295
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 296
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 297
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 298
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 299
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 300
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 301
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 302
    :cond_16
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 304
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 305
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 306
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 307
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 308
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 309
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 310
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x2

    invoke-direct {v6, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 312
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 314
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 315
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 316
    invoke-static {v4, v6, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v4

    .line 317
    new-instance v5, Landroid/graphics/Rect;

    .line 318
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v20

    sub-float/2addr v6, v11

    float-to-int v6, v6

    .line 319
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v20

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 320
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v5, v6, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 321
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 322
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 323
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 324
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 325
    invoke-static {v2, v4, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 326
    new-instance v2, Landroid/graphics/Rect;

    .line 327
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 328
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e051eb8    # 0.13f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 329
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3f51eb85    # 0.82f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 330
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v2, v4, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    move v5, v1

    goto :goto_c

    :cond_17
    move v5, v13

    .line 333
    :goto_c
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 334
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 335
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 336
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 337
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 338
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 339
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 340
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_18
    const/4 v5, 0x2

    .line 341
    iput v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    if-eq v4, v14, :cond_20

    if-ne v4, v5, :cond_19

    goto/16 :goto_11

    :cond_19
    if-ne v2, v5, :cond_1c

    .line 342
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    invoke-direct {v2, v13, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 343
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 344
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 345
    filled-new-array {v4, v5}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 346
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 347
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 348
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v6, v14

    div-float/2addr v6, v8

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 349
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v9

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 350
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 352
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v8

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 354
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v9

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 355
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x1

    .line 356
    invoke-static {v4, v2, v13, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v2

    .line 357
    new-instance v4, Landroid/graphics/Rect;

    .line 358
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    .line 359
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v10, 0x3f29fbe7    # 0.664f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    .line 360
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v4, v5, v13, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 362
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 363
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 364
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v5, 0x5

    .line 365
    invoke-static {v4, v2, v5, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v10

    .line 366
    new-instance v2, Landroid/graphics/Rect;

    .line 367
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 368
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-int v5, v5

    .line 369
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v6

    int-to-float v6, v6

    const v11, 0x3f266666    # 0.65f

    mul-float/2addr v6, v11

    float-to-int v6, v6

    .line 370
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v2, v4, v5, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 372
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    move v5, v1

    goto :goto_d

    :cond_1a
    move v5, v13

    .line 373
    :goto_d
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 374
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 375
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 376
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 377
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 378
    invoke-virtual {v10, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 379
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 380
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_e
    move-object/from16 v18, v7

    goto/16 :goto_14

    .line 381
    :cond_1c
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 382
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 383
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-virtual {v5, v2, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 384
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1d

    const v5, 0x3f19999a    # 0.6f

    goto :goto_f

    :cond_1d
    const v6, 0x3f19999a    # 0.6f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1e

    const v5, 0x3f28f5c3    # 0.66f

    goto :goto_f

    :cond_1e
    const v5, 0x3f3851ec    # 0.72f

    .line 385
    :goto_f
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-virtual {v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDividerWidth()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v4, v6

    .line 386
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v4

    .line 387
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v5, v15, v11}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v11

    float-to-int v11, v11

    .line 388
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v14

    .line 389
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v15

    invoke-direct {v6, v13, v11, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 390
    new-instance v11, Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v15

    .line 391
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v16

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object/from16 v18, v7

    sub-int v7, v16, v17

    invoke-direct {v11, v13, v14, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 392
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v14, 0x1

    invoke-direct {v7, v14, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 393
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v11, 0x3f000000    # 0.5f

    .line 394
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 395
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 396
    iget-object v14, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v14, 0x2

    invoke-direct {v7, v14, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 398
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 399
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 400
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 401
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v10, 0x5

    .line 402
    invoke-static {v6, v7, v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v7

    .line 403
    new-instance v6, Landroid/graphics/Rect;

    .line 404
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v5

    mul-float/2addr v10, v2

    float-to-int v2, v10

    .line 405
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    .line 406
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v4

    float-to-int v4, v10

    invoke-direct {v6, v13, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    move v5, v1

    goto :goto_10

    :cond_1f
    move v5, v13

    .line 409
    :goto_10
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 410
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 411
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 412
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 413
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 414
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 415
    invoke-virtual {v7, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 416
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_20
    :goto_11
    move-object/from16 v18, v7

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x2

    if-ne v2, v5, :cond_22

    .line 417
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v6

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 419
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 420
    filled-new-array {v5, v6}, [Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 421
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v7, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 422
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v5, 0x3f000000    # 0.5f

    .line 423
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 424
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 425
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x2

    invoke-direct {v7, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 427
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 429
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 430
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v6, 0x1

    .line 431
    invoke-static {v5, v7, v13, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v5

    .line 432
    new-instance v6, Landroid/graphics/Rect;

    .line 433
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v19

    sub-float/2addr v7, v11

    float-to-int v7, v7

    .line 434
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v19

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 435
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v6, v7, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 436
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 437
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 438
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    div-float/2addr v2, v9

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 439
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v6, 0x5

    .line 440
    invoke-static {v2, v5, v6, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v7

    .line 441
    new-instance v2, Landroid/graphics/Rect;

    .line 442
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 443
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v6, v10

    float-to-int v6, v6

    .line 444
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    mul-int/2addr v10, v14

    int-to-float v10, v10

    div-float/2addr v10, v4

    float-to-int v4, v10

    .line 445
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    invoke-direct {v2, v5, v6, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 446
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 447
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    move v5, v1

    goto :goto_12

    :cond_21
    move v5, v13

    .line 448
    :goto_12
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 449
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 450
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 451
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 452
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 453
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 454
    invoke-virtual {v7, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 455
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 456
    :cond_22
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v6

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 457
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 458
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 459
    filled-new-array {v5, v6}, [Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 460
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x1

    invoke-direct {v7, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 461
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    const/high16 v5, 0x3f000000    # 0.5f

    .line 462
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 463
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 464
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    const/4 v11, 0x2

    invoke-direct {v7, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;-><init>(IZ)V

    .line 466
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 467
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 468
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 469
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v6, 0x1

    .line 470
    invoke-static {v5, v7, v13, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v5

    .line 471
    new-instance v6, Landroid/graphics/Rect;

    .line 472
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v20

    sub-float/2addr v7, v11

    float-to-int v7, v7

    .line 473
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v20

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 474
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v11

    invoke-direct {v6, v7, v13, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 476
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    .line 477
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    div-float/2addr v2, v9

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 478
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    const/4 v6, 0x5

    .line 479
    invoke-static {v2, v5, v6, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController$$ExternalSyntheticOutline0;->m(Ljava/util/List;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;IZ)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    move-result-object v7

    .line 480
    new-instance v2, Landroid/graphics/Rect;

    .line 481
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 482
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v6, v10

    float-to-int v6, v6

    .line 483
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v10

    mul-int/2addr v10, v14

    int-to-float v10, v10

    div-float/2addr v10, v4

    float-to-int v4, v10

    .line 484
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v10

    invoke-direct {v2, v5, v6, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 485
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setHotAreaRegion(Landroid/graphics/Rect;)V

    .line 486
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    move v5, v2

    goto :goto_13

    :cond_23
    move v5, v13

    .line 487
    :goto_13
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 488
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 489
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    move-result v1

    .line 490
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    .line 491
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    div-float/2addr v2, v8

    .line 492
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleX(F)V

    mul-float/2addr v3, v1

    div-float/2addr v3, v9

    .line 493
    invoke-virtual {v7, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->setScaleY(F)V

    .line 494
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initHotAreas mHotAreaList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mHotAreaList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnteredOtherHotArea()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mIsEnteredOtherArea:Z

    .line 2
    return p0
    .line 4
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mIsEnteredOtherArea:Z

    .line 3
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->mOriginHotAreaType:I

    .line 6
    const-string v0, "HotAreaController"

    .line 8
    const-string v1, "reset"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->clearAllHotAreas()V

    .line 15
    return-void
    .line 18
.end method
