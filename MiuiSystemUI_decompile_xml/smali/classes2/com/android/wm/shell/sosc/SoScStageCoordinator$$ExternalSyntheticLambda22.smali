.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$1:Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$2:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$3:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$2:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$3:Z

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda22;->f$1:Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;

    .line 8
    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$KWSr6pGfZBX9pnMEFfBh0bItd4s(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 10
    return-void
    .line 13
.end method
