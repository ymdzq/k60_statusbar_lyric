.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;->f$1:Z

    .line 4
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda14;->f$2:Z

    .line 6
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$w_f3BU-T4pZr-fX6G9BZiZlSGkQ(Lcom/android/wm/shell/sosc/SoScStageCoordinator;ZZ)V

    .line 8
    return-void
    .line 11
.end method
