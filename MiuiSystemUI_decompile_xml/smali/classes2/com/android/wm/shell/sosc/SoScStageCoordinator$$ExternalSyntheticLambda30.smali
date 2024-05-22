.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;->f$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda30;->f$1:Ljava/lang/Object;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 12
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$7H18YynKIJIYr09vZEoDECmRM3g(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    return-void

    .line 17
    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 18
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$Yxoo-ktsiAMdnjSqXXFEmLCDAYw(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V

    .line 20
    return-void

    .line 23
    :goto_0
    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    .line 24
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->$r8$lambda$kJYJmkN-hEd2oppNsnjdgm9ciVw(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 30
.end method
