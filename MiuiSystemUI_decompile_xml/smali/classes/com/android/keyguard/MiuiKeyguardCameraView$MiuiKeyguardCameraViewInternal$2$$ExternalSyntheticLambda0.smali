.class public final synthetic Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;

    .line 5
    iput-boolean p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;

    .line 2
    iget-boolean p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$2;->this$0:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 6
    if-nez p0, :cond_1

    .line 8
    iget-boolean p0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsPendingStartCamera:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    iput-boolean p0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsPendingStartCamera:Z

    .line 15
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsCameraShowing:Z

    .line 18
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimatorSet:Landroid/animation/AnimatorSet;

    .line 20
    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->applyBlurRatio(F)V

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->updateKeepScreenOnFlag(Z)V

    .line 37
    const/4 p0, 0x0

    .line 40
    iput-object p0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mBackgroundAnimatorSet:Landroid/animation/AnimatorSet;

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->reset()V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    iget-boolean p0, v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->mIsCameraShowing:Z

    .line 48
    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;->clearCameraShow()V

    .line 52
    :cond_2
    :goto_0
    return-void
    .line 55
.end method
