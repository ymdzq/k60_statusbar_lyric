.class public Lcom/android/settings/edgesuppression/EdgeSuppressionManager;
.super Ljava/lang/Object;
.source "EdgeSuppressionManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;


# instance fields
.field private mConditionSize:[I

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenSize:Landroid/graphics/Point;

.field private mIsReflectionFailed:Z

.field private mLaySensorWrapper:Lcom/android/settings/edgesuppression/LaySensorWrapper;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mSupportHighResolution:Z

.field private final mSupportSensor:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mSupportHighResolution:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mIsReflectionFailed:Z

    .line 42
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mCurrentScreenSize:Landroid/graphics/Point;

    .line 48
    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->setScreenSize()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->getEdgeSuppressionSizeArray()V

    const-string/jumbo p1, "support_edgesuppression_with_sensor"

    .line 53
    invoke-static {p1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mSupportSensor:Z

    return-void
.end method

.method private getEdgeSuppressionSizeArray()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    :try_start_0
    const-class v2, Landroid/hardware/input/InputManager;

    const-string v3, "getEdgeSuppressionSize"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 71
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    if-nez v2, :cond_1

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 76
    iput-object v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mIsReflectionFailed:Z

    const-string/jumbo v3, "support_high_resolution"

    .line 78
    invoke-static {v3, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mSupportHighResolution:Z

    const-string v3, "edge_suppresson_condition"

    .line 79
    invoke-static {v3}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 81
    iget-boolean v4, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mSupportHighResolution:Z

    if-eqz v4, :cond_0

    const/high16 v4, 0x42c80000    # 100.0f

    goto :goto_1

    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    :goto_1
    if-eqz v3, :cond_1

    .line 84
    array-length v5, v3

    const/4 v6, 0x6

    if-lt v5, v6, :cond_1

    .line 85
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    aget v5, v3, v0

    int-to-float v5, v5

    div-float/2addr v5, v4

    aget v6, v3, v1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p0, v1

    const/4 v5, 0x2

    .line 87
    aget v6, v3, v5

    int-to-float v6, v6

    div-float/2addr v6, v4

    aget v1, v3, v1

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p0, v0

    const/4 v0, 0x3

    .line 89
    aget v6, v3, v0

    int-to-float v6, v6

    div-float/2addr v6, v4

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p0, v5

    const/4 v5, 0x4

    .line 91
    aget v6, v3, v5

    int-to-float v6, v6

    div-float/2addr v6, v4

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, p0, v0

    .line 93
    aget v0, v3, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p0, v5

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/edgesuppression/EdgeSuppressionManager;
    .locals 2

    .line 57
    sget-object v0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->sInstance:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->sInstance:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    invoke-direct {v1, p0}, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->sInstance:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->sInstance:Lcom/android/settings/edgesuppression/EdgeSuppressionManager;

    return-object p0
.end method


# virtual methods
.method public getAllowAdjustRange()I
    .locals 2

    .line 119
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    const/4 v0, 0x4

    aget v0, p0, v0

    const/4 v1, 0x0

    aget p0, p0, v1

    sub-int/2addr v0, p0

    return v0
.end method

.method public getConditionSize(I)I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    aget p0, p0, p1

    return p0
.end method

.method public getOldConditionSize(I)F
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    aget p1, p0, p1

    int-to-float p1, p1

    const/4 v0, 0x4

    aget p0, p0, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public getSizeOfInputMethod(FLjava/lang/String;)I
    .locals 1

    const-string v0, "custom_suppression"

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    const/4 p2, 0x0

    aget p2, p0, p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x3

    aget p0, p0, p2

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mConditionSize:[I

    const/4 p2, 0x4

    aget p0, p0, p2

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x420c0000    # 35.0f

    mul-float/2addr p1, p0

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public isReflectionFailed()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mIsReflectionFailed:Z

    return p0
.end method

.method public isSupportSensor()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mSupportSensor:Z

    return p0
.end method

.method public registerLaySensor(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mLaySensorWrapper:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/settings/edgesuppression/LaySensorWrapper;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mLaySensorWrapper:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mLaySensorWrapper:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->hasListenerRegistered(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mLaySensorWrapper:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    invoke-virtual {p0, p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->registerListener(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)V

    :cond_1
    return-void
.end method

.method public setScreenSize()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mCurrentScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mCurrentScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenWidth:I

    .line 162
    iget-object v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mCurrentScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mScreenHeight:I

    return-void
.end method

.method public unRegisterLaySensor()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/edgesuppression/EdgeSuppressionManager;->mLaySensorWrapper:Lcom/android/settings/edgesuppression/LaySensorWrapper;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->unregisterAllListener()V

    :cond_0
    return-void
.end method
