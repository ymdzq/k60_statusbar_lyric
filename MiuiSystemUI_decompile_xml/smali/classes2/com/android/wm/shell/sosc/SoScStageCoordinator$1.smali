.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;


# direct methods
.method public static synthetic $r8$lambda$UiXjRSr1elFrtLoA0x86ZA0CfcQ(Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;->lambda$onLeashReady$0(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$onLeashReady$0(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mapplyDividerVisibility(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmRootTaskLeash(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/view/SurfaceControl;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 8
    return-void
    .line 11
.end method

.method public onLeashReady(Landroid/view/SurfaceControl;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmDividerVisible(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$1;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 12
    move-result-object p1

    .line 15
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda13;

    .line 16
    const/16 v1, 0xd

    .line 18
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method
