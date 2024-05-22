.class public Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;
.super Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$CollectGxzwListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCollecting:Z

.field public final mDisableReadingModeAction:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field public volatile mDozing:Z

.field public mEnrolling:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public volatile mGoingToSleep:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHbmOverlay:Landroid/view/View;

.field public volatile mInvertColors:Z

.field public mKeyguardAuthen:Z

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mMaxBrightness:I

.field public mOverlayAlpha:F

.field public volatile mScreenEffectNone:Z

.field public volatile mShowed:Z

.field public volatile mWaitDisableReadingMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 6
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 8
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 12
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    .line 14
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    .line 17
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mScreenEffectNone:Z

    .line 19
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mCollecting:Z

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 29
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mHandler:Landroid/os/Handler;

    .line 34
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mWaitDisableReadingMode:Z

    .line 36
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;

    .line 38
    invoke-direct {v1, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;I)V

    .line 40
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisableReadingModeAction:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;

    .line 43
    const/4 v1, 0x2

    .line 45
    iput v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayState:I

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    move-result-object v1

    .line 55
    const v2, 0x7f0d01b3    # @layout/miui_keyguard_gxzw_overlay 'res/layout/miui_keyguard_gxzw_overlay.xml'

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v1, 0x7f0a03e3    # @id/hbm_overlay

    .line 62
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    .line 69
    const/16 v1, 0x1300

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 73
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 76
    const/4 v3, -0x1

    .line 78
    const/4 v4, -0x1

    .line 79
    const/16 v5, 0x7e5

    .line 80
    const v6, 0x5011518

    .line 82
    const/4 v7, -0x2

    .line 85
    move-object v2, v1

    .line 86
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 87
    iput-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 90
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 92
    const/high16 v3, 0x800000

    .line 94
    or-int/2addr v2, v3

    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 97
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 99
    sget v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->PRIVATE_FLAG_IS_HBM_OVERLAY:I

    .line 101
    or-int/2addr v2, v3

    .line 103
    const/high16 v3, 0x20000000

    .line 104
    or-int/2addr v2, v3

    .line 106
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 107
    const/4 v2, 0x3

    .line 109
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 110
    const/4 v2, 0x0

    .line 112
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 113
    const-string v2, "hbm_overlay"

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 120
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 122
    const/16 p1, 0x8

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 130
    move-result-object p1

    .line 133
    const-string v1, "display"

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 139
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 140
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 142
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 144
    return-void
    .line 147
.end method


# virtual methods
.method public final addOverlayView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 2
    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v0

    .line 21
    if-nez v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 24
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 28
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 34
    move-result-object v0

    .line 37
    const-wide/16 v1, 0x12c

    .line 38
    invoke-interface {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 40
    :cond_0
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayState:I

    .line 43
    const/4 v1, 0x3

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    const/4 v1, 0x4

    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 52
    if-eqz v0, :cond_2

    .line 54
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v0, v2

    .line 58
    :goto_0
    if-eqz v0, :cond_3

    .line 59
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mCollecting:Z

    .line 61
    if-nez v0, :cond_3

    .line 63
    const-class v0, Lmiui/stub/MiuiStub$15;

    .line 65
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Lmiui/stub/MiuiStub$15;

    .line 71
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getAodEnable()Z

    .line 73
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 79
    const/4 v1, 0x0

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mEnrolling:Z

    .line 86
    if-eqz v1, :cond_4

    .line 88
    const-string v1, "enroll_overlay"

    .line 90
    goto :goto_1

    .line 92
    :cond_4
    const-string v1, "hbm_overlay"

    .line 93
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "add overlay view: mLayoutParams.alpha = "

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 105
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 115
    const-string v1, "MiuiGxzwOverlayView"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->addViewToWindow()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 124
    :cond_5
    return-void
    .line 127
.end method

.method public final generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 15
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 17
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 27
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 29
    :cond_0
    return-void
.end method

.method public final onCollectStateChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mCollecting:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 6
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 19
    if-eqz p1, :cond_1

    .line 21
    const-class p1, Lmiui/stub/MiuiStub$15;

    .line 23
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Lmiui/stub/MiuiStub$15;

    .line 29
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$15;->getAodEnable()Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 37
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    .line 41
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 48
    :cond_1
    :goto_0
    return-void
    .line 51
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 4
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 10
    move-result p1

    .line 13
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayState:I

    .line 14
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayState:I

    .line 16
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v2, 0x4

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    if-eq p1, v1, :cond_0

    .line 24
    if-ne p1, v2, :cond_1

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-eqz p1, :cond_2

    .line 31
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 35
    :cond_2
    return-void
    .line 38
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onIconStateChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const-class v0, Lmiui/stub/MiuiStub$15;

    .line 6
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lmiui/stub/MiuiStub$15;

    .line 12
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getAodEnable()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 28
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 33
    :cond_2
    :goto_0
    return-void
    .line 36
.end method

.method public final removeOverlayView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    const-string v0, "MiuiGxzwOverlayView"

    .line 8
    const-string v1, "remove overlay view"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 19
    move-result-object v0

    .line 22
    const-wide/16 v1, 0x12c

    .line 23
    invoke-interface {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->removeViewFromWindow()V

    .line 28
    const/16 v0, 0x8

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final restoreScreenEffect()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mScreenEffectNone:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mGoingToSleep:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 11
    move-result v0

    .line 14
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;

    .line 17
    invoke-direct {v3, p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;Z)V

    .line 19
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mScreenEffectNone:Z

    .line 25
    :cond_0
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mWaitDisableReadingMode:Z

    .line 27
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mHandler:Landroid/os/Handler;

    .line 29
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisableReadingModeAction:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView$$ExternalSyntheticLambda0;

    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    return-void
    .line 36
.end method

.method public setEnrolling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mEnrolling:Z

    .line 2
    return-void
    .line 4
.end method

.method public final updateAlpha(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDisplayState:I

    .line 12
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    const/4 v1, 0x4

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mCollecting:Z

    .line 29
    if-nez v0, :cond_2

    .line 31
    const-class v0, Lmiui/stub/MiuiStub$15;

    .line 33
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lmiui/stub/MiuiStub$15;

    .line 39
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getAodEnable()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    const/4 p1, 0x0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 48
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 50
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 58
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "upldate overlay view alpha: "

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    const-string v0, "MiuiGxzwOverlayView"

    .line 77
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 89
    if-eqz p0, :cond_3

    .line 91
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 93
    move-result-object p0

    .line 96
    const-wide/16 v0, 0x12c

    .line 97
    invoke-interface {p0, v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 99
    :cond_3
    return-void
    .line 102
.end method
