.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateAffordanceViewTipsLayoutParams()V

    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIndicationTextLayoutParams()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onLockWallpaperChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    return-void
    .line 9
.end method

.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 4
    if-eq p1, p6, :cond_0

    .line 6
    iput-boolean p6, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIcons()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
