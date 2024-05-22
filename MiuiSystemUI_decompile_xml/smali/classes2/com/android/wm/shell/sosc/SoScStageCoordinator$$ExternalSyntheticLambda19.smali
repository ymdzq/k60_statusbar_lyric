.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;
.implements Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    .line 2
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;->f$1:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onConsumed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;

    .line 4
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;->f$1:I

    .line 6
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;->$r8$lambda$tWzNT6TWfFbgV6lDxfIZ5w8kLFA(Lcom/android/wm/shell/sosc/SoScStageCoordinator$StageListenerImpl;IZ)V

    .line 8
    return-void
    .line 11
.end method

.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda19;->f$1:I

    .line 6
    invoke-static {v0, p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$bZg-tzAXQgIg84apxdQ4EYuVa_U(Lcom/android/wm/shell/sosc/SoScStageCoordinator;ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 8
    return-void
    .line 11
.end method
