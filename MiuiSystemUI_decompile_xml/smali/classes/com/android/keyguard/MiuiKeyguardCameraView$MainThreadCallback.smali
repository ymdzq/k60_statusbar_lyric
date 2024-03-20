.class public final Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;


# instance fields
.field public final mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimUpdate(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;F)V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final onBackAnimationEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;I)V

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final onCancelAnimationEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;I)V

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final onCompletedAnimationEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;I)V

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final onVisibilityChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Z)V

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final updatePreViewBackground()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mCallback:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;I)V

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$MainThreadCallback;->mMainHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method
