.class public Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;
.super Ljava/lang/Object;
.source "SplitSessionStatusChanger.java"


# instance fields
.field final mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

.field final sessionState:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    .line 16
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->sessionState:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    return-void
.end method


# virtual methods
.method public changeStatus(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;-><init>(Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeStatus(II)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/play/core/splitinstall/ChangeSessionStatusWorker;-><init>(Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
