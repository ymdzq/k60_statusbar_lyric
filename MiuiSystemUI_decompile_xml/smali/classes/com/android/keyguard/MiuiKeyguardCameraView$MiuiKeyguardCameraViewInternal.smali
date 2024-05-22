.class public final Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mActiveAnimPer:F

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field public mBackgroundAnimatorSet:Landroid/animation/AnimatorSet;

.field public mBackgroundView:Landroid/view/View;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public final mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

.field public mCameraScrimView:Landroid/view/View;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public mDarkStyle:Z

.field public mIconActiveCenterX:F

.field public mIconActiveCenterY:F

.field public mIconActiveWidth:F

.field public mIconAlpha:F

.field public mIconCenterX:F

.field public mIconCenterY:F

.field public mIconCircleAlpha:F

.field public mIconCircleCenterX:F

.field public mIconCircleCenterY:F

.field public mIconCircleHeight:F

.field public final mIconCirclePaint:Landroid/graphics/Paint;

.field public final mIconCircleStrokePaint:Landroid/graphics/Paint;

.field public mIconCircleWidth:F

.field public mIconHeight:I

.field public mIconInitCenterX:F

.field public mIconInitCenterY:F

.field public mIconScale:F

.field public mIconView:Landroid/widget/ImageView;

.field public mIconWidth:I

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsActive:Z

.field public mIsCameraShowing:Z

.field public mIsPendingStartCamera:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMoveActivePer:F

.field public mMoveDistance:F

.field public mMovePer:F

.field public mMoveYPer:F

.field public mPreView:Landroid/widget/ImageView;

.field public mPreViewAlpha:F

.field public mPreViewCenterX:F

.field public mPreViewCenterY:F

.field public mPreViewContainer:Landroid/widget/LinearLayout;

.field public mPreViewContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mPreViewHeight:F

.field public mPreViewHeightWidthRatio:F

.field public final mPreViewInitRadius:F

.field public final mPreViewOutlineProvider:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$1;

.field public mPreViewRadius:F

.field public mPreViewWidth:F

.field public mScreenHeight:I

.field public mScreenSizePoint:Landroid/graphics/Point;

.field public mScreenWidth:I

.field public mShowing:Z

.field public final mThreadHandler:Landroid/os/Handler;

.field public final mTopActivityMayChangeListener:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;

.field public mTouchDownInitial:Z

.field public mTouchX:F

.field public mTouchY:F

.field public mVirX:F

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;Landroid/os/Handler;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 6
    const/high16 v0, 0x42700000    # 60.0f

    .line 8
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewInitRadius:F

    .line 10
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mConfiguration:Landroid/content/res/Configuration;

    .line 17
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;)V

    .line 21
    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewOutlineProvider:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$1;

    .line 24
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;

    .line 26
    invoke-direct {v1, p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;)V

    .line 28
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 31
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;)V

    .line 35
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTopActivityMayChangeListener:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$3;

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mThreadHandler:Landroid/os/Handler;

    .line 46
    new-instance p3, Landroid/os/Handler;

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    move-result-object v2

    .line 53
    invoke-direct {p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    iput-object p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 57
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 59
    invoke-direct {v2, p2, p3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;Landroid/os/Handler;)V

    .line 61
    iput-object v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 64
    const/16 p2, 0x1300

    .line 66
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p2

    .line 74
    const-string/jumbo p3, "window"

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object p2

    .line 81
    check-cast p2, Landroid/view/WindowManager;

    .line 82
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mWindowManager:Landroid/view/WindowManager;

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 86
    move-result-object p2

    .line 89
    const-string p3, "display"

    .line 90
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object p2

    .line 95
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 96
    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 98
    move-result-object p2

    .line 101
    new-instance p3, Landroid/graphics/Point;

    .line 102
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 104
    iput-object p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenSizePoint:Landroid/graphics/Point;

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 109
    new-instance p2, Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 114
    move-result-object p3

    .line 117
    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 118
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundView:Landroid/view/View;

    .line 121
    const/4 p3, 0x0

    .line 123
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 124
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundView:Landroid/view/View;

    .line 127
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    const/4 v3, -0x1

    .line 131
    const/16 v4, 0x11

    .line 132
    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 134
    invoke-virtual {p0, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance p2, Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 142
    move-result-object v2

    .line 145
    invoke-direct {p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCameraScrimView:Landroid/view/View;

    .line 149
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 151
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCameraScrimView:Landroid/view/View;

    .line 154
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 156
    invoke-direct {p3, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 158
    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance p2, Landroid/widget/LinearLayout;

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 166
    move-result-object p3

    .line 169
    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 175
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 178
    const/4 p3, 0x1

    .line 180
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 181
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 184
    const/high16 v0, -0x1000000

    .line 186
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 188
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    invoke-direct {p2, p1, p1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 193
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {p0, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance p2, Landroid/widget/ImageView;

    .line 203
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 205
    move-result-object v2

    .line 208
    invoke-direct {p2, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreView:Landroid/widget/ImageView;

    .line 212
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 214
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 216
    invoke-direct {v5, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 218
    invoke-virtual {v2, p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance p2, Landroid/widget/ImageView;

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 226
    move-result-object v2

    .line 229
    invoke-direct {p2, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 230
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 233
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 235
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 237
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 240
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconWidth:I

    .line 244
    iget v4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconHeight:I

    .line 246
    const v5, 0x800055

    .line 248
    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 251
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 262
    const/4 v3, -0x1

    .line 264
    const/4 v4, -0x1

    .line 265
    const/16 v5, 0x7e1

    .line 266
    const v6, 0xd010718

    .line 268
    const/4 v7, -0x2

    .line 271
    move-object v2, p2

    .line 272
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 273
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 276
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 278
    const/high16 v3, 0x20000000

    .line 280
    or-int/2addr v2, v3

    .line 282
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 283
    const/4 v2, 0x3

    .line 285
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 286
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 288
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 290
    const-string v2, "keyguard_camera"

    .line 292
    invoke-virtual {p2, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 297
    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 302
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 304
    invoke-virtual {p2, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 306
    const/16 p2, 0x8

    .line 309
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateSizeForScreenSizeChange()V

    .line 314
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreView:Landroid/widget/ImageView;

    .line 317
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 319
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreView:Landroid/widget/ImageView;

    .line 324
    const v2, 0x7f080bb9    # @drawable/camera_preview 'res/drawable-440dpi/camera_preview.webp'

    .line 326
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundView:Landroid/view/View;

    .line 332
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 337
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 339
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCameraScrimView:Landroid/view/View;

    .line 342
    const/high16 v0, -0x67000000

    .line 344
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 346
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 349
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 351
    move-result-object p2

    .line 354
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 355
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 357
    const-string/jumbo p2, "vibrator"

    .line 359
    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    move-result-object p2

    .line 365
    check-cast p2, Landroid/os/Vibrator;

    .line 366
    new-instance p2, Landroid/graphics/Paint;

    .line 368
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCirclePaint:Landroid/graphics/Paint;

    .line 373
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 378
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    new-instance p2, Landroid/graphics/Paint;

    .line 386
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleStrokePaint:Landroid/graphics/Paint;

    .line 391
    const v0, 0xffffff

    .line 393
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    const/16 v0, 0x33

    .line 399
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 401
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 404
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 406
    const/high16 v0, 0x40000000    # 2.0f

    .line 409
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 414
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    .line 420
    const-string p2, "addViewToWindow "

    .line 422
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 427
    move-result p2

    .line 430
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 431
    const-string p2, " "

    .line 434
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 439
    move-result-object p2

    .line 442
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    move-result-object p1

    .line 449
    const-string p2, "KeyguardCameraView"

    .line 450
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 455
    move-result p1

    .line 458
    if-nez p1, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 461
    move-result-object p1

    .line 464
    if-nez p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mWindowManager:Landroid/view/WindowManager;

    .line 467
    if-eqz p1, :cond_0

    .line 469
    iget-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 471
    if-eqz p2, :cond_0

    .line 473
    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/BlurUtils;

    .line 478
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 480
    move-result-object p1

    .line 483
    check-cast p1, Lcom/android/systemui/statusbar/BlurUtils;

    .line 484
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 486
    new-instance p1, Landroid/os/Handler;

    .line 488
    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 490
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 492
    move-result-object p2

    .line 495
    check-cast p2, Landroid/os/Looper;

    .line 496
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBgHandler:Landroid/os/Handler;

    .line 501
    return-void
    .line 503
.end method


# virtual methods
.method public final applyBlurRatio(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    cmpl-float v1, p1, v0

    .line 4
    if-lez v1, :cond_0

    .line 6
    :goto_0
    move p1, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    cmpg-float v1, p1, v0

    .line 11
    if-gez v1, :cond_1

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 18
    move-result-object v1

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 24
    move-result p0

    .line 27
    float-to-int p0, p0

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    .line 30
    return-void
    .line 33
.end method

.method public final cancelAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 19
    :cond_1
    return-void
    .line 21
.end method

.method public final checkSize()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenSizePoint:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenSizePoint:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->updatePreViewBackground()V

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 50
    :cond_1
    return-void
    .line 53
.end method

.method public final clearCameraShow()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsCameraShowing:Z

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->onVisibilityChanged(Z)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->reset()V

    .line 17
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->onBackAnimationEnd()V

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBgHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$6;

    .line 29
    invoke-direct {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$6;-><init>()V

    .line 31
    const-wide/16 v1, 0x64

    .line 34
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    return-void
    .line 39
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "dismiss "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 9
    const-string v2, "KeyguardCameraView"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->onVisibilityChanged(Z)V

    .line 28
    :cond_1
    const/16 v1, 0x8

    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateKeepScreenOnFlag(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public final handleMoveDistanceChanged()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsCameraShowing:Z

    .line 2
    if-nez v0, :cond_c

    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsPendingStartCamera:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto/16 :goto_6

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 12
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenWidth:I

    .line 14
    div-int/lit8 v1, v1, 0x3

    .line 16
    int-to-float v1, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    sub-float v3, v0, v2

    .line 20
    sub-float/2addr v1, v2

    .line 22
    div-float/2addr v3, v1

    .line 23
    iput v3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMovePer:F

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCallBack:Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->onAnimUpdate(F)V

    .line 30
    :cond_1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 33
    move-result v0

    .line 36
    const/high16 v1, 0x43870000    # 270.0f

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    if-eqz v0, :cond_3

    .line 41
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 43
    cmpg-float v4, v0, v1

    .line 45
    if-gez v4, :cond_2

    .line 47
    div-float/2addr v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v3

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mCameraScrimView:Landroid/view/View;

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 54
    goto :goto_2

    .line 57
    :cond_3
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 58
    cmpg-float v4, v0, v1

    .line 60
    if-gez v4, :cond_4

    .line 62
    div-float/2addr v0, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move v0, v3

    .line 66
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->applyBlurRatio(F)V

    .line 67
    :goto_2
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsActive:Z

    .line 70
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMovePer:F

    .line 72
    iget v4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveActivePer:F

    .line 74
    cmpl-float v1, v1, v4

    .line 76
    const v5, 0x3f19999a    # 0.6f

    .line 78
    const/4 v6, 0x0

    .line 81
    if-lez v1, :cond_5

    .line 82
    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsActive:Z

    .line 85
    goto :goto_3

    .line 87
    :cond_5
    cmpl-float v1, v4, v5

    .line 88
    if-nez v1, :cond_6

    .line 90
    iput-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsActive:Z

    .line 92
    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsActive:Z

    .line 94
    if-nez v1, :cond_7

    .line 96
    if-eqz v0, :cond_7

    .line 98
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 100
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->startActiveAnim(FF)V

    .line 102
    goto :goto_4

    .line 105
    :cond_7
    if-eqz v1, :cond_8

    .line 106
    if-nez v0, :cond_8

    .line 108
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 110
    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->startActiveAnim(FF)V

    .line 112
    const-class v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 115
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 120
    check-cast v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 121
    check-cast v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 123
    const/4 v1, -0x1

    .line 125
    const-string v4, "mesh_heavy"

    .line 126
    invoke-virtual {v0, v6, v4, v1, v6}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 128
    :cond_8
    :goto_4
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveActivePer:F

    .line 131
    cmpl-float v0, v0, v5

    .line 133
    if-nez v0, :cond_c

    .line 135
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMovePer:F

    .line 137
    float-to-double v0, v0

    .line 139
    iget v4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 140
    float-to-double v4, v4

    .line 142
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 143
    mul-double/2addr v4, v6

    .line 148
    add-double/2addr v4, v0

    .line 149
    double-to-float v0, v4

    .line 150
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMovePer:F

    .line 151
    cmpg-float v1, v0, v2

    .line 153
    if-gez v1, :cond_9

    .line 155
    move v0, v2

    .line 157
    :cond_9
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMovePer:F

    .line 158
    cmpl-float v1, v0, v3

    .line 160
    if-lez v1, :cond_a

    .line 162
    sub-float v4, v0, v3

    .line 164
    const/high16 v5, 0x41a00000    # 20.0f

    .line 166
    div-float/2addr v4, v5

    .line 168
    add-float/2addr v4, v3

    .line 169
    goto :goto_5

    .line 170
    :cond_a
    move v4, v0

    .line 171
    :goto_5
    if-lez v1, :cond_b

    .line 172
    sub-float/2addr v0, v3

    .line 174
    const/high16 v1, 0x41700000    # 15.0f

    .line 175
    div-float/2addr v0, v1

    .line 177
    add-float/2addr v0, v3

    .line 178
    :cond_b
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchY:F

    .line 179
    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchY:F

    .line 181
    sub-float/2addr v1, v5

    .line 183
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 184
    move-result v1

    .line 187
    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenHeight:I

    .line 188
    int-to-float v5, v5

    .line 190
    div-float/2addr v1, v5

    .line 191
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveYPer:F

    .line 192
    const v6, 0x3dcccccd    # 0.1f

    .line 194
    mul-float/2addr v1, v6

    .line 197
    const v6, 0x3f59999a    # 0.85f

    .line 198
    add-float/2addr v1, v6

    .line 201
    const v6, 0x3f4ccccd    # 0.8f

    .line 202
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    .line 205
    move-result v1

    .line 208
    mul-float/2addr v1, v5

    .line 209
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveCenterY:F

    .line 210
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconInitCenterX:F

    .line 212
    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveCenterX:F

    .line 214
    invoke-static {v5, v1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 216
    move-result v1

    .line 219
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mVirX:F

    .line 220
    float-to-double v0, v0

    .line 222
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 223
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 225
    move-result-wide v0

    .line 228
    double-to-float v0, v0

    .line 229
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconInitCenterY:F

    .line 230
    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveCenterY:F

    .line 232
    invoke-static {v5, v1, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 234
    move-result v0

    .line 237
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveYPer:F

    .line 238
    const/high16 v5, 0x42c80000    # 100.0f

    .line 240
    mul-float/2addr v1, v5

    .line 242
    iget v5, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 243
    mul-float/2addr v1, v5

    .line 245
    add-float/2addr v1, v0

    .line 246
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveWidth:F

    .line 247
    invoke-static {v0, v2, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 249
    move-result v0

    .line 252
    iget v4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeightWidthRatio:F

    .line 253
    sub-float/2addr v4, v3

    .line 255
    mul-float/2addr v4, v5

    .line 256
    add-float/2addr v4, v3

    .line 257
    mul-float/2addr v4, v0

    .line 258
    iget v7, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mVirX:F

    .line 259
    iput v7, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCenterX:F

    .line 261
    const v8, 0x3e19999a    # 0.15f

    .line 263
    mul-float/2addr v8, v4

    .line 266
    add-float/2addr v8, v1

    .line 267
    const/high16 v9, 0x40000000    # 2.0f

    .line 268
    div-float v9, v0, v9

    .line 270
    sub-float/2addr v8, v9

    .line 272
    iput v8, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCenterY:F

    .line 273
    iget v8, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMovePer:F

    .line 275
    const/high16 v10, -0x40800000    # -1.0f

    .line 277
    mul-float/2addr v10, v8

    .line 279
    add-float/2addr v10, v3

    .line 280
    iput v10, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconAlpha:F

    .line 281
    iget v10, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveActivePer:F

    .line 283
    const/high16 v11, 0x3f000000    # 0.5f

    .line 285
    invoke-static {v8, v10, v11, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 287
    move-result v3

    .line 290
    iput v3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconScale:F

    .line 291
    iput v7, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleCenterX:F

    .line 293
    const v3, 0x3eb33333    # 0.35f

    .line 295
    mul-float/2addr v3, v4

    .line 298
    sub-float/2addr v1, v3

    .line 299
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleCenterY:F

    .line 300
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleWidth:F

    .line 302
    iput v4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleHeight:F

    .line 304
    mul-float/2addr v8, v6

    .line 306
    add-float/2addr v8, v2

    .line 307
    iput v8, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleAlpha:F

    .line 308
    iput v7, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterX:F

    .line 310
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterY:F

    .line 312
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewWidth:F

    .line 314
    iput v4, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeight:F

    .line 316
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewInitRadius:F

    .line 318
    invoke-static {v0, v9, v5, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 320
    move-result v0

    .line 323
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewRadius:F

    .line 324
    iput v5, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewAlpha:F

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 328
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateIconView()V

    .line 331
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updatePreView()V

    .line 334
    :cond_c
    :goto_6
    return-void
    .line 337
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mConfiguration:Landroid/content/res/Configuration;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7
    move-result p1

    .line 10
    and-int/lit16 v0, p1, 0x80

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/lit16 p1, p1, 0x800

    .line 20
    if-eqz p1, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_1
    if-nez v1, :cond_2

    .line 26
    if-eqz v0, :cond_3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->checkSize()V

    .line 30
    :cond_3
    return-void
    .line 33
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mThreadHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleCenterX:F

    .line 7
    iget v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleWidth:F

    .line 9
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    div-float v4, v2, v3

    .line 13
    sub-float v6, v1, v4

    .line 15
    div-float/2addr v2, v3

    .line 17
    add-float v8, v2, v1

    .line 18
    iget v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleCenterY:F

    .line 20
    iget v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleHeight:F

    .line 22
    div-float v4, v2, v3

    .line 24
    sub-float v7, v1, v4

    .line 26
    div-float/2addr v2, v3

    .line 28
    add-float v9, v2, v1

    .line 29
    iget-boolean v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mDarkStyle:Z

    .line 31
    if-nez v1, :cond_0

    .line 33
    sub-float v11, v6, v3

    .line 35
    sub-float v12, v7, v3

    .line 37
    add-float v13, v8, v3

    .line 39
    add-float v14, v9, v3

    .line 41
    iget v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewRadius:F

    .line 43
    iget-object v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleStrokePaint:Landroid/graphics/Paint;

    .line 45
    move-object/from16 v10, p1

    .line 47
    move v15, v1

    .line 49
    move/from16 v16, v1

    .line 50
    move-object/from16 v17, v2

    .line 52
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 54
    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCirclePaint:Landroid/graphics/Paint;

    .line 57
    iget v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCircleAlpha:F

    .line 59
    const/high16 v3, 0x437f0000    # 255.0f

    .line 61
    mul-float/2addr v2, v3

    .line 63
    float-to-int v2, v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget v11, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewRadius:F

    .line 68
    iget-object v12, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCirclePaint:Landroid/graphics/Paint;

    .line 70
    move-object/from16 v5, p1

    .line 72
    move v10, v11

    .line 74
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 75
    return-void
    .line 78
.end method

.method public final reset()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mShowing:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsPendingStartCamera:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchDownInitial:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->cancelAnim()V

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->dismiss()V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 20
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMoveDistance:F

    .line 24
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mActiveAnimPer:F

    .line 26
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchY:F

    .line 28
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mInitialTouchX:F

    .line 30
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchY:F

    .line 32
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mTouchX:F

    .line 34
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->handleMoveDistanceChanged()V

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mMainHandler:Landroid/os/Handler;

    .line 39
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;

    .line 41
    const/4 v2, 0x3

    .line 43
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
    .line 50
.end method

.method public final startActiveAnim(FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->cancelAnim()V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    const/4 v1, 0x0

    .line 15
    aput p1, v0, v1

    .line 16
    const/4 p1, 0x1

    .line 18
    aput p2, v0, p1

    .line 19
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 21
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;

    .line 25
    const/4 v1, 0x4

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;I)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 34
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 40
    const/4 p1, 0x0

    .line 43
    cmpl-float p1, p2, p1

    .line 44
    const-wide/16 v0, 0x1c2

    .line 46
    const p2, 0x3f4ccccd    # 0.8f

    .line 48
    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 53
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 55
    const v3, 0x3f666666    # 0.9f

    .line 57
    invoke-direct {v2, v3, p2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 60
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 66
    const-wide/16 v2, 0xfa

    .line 68
    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 70
    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 74
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;

    .line 76
    const v3, 0x3f2b851f    # 0.67f

    .line 78
    invoke-direct {v2, p2, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$PhysicBasedInterpolator;-><init>(FF)V

    .line 81
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 94
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 97
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 99
    return-void
    .line 102
.end method

.method public final updateIconView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 2
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCenterX:F

    .line 4
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconWidth:I

    .line 6
    div-int/lit8 v2, v2, 0x2

    .line 8
    int-to-float v2, v2

    .line 10
    sub-float/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 15
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconCenterY:F

    .line 17
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconHeight:I

    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 21
    int-to-float v2, v2

    .line 23
    sub-float/2addr v1, v2

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 28
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconAlpha:F

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 32
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 35
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconScale:F

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 39
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 42
    iget p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconScale:F

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 46
    return-void
    .line 49
.end method

.method public final updateKeepScreenOnFlag(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 4
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 8
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 13
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 15
    and-int/lit16 v0, v0, -0x81

    .line 17
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mWindowManager:Landroid/view/WindowManager;

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 43
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_1
    return-void
    .line 48
.end method

.method public final updatePreView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 2
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterX:F

    .line 4
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewWidth:F

    .line 6
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    div-float/2addr v2, v3

    .line 10
    sub-float/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 15
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewCenterY:F

    .line 17
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeight:F

    .line 19
    div-float/2addr v2, v3

    .line 21
    sub-float/2addr v1, v2

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewWidth:F

    .line 28
    float-to-int v1, v1

    .line 30
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 31
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeight:F

    .line 33
    float-to-int v1, v1

    .line 35
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewContainer:Landroid/widget/LinearLayout;

    .line 43
    iget p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewAlpha:F

    .line 45
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 47
    return-void
    .line 50
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenSizePoint:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 4
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenHeight:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 8
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenWidth:I

    .line 10
    int-to-float v1, v1

    .line 12
    int-to-float v0, v0

    .line 13
    div-float/2addr v1, v0

    .line 14
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mPreViewHeightWidthRatio:F

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x7f070437    # @dimen/keyguard_affordance_fixed_width '105.0dp'

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconWidth:I

    .line 30
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 37
    const v1, 0x7f070434    # @dimen/keyguard_affordance_fixed_height '105.0dp'

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    move-result v0

    .line 44
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconHeight:I

    .line 45
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenWidth:I

    .line 47
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconWidth:I

    .line 49
    div-int/lit8 v2, v2, 0x2

    .line 51
    sub-int v2, v1, v2

    .line 53
    int-to-float v2, v2

    .line 55
    iput v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconInitCenterX:F

    .line 56
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mScreenHeight:I

    .line 58
    div-int/lit8 v0, v0, 0x2

    .line 60
    sub-int v0, v2, v0

    .line 62
    int-to-float v0, v0

    .line 64
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconInitCenterY:F

    .line 65
    int-to-float v0, v1

    .line 67
    const v3, 0x3f0ccccd    # 0.55f

    .line 68
    mul-float/2addr v0, v3

    .line 71
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveCenterX:F

    .line 72
    int-to-float v0, v2

    .line 74
    const v2, 0x3f4ccccd    # 0.8f

    .line 75
    mul-float/2addr v0, v2

    .line 78
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveCenterY:F

    .line 79
    int-to-float v0, v1

    .line 81
    const v1, 0x3f3d70a4    # 0.74f

    .line 82
    mul-float/2addr v0, v1

    .line 85
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconActiveWidth:F

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mContext:Landroid/content/Context;

    .line 90
    const v2, 0x7f08122d    # @drawable/keyguard_bottom_camera_img 'res/drawable/keyguard_bottom_camera_img.xml'

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconWidth:I

    .line 114
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconHeight:I

    .line 116
    const v3, 0x800055

    .line 118
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 121
    goto :goto_0

    .line 124
    :cond_0
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconWidth:I

    .line 125
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 127
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconHeight:I

    .line 129
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 131
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIconView:Landroid/widget/ImageView;

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void
    .line 138
.end method
