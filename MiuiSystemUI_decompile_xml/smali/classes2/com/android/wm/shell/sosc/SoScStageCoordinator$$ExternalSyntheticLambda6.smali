.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 8
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$AaOhmXqBR2ZT594hSIRkeKM58UQ(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 16
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 18
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$95Os1ajM4ID1PgmgE6S9L_fxmMk(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 20
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onFoldedStateChanged(Z)V

    .line 32
    return-void

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 36
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 38
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$1-niYPKOSvgqsn2l5poRThIrTjI(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 40
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method
