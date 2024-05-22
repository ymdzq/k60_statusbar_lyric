.class public final Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

.field public final synthetic val$airplane:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->val$airplane:Z

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
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->val$airplane:Z

    .line 10
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mAirplane:Z

    .line 12
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 20
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;->val$airplane:Z

    .line 22
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnly:Z

    .line 24
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
