.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;
.super Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlpha:F

.field public mAnimFeedback:Z

.field public mBouncer:Z

.field public mCollecting:Z

.field public final mContext:Landroid/content/Context;

.field public final mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

.field public mDisableLockScreenFodAnim:Z

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field public mDozeScreenOn:Z

.field public mDozing:Z

.field public mDozingIconAnimDone:Z

.field public mGxzwTransparent:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mLightLockWallpaperGxzw:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mMessageAnimStartTime:J

.field public mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

.field public mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

.field public mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

.field public mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;

.field public final mReleaseDrawWackLockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

.field public final mRemoveRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

.field public mShouldRemoveView:Z

.field public final mSystemUIHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mcancelAnimFeedback(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 16
    const-string/jumbo v1, "vibrator"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/os/Vibrator;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 32
    :cond_1
    return-void
    .line 34
.end method

.method public static -$$Nest$mperformAnimFeedback(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-boolean v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->sVibrateSwitchStatus:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 13
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mAnimItemMap:Ljava/util/Map;

    .line 15
    iget v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 22
    check-cast v1, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;

    .line 29
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->getFodMotionRtpId()I

    .line 31
    move-result v3

    .line 34
    const-class v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 35
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 41
    const/4 v2, -0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mSystemUIHandler:Landroid/os/Handler;

    .line 46
    move-object v1, v0

    .line 48
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(IILjava/lang/String;ILandroid/os/Handler;)V

    .line 51
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAnimFeedback:Z

    .line 55
    :cond_0
    return-void
    .line 57
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 6
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisplayState:I

    .line 9
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 11
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mCollecting:Z

    .line 13
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mGxzwTransparent:Z

    .line 16
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozeScreenOn:Z

    .line 18
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisableLockScreenFodAnim:Z

    .line 20
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 22
    invoke-direct {v3, v2, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 24
    iput-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mRemoveRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 27
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 29
    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 36
    const/4 v5, 0x6

    .line 38
    invoke-direct {v4, v5, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 39
    iput-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mReleaseDrawWackLockRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 42
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    iput v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAlpha:F

    .line 46
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mShouldRemoveView:Z

    .line 48
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;

    .line 50
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;)V

    .line 52
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$1;

    .line 55
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;

    .line 57
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;)V

    .line 59
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$2;

    .line 62
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 64
    invoke-direct {v0, v1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 66
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDelayRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 69
    new-instance v0, Landroid/os/Handler;

    .line 71
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 76
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mSystemUIHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->caculateRegion()Landroid/graphics/Rect;

    .line 82
    move-result-object p2

    .line 85
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 86
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    const/4 v1, -0x1

    .line 90
    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 94
    invoke-direct {v3, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 99
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 101
    invoke-direct {p1, v3, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;Landroid/os/Handler;)V

    .line 103
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 106
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 115
    move-result-object p2

    .line 118
    invoke-direct {p1, p2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;-><init>(Landroid/content/Context;)V

    .line 119
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 122
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 129
    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const/16 p1, 0x1304

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 139
    invoke-virtual {p1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->setMode(I)V

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 144
    move-result-object p1

    .line 147
    const-string p2, "display"

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 153
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 154
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 156
    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 158
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 163
    move-result-object p2

    .line 166
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 167
    invoke-direct {p1, p2, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;-><init>(Landroid/content/Context;Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;)V

    .line 169
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 172
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 174
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 178
    move-result v4

    .line 181
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 182
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 184
    move-result v5

    .line 187
    const/16 v6, 0x7df

    .line 188
    const v7, 0x1000618

    .line 190
    const/4 v8, -0x2

    .line 193
    move-object v3, p1

    .line 194
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 195
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 198
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 200
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 202
    or-int/lit8 p2, p2, 0x10

    .line 204
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 206
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->PRIVATE_FLAG_IS_HBM_OVERLAY:I

    .line 208
    or-int/2addr p2, v0

    .line 210
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 211
    const/16 p2, 0x33

    .line 213
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 215
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 217
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 219
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 221
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 223
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 225
    const-string p0, "gxzw_anim"

    .line 227
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    return-void
    .line 232
.end method


# virtual methods
.method public final caculateRegion()Landroid/graphics/Rect;
    .locals 4

    .line 1
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 2
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    .line 4
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 6
    sub-int/2addr v0, v1

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    sub-int/2addr p0, v0

    .line 11
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 12
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    .line 14
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 16
    sub-int/2addr v1, v2

    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    sub-int/2addr v0, v1

    .line 21
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    .line 22
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    .line 24
    new-instance v3, Landroid/graphics/Rect;

    .line 26
    add-int/2addr v1, p0

    .line 28
    add-int/2addr v2, v0

    .line 29
    invoke-direct {v3, p0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    return-object v3
    .line 33
.end method

.method public final drawFingerprintIcon(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "drawFingerprintIcon mDozing="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ";mDozingIconAnimDone="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 19
    const-string v2, "MiuiGxzwAnimView"

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 26
    if-eqz v0, :cond_0

    .line 28
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 30
    if-nez v0, :cond_0

    .line 32
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozeScreenOn:Z

    .line 34
    if-nez v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 38
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->stopAnimation(Z)V

    .line 41
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 44
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->clearAnimationSurface()V

    .line 46
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 50
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    .line 54
    move-result p0

    .line 57
    invoke-virtual {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->draw(I)V

    .line 58
    if-eqz p1, :cond_1

    .line 61
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 63
    move-result-object p0

    .line 66
    const-wide/16 v0, 0x12c

    .line 67
    invoke-interface {p0, v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->requestDrawWackLock(J)V

    .line 69
    :cond_1
    return-void
    .line 72
.end method

.method public final generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->onAttachedToWindow()V

    .line 2
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAlpha:F

    .line 5
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 7
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 17
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAlpha:F

    .line 19
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 21
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 23
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->stopAnimation(Z)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 4
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 10
    move-result p1

    .line 13
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisplayState:I

    .line 14
    const-string v1, "onDisplayChanged: oldState = "

    .line 16
    const-string v2, ", newState = "

    .line 18
    const-string v3, "MiuiGxzwAnimView"

    .line 20
    invoke-static {v1, v0, v2, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisplayState:I

    .line 25
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 27
    if-eqz v1, :cond_0

    .line 29
    if-eq p1, v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozeScreenOn:Z

    .line 36
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 38
    if-eqz p1, :cond_0

    .line 40
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 42
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->updateDozingIconAnim()V

    .line 46
    :cond_0
    return-void
    .line 49
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onKeyguardAuthen(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->onKeyguardAuthen(Z)V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 5
    iput-boolean p1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    .line 7
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 13
    if-nez p1, :cond_0

    .line 15
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 17
    if-eqz p1, :cond_1

    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->drawFingerprintIcon(Z)V

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public final onWallpaperChange(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLightLockWallpaperGxzw:Z

    .line 2
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLightLockWallpaperGxzw:Z

    .line 4
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 6
    iput-boolean p1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    .line 8
    if-eq v0, p1, :cond_0

    .line 10
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 12
    if-nez p1, :cond_0

    .line 14
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 20
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 22
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->drawFingerprintIcon(Z)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public final removeAnimView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mShouldRemoveView:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 6
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->clearAnimationSurface()V

    .line 8
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 11
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mRemoveRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 18
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mRemoveRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$$ExternalSyntheticLambda5;

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    const/16 v0, 0x8

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mShouldRemoveView:Z

    .line 31
    :cond_0
    return-void
    .line 33
.end method

.method public final setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAlpha:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    cmpl-float v0, p1, v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    cmpl-float p1, p1, v0

    .line 20
    if-nez p1, :cond_1

    .line 22
    :cond_0
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAlpha:F

    .line 24
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 26
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 28
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 36
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mAlpha:F

    .line 38
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 40
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public final startAnim(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisableLockScreenFodAnim:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mBouncer:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    iget-object v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->res:[I

    .line 26
    if-eqz v0, :cond_5

    .line 28
    array-length v0, v0

    .line 30
    if-lez v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 33
    iget-boolean v3, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->repeat:Z

    .line 35
    if-eqz v3, :cond_2

    .line 37
    const/4 v1, 0x2

    .line 39
    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->setMode(I)V

    .line 40
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 43
    iget v1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->frameInterval:I

    .line 45
    if-ltz v1, :cond_4

    .line 47
    iput v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mFrameInterval:I

    .line 49
    new-instance v8, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 51
    invoke-direct {v8, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 53
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 56
    iget v5, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->startPosition:I

    .line 58
    iget v6, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundRes:I

    .line 60
    iget v7, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundFrame:I

    .line 62
    iget v9, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->translateX:I

    .line 64
    iget v10, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->translateY:I

    .line 66
    invoke-virtual {p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->stopAnimation(Z)V

    .line 68
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 73
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    goto :goto_1

    .line 79
    :cond_3
    new-instance p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 80
    move-object v3, p1

    .line 82
    move-object v4, p0

    .line 83
    invoke-direct/range {v3 .. v10}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;IIILcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;II)V

    .line 84
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 87
    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 91
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMainHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 102
    const-string p1, "frameInterval < 0"

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 109
    :cond_5
    :goto_1
    return-void
.end method

.method public final startTipAnim(FLjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDisableLockScreenFodAnim:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mBouncer:Z

    .line 15
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwTipView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 30
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isBouncer()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->updateFontScale()V

    .line 41
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 54
    if-eqz p3, :cond_3

    .line 56
    const/high16 p3, -0x1000000

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    const/4 p3, -0x1

    .line 61
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 67
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 70
    const/4 p2, 0x2

    .line 72
    new-array p3, p2, [F

    .line 73
    fill-array-data p3, :array_0

    .line 75
    const-string/jumbo v0, "translationX"

    .line 78
    invoke-static {p1, v0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 81
    move-result-object p1

    .line 84
    const-wide/16 v0, 0x2bc

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    new-instance p3, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 90
    invoke-direct {p3}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    .line 92
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    .line 98
    new-array p2, p2, [F

    .line 100
    fill-array-data p2, :array_1

    .line 102
    const-string p3, "alpha"

    .line 105
    invoke-static {p0, p3, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 107
    move-result-object p0

    .line 110
    const-wide/16 p2, 0x96

    .line 111
    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 116
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 118
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 124
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 126
    filled-new-array {p1, p0}, [Landroid/animation/Animator;

    .line 129
    move-result-object p0

    .line 132
    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 133
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 136
    :goto_2
    return-void

    .line 139
    :array_0
    .array-data 4
        0x42700000    # 60.0f
        0x0
    .end array-data

    .line 140
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 148
.end method

.method public final updateDozingIconAnim()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozing:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozeScreenOn:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 10
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isFodAodShowEnable(Landroid/content/Context;)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mCollecting:Z

    .line 25
    if-nez v0, :cond_0

    .line 27
    const-string v0, "MiuiGxzwAnimView"

    .line 29
    const-string/jumbo v2, "startIconAnim"

    .line 31
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 37
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimManager:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 39
    invoke-virtual {v2, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    .line 41
    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->draw(I)V

    .line 45
    new-instance v0, Landroid/animation/ObjectAnimator;

    .line 48
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 53
    const/4 v2, 0x2

    .line 55
    new-array v2, v2, [F

    .line 56
    fill-array-data v2, :array_0

    .line 58
    const-string v3, "alpha"

    .line 61
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 63
    move-result-object v0

    .line 66
    const-wide/16 v2, 0x320

    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 72
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 74
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 80
    :cond_0
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal;->mDozingIconAnimDone:Z

    .line 83
    :cond_1
    return-void

    .line 85
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 86
.end method
