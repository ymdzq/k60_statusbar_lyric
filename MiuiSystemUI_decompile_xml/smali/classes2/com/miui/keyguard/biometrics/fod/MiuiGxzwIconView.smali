.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;
.super Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$MiuiGxzwSensorListener;
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$TransparentTimerListener;


# instance fields
.field public volatile isCatchDownEvent:Z

.field public final listener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

.field public mCollectGxzwListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$CollectGxzwListener;

.field public final mContext:Landroid/content/Context;

.field public mCurrentNonUIMode:I

.field public mDeviceMoving:Z

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field public mDozeShowIconTimeout:Z

.field public mDozing:Z

.field public final mGotoUnlockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;

.field public mGxzwIconTransparent:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

.field public mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

.field public mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$3;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

.field public mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

.field public mMiuiGxzwSensor:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

.field public mMiuiGxzwTransparentTimer:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

.field public mPendingShow:Z

.field public mPendingShowBouncer:Z

.field public mPendingShowLightIcon:Z

.field public mPowerManager:Landroid/os/PowerManager;

.field public mTouchDown:Z

.field public final mWakefulnessObserver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 6
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 8
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 11
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDeviceMoving:Z

    .line 13
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozeShowIconTimeout:Z

    .line 15
    const/4 v2, 0x2

    .line 17
    iput v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayState:I

    .line 18
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->isCatchDownEvent:Z

    .line 20
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;

    .line 22
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;)V

    .line 24
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;

    .line 27
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 29
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;)V

    .line 31
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mWakefulnessObserver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 34
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$3;

    .line 36
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$3;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;)V

    .line 38
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$3;

    .line 41
    new-instance v0, Landroid/os/Handler;

    .line 43
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 50
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;)V

    .line 52
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->listener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 55
    const-string v0, "MiuiGxzwViewIcon"

    .line 57
    const-string v2, "MiuiGxzwIconView"

    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mContext:Landroid/content/Context;

    .line 64
    sget-boolean p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_LHBM_FINGER:Z

    .line 66
    if-nez p1, :cond_0

    .line 68
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 83
    :goto_0
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 85
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 94
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 101
    invoke-direct {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 105
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;-><init>(Landroid/content/Context;)V

    .line 113
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwSensor:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 118
    move-result-object p1

    .line 121
    const-string v0, "power"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 127
    check-cast p1, Landroid/os/PowerManager;

    .line 128
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPowerManager:Landroid/os/PowerManager;

    .line 130
    const/16 p1, 0x1300

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 134
    const-class p1, Lmiui/stub/MiuiStub$3;

    .line 137
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    move-result-object p1

    .line 142
    check-cast p1, Lmiui/stub/MiuiStub$3;

    .line 143
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 145
    const-class p1, Lmiui/stub/MiuiStub$15;

    .line 147
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 152
    check-cast p1, Lmiui/stub/MiuiStub$15;

    .line 153
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 157
    move-result-object p1

    .line 160
    const-string v0, "display"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    move-result-object p1

    .line 166
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 167
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 169
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 173
    move-result-object v0

    .line 176
    invoke-direct {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;-><init>(Landroid/content/Context;)V

    .line 177
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwTransparentTimer:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 180
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 182
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 186
    move-result v3

    .line 189
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 192
    move-result v4

    .line 195
    const/16 v5, 0x7e2

    .line 196
    const v6, 0x1800608

    .line 198
    const/4 v7, -0x2

    .line 201
    move-object v2, p1

    .line 202
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 203
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 206
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 208
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 210
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->PRIVATE_FLAG_IS_HBM_OVERLAY:I

    .line 212
    or-int/2addr p0, v0

    .line 214
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 215
    const/16 p0, 0x33

    .line 217
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 219
    const-string p0, "gxzw_touch"

    .line 221
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    return-void
    .line 226
.end method


# virtual methods
.method public final caculateRegion()Landroid/graphics/Rect;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 16
    int-to-float p0, p0

    .line 18
    const v0, 0x3e4ccccd    # 0.2f

    .line 19
    mul-float/2addr p0, v0

    .line 22
    float-to-int p0, p0

    .line 23
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 24
    int-to-float v1, v1

    .line 26
    mul-float/2addr v1, v0

    .line 27
    float-to-int v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    move v0, p0

    .line 31
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    .line 32
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 34
    sub-int/2addr v2, p0

    .line 36
    sget v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 37
    sub-int/2addr v3, v0

    .line 39
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 40
    sget v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 42
    add-int/2addr v4, v5

    .line 44
    add-int/2addr v4, p0

    .line 45
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 46
    sget v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 48
    add-int/2addr p0, v5

    .line 50
    add-int/2addr p0, v0

    .line 51
    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    return-object v1
    .line 55
.end method

.method public final dismissFingerpirntIcon()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    const-string v0, "MiuiGxzwViewIcon"

    .line 6
    const-string/jumbo v1, "setGxzwIconTransparent"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 14
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 16
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 18
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 32
    move-result-object v0

    .line 35
    const-wide/16 v1, 0x12c

    .line 36
    invoke-interface {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$CollectGxzwListener;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 45
    invoke-virtual {v0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->onIconStateChange(Z)V

    .line 47
    :cond_1
    iput-boolean v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 50
    const-class v0, Lmiui/stub/MiuiStub$10;

    .line 52
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Lmiui/stub/MiuiStub$10;

    .line 58
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 60
    invoke-virtual {v0, v1}, Lmiui/stub/MiuiStub$10;->onGxzwIconChanged(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->updateDozeScreenState()V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->unscheduleSetIconTransparen()V

    .line 68
    return-void
    .line 71
.end method

.method public final dismissGxzwIconView(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_LOWLIGHT_SENSOR:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    sget-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SUPPORT_NO_TOUCH_MODE:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-class v0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 13
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 19
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda2;

    .line 21
    invoke-direct {v1, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/systemui/MiuiUiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 26
    :cond_0
    const/16 v0, 0x8

    .line 29
    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    move v2, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v1

    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 40
    if-eqz v2, :cond_3

    .line 42
    if-eqz p1, :cond_2

    .line 44
    move v3, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v3, v1

    .line 48
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    :cond_3
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 52
    if-eqz p1, :cond_4

    .line 54
    goto :goto_2

    .line 56
    :cond_4
    move v0, v1

    .line 57
    :goto_2
    iget-object p1, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda4;

    .line 60
    invoke-direct {v1, v2, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 68
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 72
    const/4 v1, 0x4

    .line 74
    invoke-direct {v0, p0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
    .line 81
.end method

.method public final generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 12
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 14
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 16
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 18
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v4, v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 21
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 27
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayChanged(I)V
    .locals 6

    .line 1
    if-nez p1, :cond_5

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 4
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 10
    move-result p1

    .line 13
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayState:I

    .line 14
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 16
    if-eqz v1, :cond_4

    .line 18
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 20
    if-eqz v1, :cond_4

    .line 22
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 24
    if-eqz v1, :cond_4

    .line 26
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x4

    .line 29
    const/4 v3, 0x3

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq p1, v3, :cond_0

    .line 32
    if-ne p1, v2, :cond_1

    .line 34
    :cond_0
    if-ne v0, v4, :cond_1

    .line 36
    iget-boolean v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 38
    if-eqz v5, :cond_1

    .line 40
    move v5, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v5, v1

    .line 44
    :goto_0
    if-eq v0, v3, :cond_2

    .line 45
    if-ne v0, v2, :cond_3

    .line 47
    :cond_2
    if-ne p1, v4, :cond_3

    .line 49
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 51
    if-nez v0, :cond_3

    .line 53
    move v1, v4

    .line 55
    :cond_3
    or-int v0, v5, v1

    .line 56
    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->updateDozeScreenState()V

    .line 60
    :cond_4
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayState:I

    .line 63
    :cond_5
    return-void
    .line 65
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onKeyguardAuthen(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->onKeyguardAuthen(Z)V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->onKeyguardAuthen(Z)V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 12
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 16
    const/4 v2, 0x6

    .line 18
    invoke-direct {v1, v2, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
    .line 25
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onTouchDown()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "MiuiGxzwViewIcon"

    .line 7
    const-string v1, "onTouchDown"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->turnOnAodIfScreenOff()V

    .line 14
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    .line 17
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 20
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 22
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 24
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 34
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getAodEnable()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    const-class v0, Lmiui/stub/MiuiStub$10;

    .line 42
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lmiui/stub/MiuiStub$10;

    .line 48
    invoke-virtual {v0, v4}, Lmiui/stub/MiuiStub$10;->fireFingerprintPressed(Z)V

    .line 50
    :cond_1
    const-class v0, Lmiui/stub/MiuiStub$13;

    .line 53
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Lmiui/stub/MiuiStub$13;

    .line 59
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$13;->shouldListenForFingerprintWhenUnlocked()Z

    .line 61
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;

    .line 70
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    move v0, v4

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v0, v1

    .line 77
    :goto_0
    iput-boolean v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 78
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 80
    if-eqz v2, :cond_3

    .line 82
    iget-boolean v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mGxzwHighLightTransparent:Z

    .line 84
    if-eqz v3, :cond_3

    .line 86
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 88
    const/high16 v5, 0x3f800000    # 1.0f

    .line 90
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 92
    iput-boolean v1, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mGxzwHighLightTransparent:Z

    .line 94
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 96
    move-result v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    iget-object v5, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 104
    invoke-interface {v3, v2, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const-string v2, "MiuiGxzwHightlightContainer"

    .line 109
    const-string/jumbo v3, "show highlight view"

    .line 111
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_3
    iget-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 117
    if-eqz v2, :cond_4

    .line 119
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 121
    move-result-object v1

    .line 124
    const-wide/16 v2, 0x12c

    .line 125
    invoke-interface {v1, v2, v3}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 127
    goto :goto_1

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPowerManager:Landroid/os/PowerManager;

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 133
    move-result-wide v5

    .line 136
    invoke-virtual {v2, v5, v6, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$CollectGxzwListener;

    .line 140
    if-eqz v1, :cond_5

    .line 142
    check-cast v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 144
    invoke-virtual {v1, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->onCollectStateChange(Z)V

    .line 146
    :cond_5
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 149
    if-eqz v1, :cond_6

    .line 151
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 153
    if-eqz v1, :cond_6

    .line 155
    if-nez v0, :cond_6

    .line 157
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 159
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 161
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 163
    const/4 v3, 0x6

    .line 165
    invoke-direct {v2, v0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 166
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_6
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 172
    if-eqz v0, :cond_7

    .line 174
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->unscheduleSetIconTransparen()V

    .line 176
    :cond_7
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 179
    if-eqz p0, :cond_8

    .line 181
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 183
    move-result-object p0

    .line 186
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->notifyGxzwTouchDown()V

    .line 187
    :cond_8
    return-void
    .line 190
.end method

.method public final onTouchUp(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "MiuiGxzwViewIcon"

    .line 7
    const-string v1, "onTouchUp"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 14
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 16
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 18
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    .line 28
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    .line 38
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGotoUnlockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;

    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$CollectGxzwListener;

    .line 45
    if-eqz v1, :cond_2

    .line 47
    check-cast v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 49
    invoke-virtual {v1, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->onCollectStateChange(Z)V

    .line 51
    :cond_2
    iput-boolean v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mTouchDown:Z

    .line 54
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 56
    invoke-virtual {v1}, Lmiui/stub/MiuiStub$15;->getAodEnable()Z

    .line 58
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    if-nez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 66
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$3;->isFingerprintTemporarilyLockout()Z

    .line 68
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 74
    iget-object v0, v0, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 76
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 78
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 80
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 86
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 88
    if-nez v0, :cond_4

    .line 90
    :cond_3
    const-class v0, Lmiui/stub/MiuiStub$10;

    .line 92
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 97
    check-cast v0, Lmiui/stub/MiuiStub$10;

    .line 98
    invoke-virtual {v0, v4}, Lmiui/stub/MiuiStub$10;->fireFingerprintPressed(Z)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setHightlightTransparen()V

    .line 103
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 106
    if-eqz v0, :cond_5

    .line 108
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 110
    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    .line 114
    move-result v0

    .line 117
    if-nez v0, :cond_5

    .line 118
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 120
    move-result-object v0

    .line 123
    const-wide/16 v1, 0x12c

    .line 124
    invoke-interface {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 126
    :cond_5
    if-eqz p1, :cond_6

    .line 129
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 131
    if-eqz p1, :cond_6

    .line 133
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 135
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 137
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 139
    const/4 v2, 0x1

    .line 141
    invoke-direct {v1, p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    goto :goto_0

    .line 148
    :cond_6
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 149
    if-eqz p1, :cond_7

    .line 151
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 153
    move-result-object p1

    .line 156
    invoke-interface {p1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    .line 157
    move-result p1

    .line 160
    if-nez p1, :cond_8

    .line 161
    :cond_7
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 163
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 165
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 167
    const/4 v2, 0x4

    .line 169
    invoke-direct {v1, p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 176
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 178
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;

    .line 180
    const/4 v2, 0x3

    .line 182
    invoke-direct {v1, p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;I)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 189
    if-eqz p1, :cond_9

    .line 191
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 193
    move-result-object p1

    .line 196
    invoke-interface {p1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    .line 197
    move-result p1

    .line 200
    if-nez p1, :cond_9

    .line 201
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    .line 203
    :cond_9
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 206
    if-eqz p0, :cond_a

    .line 208
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 210
    move-result-object p0

    .line 213
    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->notifyGxzwTouchUp()V

    .line 214
    :cond_a
    return-void
    .line 217
.end method

.method public final scheduleSetIconTransparen()V
    .locals 9

    .line 1
    const-string v0, "MiuiGxzwViewIcon"

    .line 2
    const-string v1, "scheduleSetIconTransparen"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwTransparentTimer:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 9
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->cancel()V

    .line 11
    iput-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mTransparentTimerListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$TransparentTimerListener;

    .line 14
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mHandler:Landroid/os/Handler;

    .line 16
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mTimeout:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer$$ExternalSyntheticLambda0;

    .line 18
    const-wide/16 v3, 0x1388

    .line 20
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mAlarmManager:Landroid/app/AlarmManager;

    .line 25
    const/4 v1, 0x2

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v5

    .line 31
    add-long v4, v5, v3

    .line 32
    const-string v6, "MiuiGxzwTransparentTimer"

    .line 34
    iget-object v8, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mHandler:Landroid/os/Handler;

    .line 36
    move v3, v1

    .line 38
    move-object v7, v0

    .line 39
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 40
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->mSetAlarm:Z

    .line 44
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozeShowIconTimeout:Z

    .line 47
    return-void
    .line 49
.end method

.method public final setEnrolling(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 6
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final setGxzwIconOpaque()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const-string v0, "MiuiGxzwViewIcon"

    .line 6
    const-string/jumbo v1, "setGxzwIconOpaque"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 14
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 16
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 18
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 32
    move-result-object v0

    .line 35
    const-wide/16 v1, 0x12c

    .line 36
    invoke-interface {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCollectGxzwListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$CollectGxzwListener;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 45
    invoke-virtual {v0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->onIconStateChange(Z)V

    .line 47
    :cond_1
    iput-boolean v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 50
    const-class v0, Lmiui/stub/MiuiStub$10;

    .line 52
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Lmiui/stub/MiuiStub$10;

    .line 58
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 60
    invoke-virtual {v0, p0}, Lmiui/stub/MiuiStub$10;->onGxzwIconChanged(Z)V

    .line 62
    :cond_2
    return-void
    .line 65
.end method

.method public final setHightlightTransparen()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mGxzwHighLightTransparent:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mGxzwHighLightTransparent:Z

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 19
    const/4 v1, 0x0

    .line 21
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 22
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    const-string p0, "MiuiGxzwHightlightContainer"

    .line 29
    const-string v0, "dismiss highlight view"

    .line 31
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public final setNonUIMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCurrentNonUIMode:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mCurrentNonUIMode:I

    .line 6
    const-class p0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 8
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 14
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/miui/systemui/MiuiUiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final show(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "MiuiGxzwViewIcon"

    .line 7
    const-string/jumbo v1, "show"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 15
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowed:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShow:Z

    .line 22
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShowLightIcon:Z

    .line 24
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->show()V

    .line 27
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwAnimView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;

    .line 30
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView;->mMainHandler:Landroid/os/Handler;

    .line 32
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;

    .line 34
    const/4 v3, 0x7

    .line 36
    invoke-direct {v2, v3, v0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Z)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 43
    const/4 v0, -0x1

    .line 45
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 46
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 48
    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwSensor:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;

    .line 52
    invoke-virtual {p1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor;->registerDozeSensor(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwSensor$MiuiGxzwSensorListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    .line 57
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwTransparentTimer:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isFodAodShowEnable(Landroid/content/Context;)Z

    .line 69
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->dismissFingerpirntIcon()V

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    .line 79
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->addViewToWindow()V

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 85
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 93
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_4
    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    sget-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_LOWLIGHT_SENSOR:Z

    .line 102
    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 106
    sget-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SUPPORT_NO_TOUCH_MODE:Z

    .line 109
    if-nez v0, :cond_5

    .line 111
    const-class v0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 113
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 118
    check-cast v0, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 119
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda1;

    .line 121
    invoke-direct {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda1;-><init>()V

    .line 123
    invoke-virtual {v0, v1}, Lcom/miui/systemui/MiuiUiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 126
    :cond_5
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDeviceMoving:Z

    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setNonUIMode(I)V

    .line 131
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozeShowIconTimeout:Z

    .line 134
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 136
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 138
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 142
    move-result p1

    .line 145
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayState:I

    .line 146
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 148
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHandler:Landroid/os/Handler;

    .line 150
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 152
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mHighlightView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;

    .line 155
    if-eqz p1, :cond_6

    .line 157
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwHightlightContainer;->show()V

    .line 159
    :cond_6
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 162
    invoke-virtual {p1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->setQuickViewListener(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;)V

    .line 164
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitor:Lmiui/stub/MiuiStub$3;

    .line 167
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$3;

    .line 169
    invoke-virtual {p1, v0}, Lmiui/stub/MiuiStub$3;->registerCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    .line 171
    const-class p1, Lmiui/stub/MiuiStub$4;

    .line 174
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 176
    move-result-object p1

    .line 179
    check-cast p1, Lmiui/stub/MiuiStub$4;

    .line 180
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mWakefulnessObserver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 182
    invoke-virtual {p1, v0}, Lmiui/stub/MiuiStub$4;->addObserver(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V

    .line 184
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;

    .line 189
    move-result-object p1

    .line 192
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->listener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 193
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mGesturePointerEventDispatcher:Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;

    .line 195
    if-eqz v0, :cond_7

    .line 197
    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 202
    move-result v1

    .line 205
    monitor-exit v0

    .line 206
    if-nez v1, :cond_8

    .line 207
    goto :goto_1

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    throw p0

    .line 212
    :cond_7
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 213
    move-result-object v0

    .line 216
    const-string v1, "miui-touch-fod"

    .line 217
    iget v2, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mDisplayId:I

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 221
    move-result-object v0

    .line 224
    iput-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mGestureInputMonitor:Landroid/view/InputMonitor;

    .line 225
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;

    .line 227
    iget-object v1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mGestureInputMonitor:Landroid/view/InputMonitor;

    .line 229
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 231
    move-result-object v1

    .line 234
    iget-object v2, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 235
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 237
    move-result-object v2

    .line 240
    invoke-direct {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 241
    iput-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mGesturePointerEventDispatcher:Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;

    .line 244
    :cond_8
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->mGesturePointerEventDispatcher:Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;

    .line 246
    const-string v0, "registerInputEventListener: trying to register"

    .line 248
    monitor-enter p1

    .line 250
    :try_start_1
    iget-object v1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 253
    move-result v1

    .line 256
    if-eqz v1, :cond_9

    .line 257
    const-string v1, "MiuiGestureEventDispatcher"

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    const-string p0, " twice."

    .line 269
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p0

    .line 277
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    monitor-exit p1

    .line 281
    goto :goto_2

    .line 282
    :cond_9
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 p0, 0x0

    .line 288
    iput-object p0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGestureEventDispatcher;->mListenersArray:[Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 289
    monitor-exit p1

    .line 291
    :goto_2
    return-void

    .line 292
    :catchall_1
    move-exception p0

    .line 293
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    throw p0
    .line 295
.end method

.method public final showFingerprintIcon()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setGxzwIconOpaque()V

    .line 6
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->scheduleSetIconTransparen()V

    .line 9
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->updateDozeScreenState()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final turnOnAodIfScreenOff()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "turnOnScreen mDozing="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ";state="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 27
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    const-string v1, "MiuiGxzwViewIcon"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 47
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    .line 53
    move-result p0

    .line 56
    const/4 v0, 0x1

    .line 57
    if-ne p0, v0, :cond_1

    .line 58
    const-class p0, Lmiui/stub/MiuiStub$10;

    .line 60
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    check-cast p0, Lmiui/stub/MiuiStub$10;

    .line 66
    iget-object p0, p0, Lmiui/stub/MiuiStub$10;->this$0:Lmiui/stub/MiuiStub;

    .line 68
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 70
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mDozeServiceHost:Ldagger/Lazy;

    .line 72
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 80
    if-nez v1, :cond_0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenStateGXZWRequested:Z

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->fireAodStateInternal(Z)V

    .line 87
    :goto_0
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 90
    move-result-object p0

    .line 93
    const-wide/16 v0, 0x12c

    .line 94
    invoke-interface {p0, v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 96
    :cond_1
    return-void
    .line 99
.end method

.method public final unscheduleSetIconTransparen()V
    .locals 2

    .line 1
    const-string v0, "MiuiGxzwViewIcon"

    .line 2
    const-string/jumbo v1, "unscheduleSetIconTransparen"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwTransparentTimer:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;

    .line 10
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTransparentTimer;->cancel()V

    .line 12
    return-void
    .line 15
.end method

.method public final updateDozeScreenState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mKeyguardCommonSettingObserver:Lmiui/stub/MiuiStub$15;

    .line 2
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$15;->getInvertColorsEnable()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mGxzwIconTransparent:Z

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 15
    if-eqz v0, :cond_3

    .line 17
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    .line 26
    move-result p0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eq p0, v1, :cond_3

    .line 31
    const-string p0, "MiuiGxzwViewIcon"

    .line 33
    const-string/jumbo v2, "turnOffScreen"

    .line 35
    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-class p0, Lmiui/stub/MiuiStub$10;

    .line 41
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lmiui/stub/MiuiStub$10;

    .line 47
    iget-object p0, p0, Lmiui/stub/MiuiStub$10;->this$0:Lmiui/stub/MiuiStub;

    .line 49
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 51
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mDozeServiceHost:Ldagger/Lazy;

    .line 53
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 59
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 61
    if-nez v2, :cond_1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScreenStateGXZWRequested:Z

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->fireAodStateInternal(Z)V

    .line 68
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->turnOnAodIfScreenOff()V

    .line 72
    :cond_3
    :goto_0
    return-void
    .line 75
.end method
