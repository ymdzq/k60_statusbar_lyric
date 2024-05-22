.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScStageTaskListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScStageTaskListener;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/sosc/SoScStageTaskListener;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$HSg2BGEE8w4nRcVBvD5j2llmnbs(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    return-void

    .line 13
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$EjhtAjnvtAL3nAgdHXvIT13-ykg(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    return-void

    .line 17
    :goto_0
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$PSIr9Tookw9MEf_nXlD1WuA3LE4(Lcom/android/wm/shell/sosc/SoScStageTaskListener;Landroid/view/SurfaceControl$Transaction;)V

    .line 18
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 22
.end method
