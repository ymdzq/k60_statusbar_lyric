.class public Lmiuix/core/util/EnvStateManager;
.super Ljava/lang/Object;
.source "EnvStateManager.java"


# static fields
.field static volatile mIsFullScreenGestureMode:Ljava/lang/Boolean;

.field static final mNaviModeLock:Ljava/lang/Object;

.field static volatile mNavigationBarHeight:I

.field static volatile mNavigationBarHeightDp:I

.field static final mNavigationBarHeightLock:Ljava/lang/Object;

.field static volatile mStatusBarHeight:I

.field static volatile mStatusBarHeightDp:I

.field static final mStatusBarHeightLock:Ljava/lang/Object;

.field static sOriginConfig:Lmiuix/view/DisplayConfig;

.field static final sScreenSize:Landroid/graphics/Point;

.field static final sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/core/util/WindowBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 28
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 29
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 30
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 31
    sput v1, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    return-void
.end method

.method private static ensureOriginConfigExist(Landroid/content/res/Configuration;)V
    .locals 1

    .line 260
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lmiuix/view/DisplayConfig;

    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    :cond_0
    return-void
.end method

.method private static getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 129
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/WindowBaseInfo;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lmiuix/core/util/WindowBaseInfo;

    invoke-direct {v1}, Lmiuix/core/util/WindowBaseInfo;-><init>()V

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getScreenShortEdge(Landroid/content/Context;)I
    .locals 1

    .line 68
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 69
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 60
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isSizeDirty(Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 62
    invoke-static {v1, p0}, Lmiuix/core/util/EnvStateManager;->updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .locals 2

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 254
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 255
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v0, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 256
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;Z)I
    .locals 3

    .line 227
    sget v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 228
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    sget v2, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    if-ne v2, v1, :cond_0

    .line 230
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    .line 232
    sget v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 234
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 236
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    goto :goto_1

    :cond_2
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    :goto_1
    return p0
.end method

.method public static getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-static {p0, v0, v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-static {p0, p1, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lmiuix/core/util/WindowBaseInfo;
    .locals 1

    .line 149
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 150
    invoke-static {p0, v0, p1, p2}, Lmiuix/core/util/EnvStateManager;->updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 120
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 121
    iget-boolean v1, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v1, :cond_0

    .line 122
    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 124
    :cond_0
    iget-object p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 34
    new-instance v0, Lmiuix/view/DisplayConfig;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    return-void
.end method

.method public static isFreeFormMode(Landroid/content/Context;)Z
    .locals 0

    .line 211
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 212
    iget p0, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p0}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p0

    return p0
.end method

.method public static isFullScreenGestureMode(Landroid/content/Context;)Z
    .locals 2

    .line 216
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 217
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 219
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 221
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 223
    :cond_1
    :goto_0
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isSizeDirty(Landroid/graphics/Point;)Z
    .locals 2

    .line 207
    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static markEnvStateDirty(Landroid/content/Context;)V
    .locals 2

    .line 74
    sget-object p0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markSizeDirty(Landroid/graphics/Point;)V

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 77
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mNaviModeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p0, 0x0

    .line 78
    :try_start_1
    sput-object p0, Lmiuix/core/util/EnvStateManager;->mIsFullScreenGestureMode:Ljava/lang/Boolean;

    .line 79
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    sget-object p0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, -0x1

    .line 81
    :try_start_2
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeight:I

    .line 82
    sput v0, Lmiuix/core/util/EnvStateManager;->mNavigationBarHeightDp:I

    .line 83
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    sget-object v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_3
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 86
    sput v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 87
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 83
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p0

    .line 79
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    .line 76
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public static markSizeDirty(Landroid/graphics/Point;)V
    .locals 2

    .line 92
    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_1

    .line 93
    :cond_0
    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 94
    iput v1, p0, Landroid/graphics/Point;->y:I

    :cond_1
    return-void
.end method

.method public static declared-synchronized markWindowInfoDirty(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lmiuix/core/util/EnvStateManager;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    .line 101
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 106
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static removeInfoOfContext(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 43
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateOriginConfig(Lmiuix/view/DisplayConfig;)V
    .locals 0

    .line 38
    sput-object p0, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    return-void
.end method

.method public static updateScreenSize(Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 1

    .line 54
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {p0, p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateWindowInfo(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/content/res/Configuration;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    .line 162
    invoke-static {p2, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 167
    :cond_3
    :goto_0
    iget-boolean p2, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    .line 168
    :cond_4
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    :cond_5
    return-void
.end method

.method public static updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .locals 1

    .line 199
    iget-boolean v0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p0, p1}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 202
    :cond_0
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiuix/core/util/ScreenModeHelper;->detectWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V

    const/4 p0, 0x0

    .line 203
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    return-void
.end method

.method public static updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .locals 3

    .line 173
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    .line 175
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 176
    invoke-static {p0, v1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v1

    iget-object v2, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 177
    invoke-static {p0, v2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    .line 175
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 178
    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 179
    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p0

    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    const/4 p0, 0x0

    .line 180
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method

.method public static updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V
    .locals 5

    .line 184
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->ensureOriginConfigExist(Landroid/content/res/Configuration;)V

    .line 185
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    .line 186
    sget-object v2, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 187
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    .line 188
    invoke-static {v1, v3}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v3

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v4, v4

    .line 189
    invoke-static {v1, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v1

    .line 187
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 190
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 193
    iget-object p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 194
    invoke-static {v0, p0}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(II)I

    move-result p0

    iput p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    const/4 p0, 0x0

    .line 195
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    return-void
.end method
