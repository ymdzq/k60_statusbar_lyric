.class public Lcom/android/systemui/settings/brightness/BrightnessDialog;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBackgroundHandler:Landroid/os/Handler;

.field public mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBackgroundHandler:Landroid/os/Handler;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p1

    .line 8
    const/16 v0, 0x31

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 11
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 19
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    const/4 v0, -0x1

    .line 25
    const/4 v1, -0x2

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 27
    const p1, 0x7f0d0053    # @layout/brightness_mirror_container 'res/layout/brightness_mirror_container.xml'

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    const p1, 0x7f0a015d    # @id/brightness_mirror_container

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/FrameLayout;

    .line 43
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v3

    .line 58
    const v4, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v3

    .line 65
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 66
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 68
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    .line 73
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 75
    new-instance v4, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda0;

    .line 78
    invoke-direct {v4, v3, v2}, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/Rect;)V

    .line 80
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 83
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mToggleSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 86
    invoke-virtual {v2, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 88
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/android/systemui/util/ViewController;->init()V

    .line 92
    iget-object v2, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 95
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 97
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 100
    iget-object v6, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 102
    iget-object v7, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 104
    iget-object v8, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 106
    iget-object v9, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBackgroundHandler:Landroid/os/Handler;

    .line 108
    move-object v3, p1

    .line 110
    move-object v4, p0

    .line 111
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessSliderController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 112
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 115
    return-void
    .line 117
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x19

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    const/16 v0, 0x18

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    const/16 v0, 0xa4

    .line 10
    if-ne p1, v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    const/high16 v0, 0x10a0000    # @android:anim/fade_in

    .line 5
    const v1, 0x10a0001    # @android:anim/fade_out

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    return-void
    .line 13
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    const/16 v0, 0xdc

    .line 14
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 16
    return-void
    .line 19
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    const/16 v0, 0xdc

    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 20
    return-void
    .line 22
.end method
