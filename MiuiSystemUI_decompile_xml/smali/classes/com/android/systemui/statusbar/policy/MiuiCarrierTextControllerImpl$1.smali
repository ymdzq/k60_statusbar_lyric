.class public final Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierText()V

    .line 10
    return-void

    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 15
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mRealCarrier:[Ljava/lang/String;

    .line 17
    array-length v2, v2

    .line 19
    if-ge v0, v2, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "mDelayCarrierText expired,mSignalOptimization: "

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 29
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSignalOptimization:[Z

    .line 31
    aget-boolean v2, v2, v0

    .line 33
    const-string v3, "MiuiCarrierTextController"

    .line 35
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 40
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSignalOptimization:[Z

    .line 42
    aget-boolean v2, v2, v0

    .line 44
    if-nez v2, :cond_0

    .line 46
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 48
    array-length v3, v2

    .line 50
    if-le v3, v0, :cond_0

    .line 51
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mRealCarrier:[Ljava/lang/String;

    .line 53
    aget-object v1, v1, v0

    .line 55
    aput-object v1, v2, v0

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    iget-object p0, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 64
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
