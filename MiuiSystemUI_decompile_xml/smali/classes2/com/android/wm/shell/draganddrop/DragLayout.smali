.class public Lcom/android/wm/shell/draganddrop/DragLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

.field public final mDisplayMargin:I

.field public final mDividerSize:I

.field public final mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

.field public final mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

.field public mHasDropped:Z

.field public final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public mInsets:Landroid/graphics/Insets;

.field public mIsShowing:Z

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field public final mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 10
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 13
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 15
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 17
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 19
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 21
    new-instance p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 23
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 25
    move-result-object v1

    .line 28
    new-instance v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    .line 29
    invoke-direct {v2, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p3, p1, v1, p2, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;)V

    .line 34
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 37
    const-class p2, Landroid/app/StatusBarManager;

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 44
    check-cast p2, Landroid/app/StatusBarManager;

    .line 45
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    move-result-object p2

    .line 56
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object p2

    .line 63
    const p3, 0x7f07032e    # @dimen/drop_layout_display_margin '16.0dp'

    .line 64
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result p2

    .line 70
    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object p2

    .line 76
    const p3, 0x7f0710be    # @dimen/split_divider_bar_width '10.0dp'

    .line 77
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result p2

    .line 83
    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDividerSize:I

    .line 84
    const/4 p2, 0x0

    .line 86
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 87
    new-instance p3, Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 90
    invoke-direct {p3, p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 95
    new-instance v0, Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 97
    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 102
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    const/4 v1, -0x1

    .line 106
    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    invoke-virtual {p0, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    move-result-object p1

    .line 124
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    const/high16 p3, 0x3f800000    # 1.0f

    .line 127
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 129
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 143
    move-result-object p1

    .line 146
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 147
    const/4 p3, 0x2

    .line 149
    if-ne p1, p3, :cond_0

    .line 150
    goto :goto_0

    .line 152
    :cond_0
    const/4 p2, 0x1

    .line 153
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 161
    move-result-object p1

    .line 164
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragLayout;->updateContainerMargins(I)V

    .line 167
    return-void
    .line 170
.end method

.method public static getResizingBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    move p0, v0

    .line 11
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method


# virtual methods
.method public final animateSplitContainers(ZLcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/high16 v1, 0x960000

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(Z)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(Z)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->getAnimator()Landroid/animation/Animator;

    .line 25
    move-result-object p0

    .line 28
    if-eqz p2, :cond_2

    .line 29
    if-eqz p0, :cond_1

    .line 31
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragLayout$2;

    .line 33
    invoke-direct {p1, p2}, Lcom/android/wm/shell/draganddrop/DragLayout$2;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;)V

    .line 35
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->run()V

    .line 42
    :cond_2
    :goto_1
    return-void
    .line 45
.end method

.method public final hide(Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsShowing:Z

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/DragLayout;->animateSplitContainers(ZLcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;)V

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setForceIgnoreBottomMargin(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    move-result-object p1

    .line 25
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/DragLayout;->updateContainerMargins(I)V

    .line 28
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 32
    return-void
    .line 34
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    .line 2
    move-result v0

    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 6
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayout;->recomputeDropTargets()V

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 28
    const/4 v1, 0x2

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 33
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 35
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 37
    int-to-float v1, v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setBottomInset(F)V

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 45
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 47
    int-to-float v1, v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setBottomInset(F)V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x1

    .line 54
    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 57
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setBottomInset(F)V

    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 63
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 65
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 67
    int-to-float v1, v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setBottomInset(F)V

    .line 70
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 73
    move-result-object p0

    .line 76
    return-object p0
    .line 77
.end method

.method public final recomputeDropTargets()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mIsShowing:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mInsets:Landroid/graphics/Insets;

    .line 9
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 16
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_1

    .line 19
    goto/16 :goto_6

    .line 21
    :cond_1
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 23
    iget v5, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 25
    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 27
    iget v6, v1, Landroid/graphics/Insets;->left:I

    .line 29
    sub-int/2addr v5, v6

    .line 31
    iget v7, v1, Landroid/graphics/Insets;->right:I

    .line 32
    sub-int/2addr v5, v7

    .line 34
    iget v7, v1, Landroid/graphics/Insets;->top:I

    .line 35
    sub-int/2addr v3, v7

    .line 37
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 38
    sub-int/2addr v3, v1

    .line 40
    new-instance v1, Landroid/graphics/Rect;

    .line 41
    add-int/2addr v5, v6

    .line 43
    add-int/2addr v3, v7

    .line 44
    invoke-direct {v1, v6, v7, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    new-instance v3, Landroid/graphics/Rect;

    .line 48
    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 50
    new-instance v5, Landroid/graphics/Rect;

    .line 53
    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 55
    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 58
    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 60
    iget v7, v6, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 62
    iget v6, v6, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 64
    const/4 v8, 0x1

    .line 66
    if-le v7, v6, :cond_2

    .line 67
    move v6, v8

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v6, v4

    .line 71
    :goto_0
    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 72
    if-eqz v7, :cond_3

    .line 74
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 76
    move-result v9

    .line 79
    if-eqz v9, :cond_3

    .line 80
    move v9, v8

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move v9, v4

    .line 84
    :goto_1
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v10

    .line 90
    const v11, 0x7f0710be    # @dimen/split_divider_bar_width '10.0dp'

    .line 91
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v10

    .line 97
    int-to-float v10, v10

    .line 98
    if-nez v9, :cond_5

    .line 99
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 101
    iget v11, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    .line 103
    if-ne v11, v8, :cond_4

    .line 105
    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    .line 107
    if-ne v0, v8, :cond_4

    .line 109
    goto :goto_2

    .line 111
    :cond_4
    move v0, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    move v0, v8

    .line 114
    :goto_3
    if-eqz v0, :cond_9

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    .line 117
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    .line 122
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-virtual {v7, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 130
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 133
    const/high16 v5, 0x40000000    # 2.0f

    .line 136
    if-eqz v6, :cond_7

    .line 138
    new-instance v6, Landroid/graphics/Rect;

    .line 140
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 142
    new-instance v7, Landroid/graphics/Rect;

    .line 145
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 147
    if-eqz v9, :cond_6

    .line 150
    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 152
    int-to-float v9, v9

    .line 154
    div-float/2addr v10, v5

    .line 155
    add-float/2addr v10, v9

    .line 156
    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    float-to-int v5, v10

    .line 160
    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 161
    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 166
    goto :goto_4

    .line 168
    :cond_6
    filled-new-array {v6, v7}, [Landroid/graphics/Rect;

    .line 169
    move-result-object v5

    .line 172
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    .line 173
    :goto_4
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 176
    invoke-direct {v1, v6, v0, v8}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 178
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 184
    const/4 v1, 0x3

    .line 186
    invoke-direct {v0, v7, v3, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 187
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    goto :goto_6

    .line 193
    :cond_7
    new-instance v6, Landroid/graphics/Rect;

    .line 194
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 196
    new-instance v7, Landroid/graphics/Rect;

    .line 199
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 201
    if-eqz v9, :cond_8

    .line 204
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 206
    int-to-float v8, v8

    .line 208
    div-float/2addr v10, v5

    .line 209
    add-float/2addr v10, v8

    .line 210
    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    float-to-int v5, v10

    .line 214
    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 215
    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 217
    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 220
    goto :goto_5

    .line 222
    :cond_8
    filled-new-array {v6, v7}, [Landroid/graphics/Rect;

    .line 223
    move-result-object v5

    .line 226
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    .line 227
    :goto_5
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 230
    const/4 v5, 0x2

    .line 232
    invoke-direct {v1, v6, v0, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 233
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 239
    const/4 v1, 0x4

    .line 241
    invoke-direct {v0, v7, v3, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 242
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    goto :goto_6

    .line 248
    :cond_9
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 249
    invoke-direct {v0, v5, v3, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 251
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_6
    move v0, v4

    .line 257
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 258
    move-result v1

    .line 261
    if-ge v0, v1, :cond_b

    .line 262
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object v1

    .line 267
    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 268
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 270
    if-eqz v3, :cond_a

    .line 272
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 277
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 278
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 280
    move-result-object v3

    .line 283
    const v6, -0x2a5d7de3

    .line 284
    const-string v7, "Add target: %s"

    .line 287
    invoke-static {v5, v6, v4, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_a
    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    .line 292
    iget v3, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    .line 294
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 299
    goto :goto_7

    .line 301
    :cond_b
    return-void
    .line 302
.end method

.method public final update(Landroid/view/DragEvent;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mHasDropped:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 9
    move-result v1

    .line 12
    float-to-int v1, v1

    .line 13
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 14
    move-result p1

    .line 17
    float-to-int p1, p1

    .line 18
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    .line 19
    int-to-float v3, v1

    .line 21
    int-to-float v4, p1

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 23
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v2

    .line 36
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 37
    if-ltz v2, :cond_3

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 45
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->hitRegion:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {v5, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 49
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    move-object v4, v3

    .line 56
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 57
    if-eq p1, v4, :cond_10

    .line 59
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 61
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_4

    .line 64
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 70
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 75
    const v2, 0x58520c75

    .line 76
    const-string v5, "Current target: %s"

    .line 79
    invoke-static {v1, v2, v0, v5, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_4
    if-nez v4, :cond_5

    .line 84
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/draganddrop/DragLayout;->animateSplitContainers(ZLcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;)V

    .line 86
    goto/16 :goto_3

    .line 89
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 91
    const/4 v1, 0x4

    .line 93
    const/4 v2, 0x3

    .line 94
    const/4 v5, 0x2

    .line 95
    const/4 v6, 0x1

    .line 96
    iget v7, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 97
    if-nez p1, :cond_a

    .line 99
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 101
    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result p1

    .line 108
    if-ne p1, v6, :cond_6

    .line 109
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 111
    const/high16 v0, 0x960000

    .line 113
    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 115
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 118
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingMargin(Z)V

    .line 120
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 123
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    .line 125
    goto/16 :goto_3

    .line 128
    :cond_6
    invoke-virtual {p0, v6, v3}, Lcom/android/wm/shell/draganddrop/DragLayout;->animateSplitContainers(ZLcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;)V

    .line 130
    if-eq v7, v6, :cond_9

    .line 133
    if-ne v7, v5, :cond_7

    .line 135
    goto :goto_2

    .line 137
    :cond_7
    if-eq v7, v2, :cond_8

    .line 138
    if-ne v7, v1, :cond_f

    .line 140
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 142
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    .line 144
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 147
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    .line 149
    goto :goto_3

    .line 152
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 153
    invoke-virtual {p1, v6}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    .line 155
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setShowingHighlight(Z)V

    .line 160
    goto :goto_3

    .line 163
    :cond_a
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 164
    if-eq p1, v7, :cond_f

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 168
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->animateSwitch()V

    .line 170
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 173
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->animateSwitch()V

    .line 175
    if-eq v7, v6, :cond_e

    .line 178
    if-eq v7, v5, :cond_d

    .line 180
    if-eq v7, v2, :cond_c

    .line 182
    if-eq v7, v1, :cond_b

    .line 184
    goto :goto_3

    .line 186
    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 187
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 189
    const v1, 0x7f1300f0    # @string/accessibility_split_bottom 'Split bottom'

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 198
    goto :goto_3

    .line 201
    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 202
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 204
    const v1, 0x7f1300f2    # @string/accessibility_split_right 'Split right'

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 213
    goto :goto_3

    .line 216
    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 217
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 219
    const v1, 0x7f1300f3    # @string/accessibility_split_top 'Split top'

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 228
    goto :goto_3

    .line 231
    :cond_e
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 232
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 234
    const v1, 0x7f1300f1    # @string/accessibility_split_left 'Split left'

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 243
    :cond_f
    :goto_3
    iput-object v4, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 246
    :cond_10
    return-void
    .line 248
.end method

.method public final updateContainerMargins(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    .line 2
    int-to-float v1, v0

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    div-float/2addr v1, v2

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne p1, v2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 11
    int-to-float v2, v0

    .line 13
    int-to-float v3, v0

    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setContainerMargin(FFFF)V

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 19
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    .line 21
    int-to-float v0, p0

    .line 23
    int-to-float v2, p0

    .line 24
    int-to-float p0, p0

    .line 25
    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setContainerMargin(FFFF)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 33
    int-to-float v2, v0

    .line 35
    int-to-float v3, v0

    .line 36
    int-to-float v0, v0

    .line 37
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setContainerMargin(FFFF)V

    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 41
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDisplayMargin:I

    .line 43
    int-to-float v0, p0

    .line 45
    int-to-float v2, p0

    .line 46
    int-to-float p0, p0

    .line 47
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/draganddrop/DropZoneView;->setContainerMargin(FFFF)V

    .line 48
    :cond_1
    :goto_0
    return-void
    .line 51
.end method

.method public final updateDropZoneSizes(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDividerSize:I

    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 21
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 29
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    const/4 v4, -0x1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 42
    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 46
    move-result v1

    .line 49
    add-int/2addr v1, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v4

    .line 52
    :goto_1
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 53
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 57
    move-result v1

    .line 60
    add-int v4, v1, v0

    .line 61
    :cond_2
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 63
    goto :goto_4

    .line 65
    :cond_3
    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v1

    .line 71
    add-int/2addr v1, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v1, v4

    .line 74
    :goto_2
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 75
    if-eqz p2, :cond_5

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 79
    move-result v1

    .line 82
    add-int/2addr v1, v0

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v1, v4

    .line 85
    :goto_3
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 86
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 88
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 90
    :goto_4
    const/4 v0, 0x0

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    if-eqz p1, :cond_6

    .line 95
    move p1, v0

    .line 97
    goto :goto_5

    .line 98
    :cond_6
    move p1, v1

    .line 99
    :goto_5
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 100
    if-eqz p2, :cond_7

    .line 102
    goto :goto_6

    .line 104
    :cond_7
    move v0, v1

    .line 105
    :goto_6
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 106
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 108
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 113
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
    .line 118
.end method
