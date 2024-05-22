.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Z

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
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 8
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$uiCOiBDn3K_2tpV-AKsadp_4Jvk(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 16
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 18
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$uaFQQss8IJWAOxt_tTjrxCBtNdo(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
