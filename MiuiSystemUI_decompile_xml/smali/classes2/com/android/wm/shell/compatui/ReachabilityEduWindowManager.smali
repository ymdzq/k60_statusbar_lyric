.class public final Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field public mHasLetterboxSizeChanged:Z

.field public mHasUserDoubleTapped:Z

.field public mIsActivityLetterboxed:Z

.field mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

.field public mLetterboxHorizontalPosition:I

.field public mLetterboxVerticalPosition:I

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNextHideTime:J

.field public mTopActivityLetterboxHeight:I

.field public mTopActivityLetterboxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 2
    const-wide/16 p3, -0x1

    .line 5
    iput-wide p3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    .line 7
    iget-boolean p1, p2, Landroid/app/TaskInfo;->isLetterboxDoubleTapEnabled:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    .line 11
    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 13
    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 15
    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 17
    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 19
    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxWidth:I

    .line 21
    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    .line 23
    iget p1, p2, Landroid/app/TaskInfo;->topActivityLetterboxHeight:I

    .line 25
    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    .line 27
    iput-object p6, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 29
    iput-object p7, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateVisibilityOfViews()V

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 14
    return-object p0
    .line 16
.end method

.method public final eligibleToShowLayout()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 6
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    iget p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 11
    if-eq p0, v1, :cond_1

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
    .line 18
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 6
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 8
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v2

    .line 19
    const/high16 v3, 0x40000000    # 2.0f

    .line 20
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    move-result v2

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 26
    move-result v1

    .line 29
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result v1

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    move-result v0

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 45
    move-result-object p0

    .line 48
    return-object p0
    .line 49
.end method

.method public final getWindowManagerLayoutParamsFlags()I
    .locals 0

    .line 1
    const/16 p0, 0x18

    .line 2
    return p0
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

.method public inflateLayout()Lcom/android/wm/shell/compatui/ReachabilityEduLayout;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0d0317    # @layout/reachability_ui_layout 'res/layout/reachability_ui_layout.xml'

    .line 8
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 16
    return-object p0
    .line 18
.end method

.method public final onParentBoundsChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 16
    if-nez v1, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateSurfacePosition()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public final postDelayed(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final removeLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 3
    return-void
    .line 5
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    .line 2
    iget v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 4
    iget v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 6
    iget v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    .line 8
    iget v4, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    .line 10
    iget-boolean v5, p1, Landroid/app/TaskInfo;->isLetterboxDoubleTapEnabled:Z

    .line 12
    iput-boolean v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    .line 14
    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 16
    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 18
    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 20
    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 22
    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxWidth:I

    .line 24
    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    .line 26
    iget v5, p1, Landroid/app/TaskInfo;->topActivityLetterboxHeight:I

    .line 28
    iput v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    .line 30
    iget-boolean v5, p1, Landroid/app/TaskInfo;->isFromLetterboxDoubleTap:Z

    .line 32
    iput-boolean v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 36
    move-result p1

    .line 39
    const/4 p2, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 41
    return p2

    .line 43
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    .line 44
    const/4 p3, 0x1

    .line 46
    if-ne v3, p1, :cond_1

    .line 47
    iget v5, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    .line 49
    if-eq v4, v5, :cond_2

    .line 51
    :cond_1
    move p2, p3

    .line 53
    :cond_2
    iput-boolean p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasLetterboxSizeChanged:Z

    .line 54
    iget-boolean p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    .line 56
    if-nez p2, :cond_3

    .line 58
    iget-boolean p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    .line 60
    if-ne v0, p2, :cond_3

    .line 62
    iget p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 64
    if-ne v1, p2, :cond_3

    .line 66
    iget p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 68
    if-ne v2, p2, :cond_3

    .line 70
    if-ne v3, p1, :cond_3

    .line 72
    iget p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    .line 74
    if-eq v4, p1, :cond_4

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateVisibilityOfViews()V

    .line 78
    :cond_4
    return p3
    .line 81
.end method

.method public updateSurfacePosition()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mLeash:Landroid/view/SurfaceControl;

    .line 7
    if-nez v0, :cond_1

    .line 9
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 12
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0;

    .line 14
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2, v2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;II)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 20
    :goto_0
    return-void
    .line 23
.end method

.method public final updateVisibilityOfViews()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 9
    iget-object v1, v1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    iget v2, v0, Landroid/app/TaskInfo;->userId:I

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    const-string v4, "has_seen_horizontal_reachability_education@"

    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    move-result v1

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iget v1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 42
    if-eqz v1, :cond_2

    .line 44
    if-ne v1, v2, :cond_1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    move v1, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    move v1, v5

    .line 51
    :goto_1
    iget-object v6, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 52
    iget-object v6, v6, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    iget v7, v0, Landroid/app/TaskInfo;->userId:I

    .line 56
    new-instance v8, Ljava/lang/StringBuilder;

    .line 58
    const-string v9, "has_seen_vertical_reachability_education@"

    .line 60
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v7

    .line 71
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    move-result v6

    .line 75
    if-eqz v6, :cond_4

    .line 76
    iget-boolean v6, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    .line 78
    if-eqz v6, :cond_3

    .line 80
    iget v6, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 82
    if-eqz v6, :cond_4

    .line 84
    if-ne v6, v2, :cond_3

    .line 86
    goto :goto_2

    .line 88
    :cond_3
    move v6, v3

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    :goto_2
    move v6, v5

    .line 91
    :goto_3
    iget-boolean v7, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mIsActivityLetterboxed:Z

    .line 92
    if-eqz v7, :cond_15

    .line 94
    if-nez v1, :cond_5

    .line 96
    if-eqz v6, :cond_15

    .line 98
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 100
    move-result-object v7

    .line 103
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 104
    move-result v7

    .line 107
    iget v8, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxWidth:I

    .line 108
    sub-int/2addr v7, v8

    .line 110
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 111
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 115
    move-result v8

    .line 118
    iget v10, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mTopActivityLetterboxHeight:I

    .line 119
    sub-int/2addr v8, v10

    .line 121
    iget-object v10, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 122
    iget v11, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxVerticalPosition:I

    .line 124
    iget v12, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLetterboxHorizontalPosition:I

    .line 126
    iget-object v13, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 128
    invoke-virtual {v10}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideAllImmediately()V

    .line 130
    const/4 v14, -0x1

    .line 133
    if-eqz v1, :cond_c

    .line 134
    if-eq v12, v14, :cond_c

    .line 136
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 138
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 140
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 143
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 145
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastTopMargin:I

    .line 148
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastBottomMargin:I

    .line 150
    div-int/lit8 v1, v7, 0x2

    .line 152
    mul-int/2addr v12, v1

    .line 154
    sub-int/2addr v7, v12

    .line 155
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 156
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 158
    move-result v6

    .line 161
    if-lt v12, v6, :cond_8

    .line 162
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 166
    move-result v6

    .line 169
    sub-int v6, v1, v6

    .line 170
    div-int/2addr v6, v2

    .line 172
    iget v8, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastLeftMargin:I

    .line 173
    if-ne v8, v14, :cond_6

    .line 175
    iput v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastLeftMargin:I

    .line 177
    :cond_6
    iget v8, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastLeftMargin:I

    .line 179
    if-eq v8, v6, :cond_7

    .line 181
    iget-object v9, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 183
    new-instance v11, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;

    .line 185
    invoke-direct {v11, v2}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;-><init>(I)V

    .line 187
    new-instance v12, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;

    .line 190
    invoke-direct {v12, v2}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;-><init>(I)V

    .line 192
    invoke-static {v9, v11, v12, v8, v6}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->marginAnimator(Landroid/view/View;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;II)Landroid/animation/Animator;

    .line 195
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 199
    goto :goto_4

    .line 202
    :cond_7
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 203
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    move-result-object v6

    .line 208
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    iget v8, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastLeftMargin:I

    .line 211
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 213
    iget-object v8, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 215
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :goto_4
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 220
    invoke-static {v6}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->showItem(Landroid/view/View;)V

    .line 222
    goto :goto_5

    .line 225
    :cond_8
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 226
    invoke-static {v6}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 228
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastLeftMargin:I

    .line 231
    :goto_5
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 233
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 235
    move-result v6

    .line 238
    if-lt v7, v6, :cond_b

    .line 239
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 241
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 243
    move-result v6

    .line 246
    sub-int/2addr v1, v6

    .line 247
    div-int/2addr v1, v2

    .line 248
    iget v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastRightMargin:I

    .line 249
    if-ne v2, v14, :cond_9

    .line 251
    iput v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastRightMargin:I

    .line 253
    :cond_9
    iget v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastRightMargin:I

    .line 255
    if-eq v2, v1, :cond_a

    .line 257
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 259
    new-instance v7, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;

    .line 261
    const/4 v8, 0x3

    .line 263
    invoke-direct {v7, v8}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;-><init>(I)V

    .line 264
    new-instance v9, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;

    .line 267
    invoke-direct {v9, v8}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;-><init>(I)V

    .line 269
    invoke-static {v6, v7, v9, v2, v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->marginAnimator(Landroid/view/View;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;II)Landroid/animation/Animator;

    .line 272
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 276
    goto :goto_6

    .line 279
    :cond_a
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 280
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    move-result-object v1

    .line 285
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    iget v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastRightMargin:I

    .line 288
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 290
    iget-object v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 292
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    :goto_6
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 297
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->showItem(Landroid/view/View;)V

    .line 299
    goto :goto_7

    .line 302
    :cond_b
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 303
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 305
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastRightMargin:I

    .line 308
    :goto_7
    iget-object v1, v13, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    .line 310
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 312
    move-result-object v1

    .line 315
    iget v0, v0, Landroid/app/TaskInfo;->userId:I

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 329
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    move-result-object v0

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    goto/16 :goto_c

    .line 337
    :cond_c
    if-eqz v6, :cond_13

    .line 339
    if-eq v11, v14, :cond_13

    .line 341
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveLeftButton:Landroid/view/View;

    .line 343
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 345
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveRightButton:Landroid/view/View;

    .line 348
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 350
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastLeftMargin:I

    .line 353
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastRightMargin:I

    .line 355
    div-int/lit8 v1, v8, 0x2

    .line 357
    mul-int/2addr v11, v1

    .line 359
    sub-int/2addr v8, v11

    .line 360
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 361
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 363
    move-result v4

    .line 366
    if-lt v11, v4, :cond_f

    .line 367
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 371
    move-result v4

    .line 374
    sub-int v4, v1, v4

    .line 375
    div-int/2addr v4, v2

    .line 377
    iget v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastTopMargin:I

    .line 378
    if-ne v6, v14, :cond_d

    .line 380
    iput v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastTopMargin:I

    .line 382
    :cond_d
    iget v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastTopMargin:I

    .line 384
    if-eq v6, v4, :cond_e

    .line 386
    iget-object v7, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 388
    new-instance v11, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;

    .line 390
    invoke-direct {v11, v3}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;-><init>(I)V

    .line 392
    new-instance v12, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;

    .line 395
    invoke-direct {v12, v3}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;-><init>(I)V

    .line 397
    invoke-static {v7, v11, v12, v6, v4}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->marginAnimator(Landroid/view/View;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;II)Landroid/animation/Animator;

    .line 400
    move-result-object v4

    .line 403
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 404
    goto :goto_8

    .line 407
    :cond_e
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 408
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 410
    move-result-object v4

    .line 413
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    iget v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastTopMargin:I

    .line 416
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 418
    iget-object v6, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 420
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    :goto_8
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 425
    invoke-static {v4}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->showItem(Landroid/view/View;)V

    .line 427
    goto :goto_9

    .line 430
    :cond_f
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveUpButton:Landroid/view/View;

    .line 431
    invoke-static {v4}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 433
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastTopMargin:I

    .line 436
    :goto_9
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 438
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 440
    move-result v4

    .line 443
    if-lt v8, v4, :cond_12

    .line 444
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 446
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 448
    move-result v4

    .line 451
    sub-int/2addr v1, v4

    .line 452
    div-int/2addr v1, v2

    .line 453
    iget v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastBottomMargin:I

    .line 454
    if-ne v2, v14, :cond_10

    .line 456
    iput v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastBottomMargin:I

    .line 458
    :cond_10
    iget v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastBottomMargin:I

    .line 460
    if-eq v2, v1, :cond_11

    .line 462
    iget-object v4, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 464
    new-instance v6, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;

    .line 466
    invoke-direct {v6, v5}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;-><init>(I)V

    .line 468
    new-instance v7, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;

    .line 471
    invoke-direct {v7, v5}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;-><init>(I)V

    .line 473
    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->marginAnimator(Landroid/view/View;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;II)Landroid/animation/Animator;

    .line 476
    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 480
    goto :goto_a

    .line 483
    :cond_11
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 484
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 486
    move-result-object v1

    .line 489
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 490
    iget v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastBottomMargin:I

    .line 492
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 494
    iget-object v2, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 496
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    :goto_a
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 501
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->showItem(Landroid/view/View;)V

    .line 503
    goto :goto_b

    .line 506
    :cond_12
    iget-object v1, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mMoveDownButton:Landroid/view/View;

    .line 507
    invoke-static {v1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideItem(Landroid/view/View;)V

    .line 509
    iput v14, v10, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->mLastBottomMargin:I

    .line 512
    :goto_b
    iget-object v1, v13, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    .line 514
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 516
    move-result-object v1

    .line 519
    iget v0, v0, Landroid/app/TaskInfo;->userId:I

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    .line 522
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    move-result-object v0

    .line 533
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 534
    move-result-object v0

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 538
    :cond_13
    :goto_c
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasLetterboxSizeChanged:Z

    .line 541
    if-nez v0, :cond_14

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 545
    move-result-wide v0

    .line 548
    const-wide/16 v4, 0xfa0

    .line 549
    add-long/2addr v0, v4

    .line 551
    iput-wide v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    .line 552
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 554
    new-instance v1, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;

    .line 556
    invoke-direct {v1, p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V

    .line 558
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 561
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 563
    :cond_14
    iput-boolean v3, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mHasUserDoubleTapped:Z

    .line 566
    goto :goto_d

    .line 568
    :cond_15
    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    .line 569
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideAllImmediately()V

    .line 571
    :goto_d
    return-void
    .line 574
.end method
