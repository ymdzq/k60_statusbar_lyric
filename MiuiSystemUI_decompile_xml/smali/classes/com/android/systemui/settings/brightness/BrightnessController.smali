.class public final Lcom/android/systemui/settings/brightness/BrightnessController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
.implements Lcom/android/systemui/settings/brightness/MirroredBrightnessController;


# static fields
.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;


# instance fields
.field public volatile mAutomatic:Z

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBrightnessDialog:Landroid/app/Activity;

.field public final mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

.field public mBrightnessMax:F

.field public mBrightnessMin:F

.field public final mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

.field public final mContext:Landroid/content/Context;

.field public final mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field public mControlValueInitialized:Z

.field public final mDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

.field public final mDisplayId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mExternalChange:Z

.field public final mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

.field public volatile mIsVrModeEnabled:Z

.field public mListening:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mSliderAnimator:Landroid/animation/ValueAnimator;

.field public final mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

.field public final mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

.field public final mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

.field public final mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;


# direct methods
.method public static -$$Nest$mupdateSlider(Lcom/android/systemui/settings/brightness/BrightnessController;F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    .line 2
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 4
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 10
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 21
    invoke-interface {v2}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->getValue()I

    .line 23
    move-result v3

    .line 26
    invoke-static {v0, v1, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(FFI)F

    .line 27
    move-result v3

    .line 30
    invoke-static {p1, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 31
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    goto/16 :goto_1

    .line 37
    :cond_1
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->norm(FFF)F

    .line 39
    move-result p1

    .line 42
    const/high16 v0, 0x41400000    # 12.0f

    .line 43
    mul-float/2addr p1, v0

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    cmpg-float v0, p1, v0

    .line 48
    if-gtz v0, :cond_2

    .line 50
    invoke-static {p1}, Landroid/util/MathUtils;->sqrt(F)F

    .line 52
    move-result p1

    .line 55
    const/high16 v0, 0x3f000000    # 0.5f

    .line 56
    mul-float/2addr p1, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const v0, 0x3e91c020

    .line 60
    sub-float/2addr p1, v0

    .line 63
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    .line 64
    move-result p1

    .line 67
    const v0, 0x3e371ff0

    .line 68
    mul-float/2addr p1, v0

    .line 71
    const v0, 0x3f0f564f

    .line 72
    add-float/2addr p1, v0

    .line 75
    :goto_0
    const/4 v0, 0x0

    .line 76
    const v1, 0xffff

    .line 77
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 80
    move-result p1

    .line 83
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 84
    move-result p1

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 88
    if-eqz v0, :cond_3

    .line 90
    invoke-interface {v2}, Lcom/android/systemui/settings/brightness/ToggleSlider;->isVisible()Z

    .line 92
    move-result v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    :cond_3
    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setValue(I)V

    .line 98
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 102
    :cond_4
    invoke-interface {v2}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->getValue()I

    .line 104
    move-result v0

    .line 107
    filled-new-array {v0, p1}, [I

    .line 108
    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 112
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 116
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda1;

    .line 118
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 126
    new-instance v3, Lcom/android/systemui/settings/brightness/BrightnessController$11;

    .line 128
    invoke-direct {v3, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$11;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    invoke-interface {v2}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->getValue()I

    .line 136
    move-result v0

    .line 139
    sub-int/2addr v0, p1

    .line 140
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 141
    move-result p1

    .line 144
    mul-int/lit16 p1, p1, 0xbb8

    .line 145
    div-int/2addr p1, v1

    .line 147
    int-to-long v0, p1

    .line 148
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 154
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    :goto_1
    return-void
    .line 159
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "screen_brightness_mode"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessSliderController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 17
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 24
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 26
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;I)V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 32
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 34
    const/4 v1, 0x2

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;I)V

    .line 37
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 40
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 42
    const/4 v1, 0x3

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;I)V

    .line 45
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 48
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 50
    const/4 v1, 0x4

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;I)V

    .line 53
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 56
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$6;

    .line 58
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 60
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;

    .line 63
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 65
    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$7;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 67
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 70
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$8;

    .line 72
    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$8;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    .line 74
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 79
    instance-of v1, p1, Landroid/app/Activity;

    .line 81
    if-eqz v1, :cond_0

    .line 83
    move-object v1, p1

    .line 85
    check-cast v1, Landroid/app/Activity;

    .line 86
    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Landroid/app/Activity;

    .line 88
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 90
    const v1, 0xffff

    .line 92
    invoke-virtual {p2, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setMax(I)V

    .line 95
    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 98
    iput-object p6, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 102
    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 104
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 106
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Lcom/android/systemui/settings/brightness/BrightnessController$7;)V

    .line 108
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 113
    move-result p2

    .line 116
    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 117
    const-class p2, Landroid/os/PowerManager;

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    move-result-object p2

    .line 124
    check-cast p2, Landroid/os/PowerManager;

    .line 125
    const-class p2, Landroid/hardware/display/DisplayManager;

    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 132
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 135
    const-string/jumbo p1, "vrmanager"

    .line 137
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 140
    move-result-object p1

    .line 143
    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    .line 144
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 148
    return-void
    .line 150
.end method


# virtual methods
.method public final onChanged(IZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    .line 14
    if-eqz v0, :cond_2

    .line 16
    const/16 v0, 0xdb

    .line 18
    goto :goto_0

    .line 20
    :cond_2
    const/16 v0, 0xda

    .line 21
    :goto_0
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    .line 23
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 25
    invoke-static {v1, v2, p1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(FFI)F

    .line 27
    move-result p1

    .line 30
    invoke-static {p1, v2}, Landroid/util/MathUtils;->min(FF)F

    .line 31
    move-result p1

    .line 34
    if-eqz p3, :cond_3

    .line 35
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 39
    move-result v1

    .line 42
    invoke-static {p3, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 43
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 46
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 48
    invoke-virtual {p3, v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    .line 50
    if-nez p2, :cond_4

    .line 53
    new-instance p3, Lcom/android/systemui/settings/brightness/BrightnessController$9;

    .line 55
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$9;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;F)V

    .line 57
    invoke-static {p3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 60
    :cond_4
    if-eqz p2, :cond_5

    .line 63
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 67
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    move-result p2

    .line 72
    if-eqz p2, :cond_7

    .line 73
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    goto :goto_1

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 79
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 81
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    move-result p2

    .line 86
    if-eqz p2, :cond_6

    .line 87
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    :cond_6
    const-wide/16 p2, 0x7d0

    .line 92
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_7
    :goto_1
    return-void
    .line 97
.end method
