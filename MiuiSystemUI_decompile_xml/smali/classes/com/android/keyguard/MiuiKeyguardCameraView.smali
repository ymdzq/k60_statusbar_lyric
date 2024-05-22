.class public final Lcom/android/keyguard/MiuiKeyguardCameraView;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

.field public final mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveRightController$1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    const-string v1, "KeyguardCameraView"

    .line 7
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    move-result-object v0

    .line 20
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveRightController$1;)V

    .line 28
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
    .line 34
.end method
