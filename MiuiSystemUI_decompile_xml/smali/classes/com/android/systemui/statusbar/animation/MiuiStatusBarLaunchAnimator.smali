.class public final Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final mIsLowEndDevice:Z


# instance fields
.field public mCamouflageImageWindow:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

.field public final mContext:Landroid/content/Context;

.field public mIsReleaseOpenFloatingIconLayer:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mOpenFloatingIconLayer:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

.field public mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

.field public mViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 2
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mIsLowEndDevice:Z

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object p1

    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mMainHandler:Landroid/os/Handler;

    .line 16
    return-void
    .line 18
.end method
