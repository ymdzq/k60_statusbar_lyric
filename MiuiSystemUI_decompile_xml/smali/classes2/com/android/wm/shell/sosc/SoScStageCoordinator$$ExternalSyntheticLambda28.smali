.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->f$1:Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->f$1:Landroid/window/WindowContainerTransaction;

    .line 10
    invoke-static {v0, p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$BMttxXvrrA703GnwRRbvLTHVVkc(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda28;->f$1:Landroid/window/WindowContainerTransaction;

    .line 18
    invoke-static {v0, p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$C8IwaDuYLCwgHt2bqeM7Qn4VSaE(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/window/WindowContainerTransaction;)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
