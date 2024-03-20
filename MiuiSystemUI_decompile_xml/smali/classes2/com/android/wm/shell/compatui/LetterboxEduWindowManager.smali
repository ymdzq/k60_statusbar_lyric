.class public final Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field public final mDialogVerticalMargin:I

.field public final mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

.field public mEligibleForLetterboxEducation:Z

.field mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

.field public final mOnDismissCallback:Ljava/util/function/Consumer;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/DialogAnimationController;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 2
    iput-object p6, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 5
    iput-object p7, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    .line 7
    iput-object p8, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 9
    iget p1, p2, Landroid/app/TaskInfo;->userId:I

    .line 11
    iput p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p1

    .line 20
    const p3, 0x7f0705d2    # @dimen/letterbox_education_dialog_margin '16.0dp'

    .line 21
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    move-result p1

    .line 27
    float-to-int p1, p1

    .line 28
    iput p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    .line 29
    iput-object p9, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    .line 31
    iput-object p10, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 33
    iget-boolean p1, p2, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    .line 35
    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    .line 37
    return-void
    .line 39
.end method


# virtual methods
.method public final createLayout()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0d0164    # @layout/letterbox_education_dialog_layout 'res/layout/letterbox_education_dialog_layout.xml'

    .line 8
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateDialogMargins()V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 23
    new-instance v1, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;

    .line 25
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;I)V

    .line 28
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions;->isIdle()Z

    .line 31
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager$$ExternalSyntheticLambda0;->run()V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 46
    return-object p0
    .line 48
.end method

.method public final eligibleToShowLayout()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->isTaskbarEduShowing()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 13
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 17
    iget v2, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 26
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    .line 33
    sget-object v0, Lcom/android/wm/shell/common/DockStateReader;->DOCK_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/common/DockStateReader;->mContext:Landroid/content/Context;

    .line 37
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    move-result-object p0

    .line 43
    const/4 v0, 0x1

    .line 44
    if-eqz p0, :cond_1

    .line 45
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 47
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    move p0, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move p0, v1

    .line 57
    :goto_0
    if-nez p0, :cond_2

    .line 58
    move v1, v0

    .line 60
    :cond_2
    return v1
    .line 61
.end method

.method public final getLayout()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final getZOrder()I
    .locals 0

    .line 1
    const/16 p0, 0x2712

    .line 2
    return p0
    .line 4
.end method

.method public isTaskbarEduShowing()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "launcher_taskbar_education_showing"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    move v1, v0

    .line 18
    :cond_0
    return v1
    .line 19
.end method

.method public final needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    .line 2
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 9
    iget p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mUserId:I

    .line 11
    iget-object p1, p1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 p2, 0x1

    .line 25
    :cond_0
    return p2
    .line 26
.end method

.method public final onParentBoundsChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateDialogMargins()V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 19
    if-nez p0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

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

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    .line 4
    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    .line 7
    return-void
    .line 10
.end method

.method public final removeLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 3
    return-void
    .line 5
.end method

.method public final updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final updateDialogMargins()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/compatui/LetterboxEduDialogLayout;->mDialogContainer:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object v2

    .line 18
    new-instance v3, Landroid/graphics/Rect;

    .line 19
    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mStableBounds:Landroid/graphics/Rect;

    .line 21
    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 30
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 33
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 35
    sub-int/2addr v4, v5

    .line 37
    iget p0, p0, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    .line 38
    add-int/2addr v4, p0

    .line 40
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 43
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 45
    sub-int/2addr v2, v3

    .line 47
    add-int/2addr v2, p0

    .line 48
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
    .line 54
.end method

.method public final updateSurfacePosition()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
