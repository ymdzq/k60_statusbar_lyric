.class public final Lcom/android/keyguard/KeyguardMoveRightController$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveRightController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveRightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController$3;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$3;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p1, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p1, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 21
    iget-object v0, p1, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 23
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;

    .line 25
    const/4 v2, 0x2

    .line 27
    invoke-direct {v1, p1, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;I)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 35
    :cond_0
    return-void
    .line 37
.end method

.method public final onLockScreenMagazinePreViewVisibilityChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$3;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveRightController;->reset()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p6, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$3;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mIsLightLockWallpaper:Z

    .line 6
    return-void
    .line 8
.end method
