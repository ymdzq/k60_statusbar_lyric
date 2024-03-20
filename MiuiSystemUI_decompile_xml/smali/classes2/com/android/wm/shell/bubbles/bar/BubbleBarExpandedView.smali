.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;


# instance fields
.field public mBackgroundColor:I

.field public mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

.field public mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public mCornerRadius:F

.field public mIsAnimating:Z

.field public mIsContentVisible:Z

.field public mMenuHeight:I

.field public mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

.field public mTaskView:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    return-void
.end method


# virtual methods
.method public getTaskId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, -0x1

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final initialize(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 4
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {v0, v1, p1, p0, p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;Landroid/view/View;)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    .line 11
    iget-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setEnableSurfaceClipping(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 26
    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 30
    return-void
    .line 33
.end method

.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 12
    const v2, 0x7f070138    # @dimen/bubble_elevation '1.0dp'

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v1

    .line 27
    const v2, 0x7f070176    # @dimen/bubblebar_expanded_view_menu_size '16.0dp'

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v1

    .line 34
    iput v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuHeight:I

    .line 35
    new-instance v1, Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 37
    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/bar/HandleView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    .line 53
    move-result v0

    .line 56
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 57
    const v3, 0x1010571    # @android:attr/dialogCornerRadius

    .line 59
    const v4, 0x10104e2    # @android:attr/colorBackgroundFloating

    .line 62
    filled-new-array {v3, v4}, [I

    .line 65
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 69
    move-result-object v1

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 76
    move-result v0

    .line 79
    int-to-float v0, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 83
    div-float/2addr v0, v3

    .line 85
    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    .line 86
    const/4 v0, -0x1

    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 90
    move-result v0

    .line 93
    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBackgroundColor:I

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 99
    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/bar/HandleView;->setCornerRadius(F)V

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result v0

    .line 113
    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuHeight:I

    .line 114
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 116
    if-eqz v0, :cond_1

    .line 118
    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 125
    const/high16 v1, 0x43160000    # 150.0f

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setElevation(F)V

    .line 129
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->updateMenuColor()V

    .line 132
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 135
    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    .line 138
    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    .line 140
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 143
    return-void
    .line 146
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 4
    move-result p1

    .line 7
    add-int/2addr p1, p3

    .line 8
    iget-object p5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 9
    invoke-virtual {p5, p2, p3, p4, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 11
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 14
    if-eqz p3, :cond_0

    .line 16
    int-to-float p5, p1

    .line 18
    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    .line 19
    sub-float/2addr p5, p0

    .line 21
    float-to-int p0, p5

    .line 22
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    .line 23
    move-result p5

    .line 26
    add-int/2addr p5, p1

    .line 27
    invoke-virtual {p3, p2, p0, p4, p5}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    move-result v0

    .line 8
    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuHeight:I

    .line 9
    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mCornerRadius:F

    .line 12
    add-float/2addr v1, v2

    .line 14
    float-to-int v1, v1

    .line 15
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    move-result v3

    .line 25
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result v3

    .line 29
    invoke-virtual {p0, v2, p1, v3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 33
    if-eqz v2, :cond_0

    .line 35
    sub-int/2addr v0, v1

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 38
    move-result p2

    .line 41
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    move-result p2

    .line 45
    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 46
    :cond_0
    return-void
    .line 49
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setContentVisibility(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsContentVisible:Z

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    .line 9
    if-nez p0, :cond_2

    .line 11
    if-eqz p1, :cond_1

    .line 13
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 19
    :cond_2
    return-void
    .line 22
.end method

.method public setSurfaceZOrderedOnTop(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 8
    return-void
    .line 11
.end method

.method public setTaskViewAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 9
    return-void
    .line 12
.end method

.method public final updateMenuColor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskView;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    .line 13
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    move v0, v1

    .line 20
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    .line 25
    move-result v0

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuView:Lcom/android/wm/shell/bubbles/bar/HandleView;

    .line 37
    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBackgroundColor:I

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 41
    :goto_0
    return-void
    .line 44
.end method
