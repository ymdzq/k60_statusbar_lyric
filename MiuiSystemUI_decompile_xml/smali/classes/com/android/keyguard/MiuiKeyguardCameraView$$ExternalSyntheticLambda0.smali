.class public final synthetic Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/MiuiKeyguardCameraView;Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveRightController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;->f$2:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda0;->f$2:Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 11
    iget-object v3, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 13
    invoke-direct {v2, v1, p0, v3}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;-><init>(Landroid/content/Context;Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;Landroid/os/Handler;)V

    .line 15
    iput-object v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mMiuiKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal;

    .line 18
    return-void
    .line 20
.end method
