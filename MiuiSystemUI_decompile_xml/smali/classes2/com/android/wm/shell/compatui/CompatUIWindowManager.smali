.class public final Lcom/android/wm/shell/compatui/CompatUIWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sGetMiuiSizeCompatAppRatioMethod:Ljava/lang/reflect/Method;


# instance fields
.field public final mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

.field mCameraCompatControlState:I

.field mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

.field public final mHasMiuiSizeCompat:Z

.field mHasSizeCompat:Z

.field mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

.field public final mMiuiButtonSize:I

.field public final mOnRestartButtonClicked:Ljava/util/function/Consumer;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "android.sizecompat.MiuiSizeCompatManager"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "getMiuiSizeCompatAppRatio"

    .line 8
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Class;

    .line 11
    const-class v3, Ljava/lang/String;

    .line 13
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->sGetMiuiSizeCompatAppRatioMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_0
    return-void
    .line 29
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 8
    const/4 p3, 0x0

    .line 11
    iput p3, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 12
    iput-object p4, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 14
    iget-boolean p3, p2, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    .line 16
    iput-boolean p3, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasMiuiSizeCompat:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 23
    const p3, 0x7f070993    # @dimen/miui_size_compat_button_size '36.0dp'

    .line 24
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result p1

    .line 30
    iput p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mMiuiButtonSize:I

    .line 31
    iget-object p1, p2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mPackageName:Ljava/lang/String;

    .line 43
    iget-boolean p1, p2, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 45
    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 47
    iget p1, p2, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 49
    iput p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 51
    iput-object p7, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 53
    iput-object p8, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mOnRestartButtonClicked:Ljava/util/function/Consumer;

    .line 55
    return-void
    .line 57
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 6
    iput-object p0, v0, Lcom/android/wm/shell/compatui/CompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateVisibilityOfViews()V

    .line 10
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 17
    iget v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    .line 19
    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 21
    iget-object v2, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/window/TaskAppearedInfo;

    .line 32
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v0

    .line 41
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    if-nez v0, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 49
    const/16 v1, 0x183

    .line 51
    const/4 v2, 0x1

    .line 53
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 54
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 61
    return-object p0
    .line 63
.end method

.method public final eligibleToShowLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasMiuiSizeCompat:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getZOrder()I
    .locals 0

    .line 1
    const/16 p0, 0x2711

    .line 2
    return p0
    .line 4
.end method

.method public inflateLayout()Lcom/android/wm/shell/compatui/CompatUILayout;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0d006e    # @layout/compat_ui_layout 'res/layout/compat_ui_layout.xml'

    .line 8
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 16
    return-object p0
    .line 18
.end method

.method public final postDelayed(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasMiuiSizeCompat:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;-><init>(Lcom/android/wm/shell/compatui/CompatUIWindowManager;Landroid/view/View;)V

    .line 8
    const-wide/16 v1, 0x2710

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final removeLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 3
    return-void
    .line 5
.end method

.method public final shouldShowCameraControl()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x3

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 2
    iget v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 4
    iget-boolean v2, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 6
    iput-boolean v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 8
    iget v2, p1, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 10
    iput v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 12
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 22
    if-ne v0, p1, :cond_1

    .line 24
    iget p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 26
    if-eq v1, p1, :cond_2

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateVisibilityOfViews()V

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 33
    return p0
    .line 34
.end method

.method public updateSurfacePosition()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mStableBounds:Landroid/graphics/Rect;

    .line 13
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 22
    iget-boolean v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasMiuiSizeCompat:Z

    .line 25
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_5

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mPackageName:Ljava/lang/String;

    .line 30
    const/4 v4, 0x0

    .line 32
    if-eqz v2, :cond_1

    .line 33
    sget-object v5, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->sGetMiuiSizeCompatAppRatioMethod:Ljava/lang/reflect/Method;

    .line 35
    if-eqz v5, :cond_1

    .line 37
    :try_start_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    instance-of v5, v2, Ljava/lang/Float;

    .line 48
    if-eqz v5, :cond_1

    .line 50
    check-cast v2, Ljava/lang/Float;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :cond_1
    move v2, v4

    .line 63
    :goto_0
    cmpl-float v4, v2, v4

    .line 64
    const v5, 0x7f070994    # @dimen/miui_size_compat_button_top_margin '40.0dp'

    .line 66
    if-lez v4, :cond_3

    .line 69
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 71
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 73
    sub-int/2addr v1, v4

    .line 75
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 78
    sub-int/2addr v4, v6

    .line 80
    int-to-float v4, v4

    .line 81
    div-float/2addr v4, v2

    .line 82
    float-to-int v2, v4

    .line 83
    sub-int/2addr v1, v2

    .line 84
    div-int/lit8 v1, v1, 0x2

    .line 85
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 93
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 97
    move-result v2

    .line 100
    if-ne v2, v3, :cond_2

    .line 101
    iget v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mMiuiButtonSize:I

    .line 103
    sub-int/2addr v1, v2

    .line 105
    div-int/lit8 v1, v1, 0x2

    .line 106
    goto :goto_1

    .line 108
    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 109
    iget v3, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mMiuiButtonSize:I

    .line 111
    add-int/2addr v1, v3

    .line 113
    div-int/lit8 v1, v1, 0x2

    .line 114
    sub-int v1, v2, v1

    .line 116
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 118
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object v2

    .line 125
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    move-result v2

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 137
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 141
    move-result v2

    .line 144
    if-ne v2, v3, :cond_4

    .line 145
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 147
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 149
    goto :goto_2

    .line 151
    :cond_4
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 152
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 154
    sub-int/2addr v1, v2

    .line 156
    iget v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mMiuiButtonSize:I

    .line 157
    :goto_2
    sub-int/2addr v1, v2

    .line 159
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v2

    .line 167
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 168
    move-result v2

    .line 171
    :goto_3
    add-int/2addr v2, v0

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 180
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 184
    move-result v2

    .line 187
    if-ne v2, v3, :cond_6

    .line 188
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 190
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 192
    goto :goto_4

    .line 194
    :cond_6
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 195
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 197
    sub-int/2addr v2, v3

    .line 199
    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 200
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 202
    move-result v3

    .line 205
    :goto_4
    sub-int/2addr v2, v3

    .line 206
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 207
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 209
    sub-int/2addr v1, v0

    .line 211
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 212
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 214
    move-result v0

    .line 217
    sub-int v0, v1, v0

    .line 218
    move v1, v2

    .line 220
    move v2, v0

    .line 221
    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mLeash:Landroid/view/SurfaceControl;

    .line 222
    if-nez v0, :cond_7

    .line 224
    goto :goto_6

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 227
    new-instance v3, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0;

    .line 229
    invoke-direct {v3, p0, v1, v2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;II)V

    .line 231
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 234
    :goto_6
    return-void
    .line 237
.end method

.method public final updateVisibilityOfViews()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasMiuiSizeCompat:Z

    .line 7
    const v2, 0x7f0a05d3    # @id/miui_size_compat_hint

    .line 9
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    const v4, 0x7f0a05d4    # @id/miui_size_compat_restart_button

    .line 15
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 22
    const v4, 0x7f0a05c7    # @id/miui_compat_restart_button

    .line 24
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 27
    if-nez v1, :cond_2

    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 32
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasMiuiSizeCompat:Z

    .line 35
    const/4 v1, 0x1

    .line 37
    if-nez v0, :cond_3

    .line 38
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mHasSizeCompat:Z

    .line 40
    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 44
    iget-boolean v0, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;->mHasShownSizeCompatHint:Z

    .line 46
    if-nez v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 55
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    .line 57
    move-result v2

    .line 60
    const v4, 0x7f0a01b9    # @id/camera_compat_control

    .line 61
    invoke-virtual {v0, v4, v2}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 64
    const v4, 0x7f0a01bb    # @id/camera_compat_hint

    .line 67
    if-nez v2, :cond_4

    .line 70
    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 81
    iget-boolean v0, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;->mHasShownCameraCompatHint:Z

    .line 83
    if-nez v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 87
    invoke-virtual {v0, v4, v1}, Lcom/android/wm/shell/compatui/CompatUILayout;->setViewVisibility(IZ)V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;

    .line 92
    iput-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$CompatUIHintsState;->mHasShownCameraCompatHint:Z

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->shouldShowCameraControl()Z

    .line 96
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mLayout:Lcom/android/wm/shell/compatui/CompatUILayout;

    .line 102
    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->mCameraCompatControlState:I

    .line 104
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/CompatUILayout;->updateCameraTreatmentButton(I)V

    .line 106
    :cond_6
    return-void
    .line 109
.end method
