.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$6:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

.field public final synthetic f$7:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$1:Landroid/window/TransitionInfo$Change;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$2:Z

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$3:Landroid/window/TransitionInfo$Change;

    .line 11
    iput-boolean p5, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$4:Z

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$5:Landroid/window/WindowContainerTransaction;

    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$6:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$7:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$1:Landroid/window/TransitionInfo$Change;

    .line 4
    iget-boolean v2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$2:Z

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$3:Landroid/window/TransitionInfo$Change;

    .line 8
    iget-boolean v4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$4:Z

    .line 10
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$5:Landroid/window/WindowContainerTransaction;

    .line 12
    iget-object v6, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$6:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda20;->f$7:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;

    .line 16
    move-object v8, p1

    .line 18
    move-object v9, p2

    .line 19
    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$BCH4r9lvdZrOox9AGVXp_ngF-G4(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 20
    return-void
    .line 23
.end method
