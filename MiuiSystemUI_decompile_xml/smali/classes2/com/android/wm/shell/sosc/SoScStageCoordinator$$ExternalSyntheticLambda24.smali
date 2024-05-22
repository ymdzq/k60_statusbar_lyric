.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$1:I

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$2:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$3:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$4:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$1:I

    .line 4
    iget-boolean v2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$2:Z

    .line 6
    iget-boolean v3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$3:Z

    .line 8
    iget-boolean v4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda24;->f$4:Z

    .line 10
    move-object v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$mEunXN5LwCI_aCyYYQ7WIfTIdGY(Lcom/android/wm/shell/sosc/SoScStageCoordinator;IZZZLandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    return-void
    .line 17
.end method
