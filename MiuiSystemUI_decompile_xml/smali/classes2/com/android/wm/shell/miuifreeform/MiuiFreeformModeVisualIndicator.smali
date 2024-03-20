.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final SOLID_COLOR:I = 0x4dc4c4c4

.field private static final STROKE_COLOR:I = -0x333b3b3c

.field private static final STROKE_WIDTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeVisualIndicator"


# instance fields
.field private mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

.field private final mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

.field private final mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mTaskSurface:Landroid/view/SurfaceControl;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mContext:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 13
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->createFullscreenIndicator()V

    .line 15
    return-void
    .line 18
.end method

.method private createFullscreenIndicator()V
    .locals 8

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    new-instance v1, Landroid/widget/ImageView;

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mContext:Landroid/content/Context;

    .line 9
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mImageView:Landroid/widget/ImageView;

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mContext:Landroid/content/Context;

    .line 16
    const/high16 v3, 0x40a00000    # 5.0f

    .line 18
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 20
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {v3}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    .line 27
    move-result v3

    .line 30
    const v4, 0x4dc4c4c4

    .line 31
    const v5, -0x333b3b3c

    .line 34
    invoke-static {v4, v5, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->getDrawable(IIIF)Landroid/graphics/drawable/GradientDrawable;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 44
    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 51
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 53
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 55
    const-string v2, "MiuiFreeform Fullscreen Indicator"

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 60
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 68
    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 74
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 77
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 79
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 81
    move-result v3

    .line 84
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 85
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 87
    move-result v4

    .line 90
    const/4 v5, 0x2

    .line 91
    const/16 v6, 0x8

    .line 92
    const/4 v7, -0x2

    .line 94
    move-object v2, v1

    .line 95
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "MiuiFreeform Fullscreen indicator for Task="

    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 106
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 120
    new-instance v2, Landroid/view/WindowlessWindowManager;

    .line 123
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 127
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 129
    const/4 v5, 0x0

    .line 131
    invoke-direct {v2, v3, v4, v5}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 132
    new-instance v3, Landroid/view/SurfaceControlViewHost;

    .line 135
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mContext:Landroid/content/Context;

    .line 137
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 139
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayController()Lcom/android/wm/shell/common/DisplayController;

    .line 141
    move-result-object v5

    .line 144
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 145
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 147
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 149
    move-result-object v5

    .line 152
    const-string v6, "MiuiFreeformFullscreenVisualIndicator"

    .line 153
    invoke-direct {v3, v4, v5, v2, v6}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 155
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 158
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mImageView:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v3, v2, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 165
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 167
    const/4 v3, -0x1

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 170
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 173
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 176
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mImageView:Landroid/widget/ImageView;

    .line 178
    const/4 v2, 0x0

    .line 180
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/widget/ImageView;I)V

    .line 181
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 184
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->-$$Nest$smsetupFullscreenIndicatorAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;)V

    .line 186
    return-void
    .line 189
.end method

.method public static getDrawable(IIIF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 10
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 13
    return-object v0
    .line 16
.end method


# virtual methods
.method public expandToFullScreen(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " expandToFullScreen: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiFreeformModeVisualIndicator"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v0, "FF_UI/FREEFORM_ACTION_ENTER_FULL_SCREEN"

    .line 21
    invoke-static {v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 30
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 34
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 36
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 44
    const/4 v2, 0x0

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->setAnimationValue(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 67
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->mIsExpandToFullScreen:Z

    .line 70
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    return-void
    .line 75
.end method

.method public releaseFullscreenIndicator()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 10
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 19
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 29
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 31
    :cond_2
    return-void
    .line 34
.end method

.method public shrinkToFreeform(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " shrinkToFreeform: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiFreeformModeVisualIndicator"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v0, "FF_UI/FREEFORM_ACTION_SHOW"

    .line 21
    invoke-static {v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 30
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mMiuiFreeformModeDisplayInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 34
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 36
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v1, v0, p1, v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->setAnimationValue(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 67
    iput-boolean v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->mIsExpandToFullScreen:Z

    .line 69
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    return-void
    .line 74
.end method

.method public startReleaseFullscreenIndicatorAnimation()V
    .locals 3

    .line 1
    const-string v0, "MiuiFreeformModeVisualIndicator"

    .line 2
    const-string v1, " startReleaseFullscreenIndicatorAnimation"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->setAlphaAnimationValue(FF)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 17
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;)V

    .line 21
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->-$$Nest$smsetupAlphaIndicatorAnimation(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 42
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 44
    return-void
    .line 47
.end method

.method public updateEndBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator;->mAnimator:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVisualIndicator$VisualIndicatorAnimator;->updateEndBounds(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method
