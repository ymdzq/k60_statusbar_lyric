.class public final Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final mCreateTime:J

.field public mDrawsSystemBarBackgrounds:Z

.field public final mRootView:Landroid/view/View;

.field public mSetSplashScreen:Z

.field public mSplashView:Landroid/window/SplashScreenView;

.field public final mSuggestType:I

.field public mSystemBarAppearance:I

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/os/IBinder;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mAppToken:Landroid/os/IBinder;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    .line 9
    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSuggestType:I

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mCreateTime:J

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    .line 3
    if-nez v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    .line 8
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 11
    if-nez v2, :cond_1

    .line 13
    const-string p0, "ShellStartingWindow"

    .line 15
    const-string p1, "Found empty splash screen, remove!"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v4, v1, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->-$$Nest$mremoveWindowInner(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    .line 22
    return v0

    .line 25
    :cond_1
    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 28
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v2

    .line 38
    instance-of v2, v2, Landroid/view/WindowManager$LayoutParams;

    .line 39
    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 47
    iget-boolean v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mDrawsSystemBarBackgrounds:Z

    .line 49
    if-eqz v5, :cond_3

    .line 51
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 53
    const/high16 v6, -0x80000000

    .line 55
    or-int/2addr v5, v6

    .line 57
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    const v6, 0x7fffffff

    .line 63
    and-int/2addr v5, v6

    .line 66
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 72
    move-result-object v2

    .line 75
    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSystemBarAppearance:I

    .line 76
    const/16 v6, 0x18

    .line 78
    invoke-interface {v2, v5, v6}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 80
    :cond_5
    :goto_1
    if-nez p2, :cond_8

    .line 83
    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSuggestType:I

    .line 85
    const/4 v2, 0x4

    .line 87
    if-eq p2, v2, :cond_8

    .line 88
    iget-object v5, v4, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 90
    iget p2, v5, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContentSuggestType:I

    .line 92
    const/4 v2, 0x6

    .line 94
    if-ne p2, v2, :cond_6

    .line 95
    goto :goto_2

    .line 97
    :cond_6
    iget-boolean p2, p1, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 98
    if-eqz p2, :cond_7

    .line 100
    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    .line 102
    iget-object v7, p1, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    .line 104
    iget-object v8, p1, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    .line 106
    new-instance v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;

    .line 108
    invoke-direct {v9, v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 110
    iget-wide v10, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mCreateTime:J

    .line 113
    iget v12, p1, Landroid/window/StartingWindowRemovalInfo;->roundedCornerRadius:F

    .line 115
    invoke-virtual/range {v5 .. v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;JF)V

    .line 117
    goto :goto_3

    .line 120
    :cond_7
    invoke-static {v4, v1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->-$$Nest$mremoveWindowInner(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    .line 121
    goto :goto_3

    .line 124
    :cond_8
    :goto_2
    invoke-static {v4, v1, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->-$$Nest$mremoveWindowInner(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/view/View;Z)V

    .line 125
    :goto_3
    return v0
    .line 128
.end method
