.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;->f$1:Landroid/window/WindowContainerTransaction;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onConsumed(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;->f$1:Landroid/window/WindowContainerTransaction;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;->f$2:Z

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 6
    invoke-static {p0, v0, v1, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$isHnxLeDXd00E23ZlZxX5GRXR10(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;ZZ)V

    .line 8
    return-void
    .line 11
.end method
