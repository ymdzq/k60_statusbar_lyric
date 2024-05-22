.class public final Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;

.field public final synthetic val$simState:I

.field public final synthetic val$slotId:I

.field public final synthetic val$subId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$slotId:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$simState:I

    .line 6
    iput p4, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$subId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "run slotId: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$slotId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " simState: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$simState:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " subId: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$subId:I

    .line 30
    const-string v2, "MiuiCarrierTextController"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$slotId:I

    .line 37
    if-ltz v0, :cond_5

    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;

    .line 41
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 43
    iget v2, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mPhoneCount:I

    .line 45
    if-gt v0, v2, :cond_5

    .line 47
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->val$simState:I

    .line 49
    invoke-static {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    .line 51
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    if-nez v2, :cond_0

    .line 56
    goto :goto_1

    .line 58
    :cond_0
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 59
    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 61
    const/4 v5, 0x1

    .line 63
    if-nez v4, :cond_2

    .line 64
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 66
    if-eq v2, v4, :cond_1

    .line 68
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 70
    if-ne v2, v4, :cond_2

    .line 72
    :cond_1
    move v4, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v4, v3

    .line 76
    :goto_0
    if-eqz v4, :cond_3

    .line 77
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 79
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 81
    if-ne v2, v4, :cond_4

    .line 83
    goto :goto_1

    .line 85
    :cond_4
    move v3, v5

    .line 86
    :goto_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSimError:[Z

    .line 87
    aput-boolean v3, v1, v0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2$1;->this$1:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 97
    :cond_5
    return-void
    .line 100
.end method
