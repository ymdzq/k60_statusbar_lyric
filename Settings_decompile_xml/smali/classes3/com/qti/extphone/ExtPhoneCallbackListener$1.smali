.class Lcom/qti/extphone/ExtPhoneCallbackListener$1;
.super Landroid/os/Handler;
.source "ExtPhoneCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/extphone/ExtPhoneCallbackListener;->init(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;


# direct methods
.method constructor <init>(Lcom/qti/extphone/ExtPhoneCallbackListener;Landroid/os/Looper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "handleMessage"

    const-string v1, "ExtPhoneCallbackListener"

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " what=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 535
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "default : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    :pswitch_1
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 527
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiPersoUnlockStatus;

    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onSimPersoUnlockStatusChange(ILcom/qti/extphone/QtiPersoUnlockStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_SIM_PERSO_UNLOCK_STATUS_CHANGE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    :pswitch_2
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 517
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/DualDataRecommendation;

    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onDualDataRecommendation(Lcom/qti/extphone/DualDataRecommendation;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_DUAL_DATA_RECOMMENDATION : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 504
    :pswitch_3
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 506
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p0

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_DUAL_DATA_USER_PREFERENCE_RESPONSE :Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 494
    :pswitch_4
    :try_start_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 496
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 497
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 496
    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p0

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_DUAL_DATA_CAPABILITY_CHANGED : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 484
    :pswitch_5
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 486
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception p0

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_STOP_NETWORK_SCAN_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 474
    :pswitch_6
    :try_start_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 476
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->startNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception p0

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_START_NETWORK_SCAN_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :pswitch_7
    :try_start_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 465
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 466
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 465
    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setSmartDdsSwitchToggleResponse(Lcom/qti/extphone/Token;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception p0

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_SMART_DDS_SWITCH_TOGGLE_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    :pswitch_8
    :try_start_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 455
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception p0

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_SIM_TYPE_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :pswitch_9
    :try_start_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 444
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception p0

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_NETWORK_SELECTION_MODE_MANUAL_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 431
    :pswitch_a
    :try_start_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 433
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception p0

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_NETWORK_SELECTION_MODE_AUTOMATIC_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 421
    :pswitch_b
    :try_start_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 423
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception p0

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_MSIM_PREFERENCE_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    :pswitch_c
    :try_start_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 411
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QRadioResponseInfo;

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/QRadioResponseInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception p0

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SET_CARRIER_INFO_FOR_IMSI_ENCRYPTION_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    :pswitch_d
    :try_start_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 401
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/SmsResult;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception p0

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SEND_CDMA_SMS_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    :pswitch_e
    :try_start_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 390
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, [Lcom/qti/extphone/QtiCallForwardInfo;

    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->queryCallForwardStatusResponse(Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception p0

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_QUERY_CALL_FORWARD_STATUS_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    :pswitch_f
    :try_start_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 379
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/UpperLayerIndInfo;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception p0

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_UPPER_LAYER_IND_INFO : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 367
    :pswitch_10
    :try_start_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 369
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, [Lcom/qti/extphone/QtiSimType;

    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onSimTypeChanged([Lcom/qti/extphone/QtiSimType;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    :catch_f
    move-exception p0

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_SIM_TYPE_CHANGED : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    :pswitch_11
    :try_start_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 359
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/SignalStrength;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception p0

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_SIGNAL_STRENGTH : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :pswitch_12
    :try_start_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 349
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    :catch_11
    move-exception p0

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_SET_NR_CONFIG : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 335
    :pswitch_13
    :try_start_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 337
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    .line 338
    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_0

    :catch_12
    move-exception p0

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_SEND_USER_PREFERENCE_FOR_DATA_DURING_VOICE_CALL : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 325
    :pswitch_14
    :try_start_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 327
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onSecureModeStatusChange(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    :catch_13
    move-exception p0

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_SECURE_MODE_STATUS_CHANGE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :pswitch_15
    :try_start_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 317
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_0

    :catch_14
    move-exception p0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_QOS_PARAMETERS_CHANGED : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :pswitch_16
    :try_start_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 307
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrIconType;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_0

    :catch_15
    move-exception p0

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_NR_ICON_TYPE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :pswitch_17
    :try_start_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 297
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/DcParam;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    goto/16 :goto_0

    :catch_16
    move-exception p0

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_NR_DC_PARAM : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    :pswitch_18
    :try_start_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 287
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrConfig;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_0

    :catch_17
    move-exception p0

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_NR_CONFIG_STATUS : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    :pswitch_19
    :try_start_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 277
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, [Lcom/qti/extphone/QtiImeiInfo;

    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onImeiTypeChanged([Lcom/qti/extphone/QtiImeiInfo;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_0

    :catch_18
    move-exception p0

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_IMEI_TYPE_CHANGED : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    :pswitch_1a
    :try_start_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 266
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 267
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 266
    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onEpdgOverCellularDataSupported(IZ)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    :catch_19
    move-exception p0

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_EPDG_OVER_CELLULAR_DATA_SUPPORTED : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    :pswitch_1b
    :try_start_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 256
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 256
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto/16 :goto_0

    :catch_1a
    move-exception p0

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_ENDC_STATUS : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 244
    :pswitch_1c
    :try_start_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 246
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_0

    :catch_1b
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_ENABLE_ENDC : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :pswitch_1d
    :try_start_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 236
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onDdsSwitchRecommendation(II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto/16 :goto_0

    :catch_1c
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_DDS_SWITCH_RECOMMENDATION : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    :pswitch_1e
    :try_start_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 226
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onDdsSwitchCriteriaChange(IZ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    goto/16 :goto_0

    :catch_1d
    move-exception p0

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_DDS_SWITCH_CRITERIA_CHANGE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    :pswitch_1f
    :try_start_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 215
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 215
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto/16 :goto_0

    :catch_1e
    move-exception p0

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_DDS_SWITCH_CAPABILITY_CHANGE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    :pswitch_20
    :try_start_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 205
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 205
    invoke-virtual {p0, v0, v2, v3}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onDataDeactivateDelayTime(IJ)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto/16 :goto_0

    :catch_1f
    move-exception p0

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_DATA_DEACTIVATE_DELAY_TIME : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    :pswitch_21
    :try_start_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 194
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    goto/16 :goto_0

    :catch_20
    move-exception p0

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_ANY_NR_BEARER_ALLOCATION : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :pswitch_22
    :try_start_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 184
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 184
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->on5gStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    goto/16 :goto_0

    :catch_21
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_5G_STATUS : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :pswitch_23
    :try_start_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 174
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrConfigType;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    goto/16 :goto_0

    :catch_22
    move-exception p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_ON_5G_CONFIG_INFO : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    :pswitch_24
    :try_start_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 163
    iget-object v2, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v4, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    .line 164
    invoke-virtual {p0}, Lcom/qti/extphone/Status;->get()I

    move-result v5

    iget v6, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mError:I

    iget-object p0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/util/List;

    .line 163
    invoke-virtual/range {v2 .. v7}, Lcom/qti/extphone/ExtPhoneCallbackListener;->networkScanResult(ILcom/qti/extphone/Token;IILjava/util/List;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    goto/16 :goto_0

    :catch_23
    move-exception p0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_NETWORK_SCAN_RESULT : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :pswitch_25
    :try_start_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 153
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 153
    invoke-virtual {p0, v0, v2, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    goto/16 :goto_0

    :catch_24
    move-exception p0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_SECURE_MODE_STATUS_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
    :pswitch_26
    :try_start_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 142
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 142
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    goto/16 :goto_0

    :catch_25
    move-exception p0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_QTIRADIO_CAPABILITY_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    :pswitch_27
    :try_start_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 131
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_0

    :catch_26
    move-exception p0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_QOS_PARAMETERS_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :pswitch_28
    :try_start_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 119
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mSlotId:I

    iget-object v2, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NetworkSelectionMode;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_0

    :catch_27
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_NETWORK_SELECTION_MODE_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_29
    :try_start_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    .line 108
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$1;->this$0:Lcom/qti/extphone/ExtPhoneCallbackListener;

    iget-object v0, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;->mData:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {p0, v0, p1}, Lcom/qti/extphone/ExtPhoneCallbackListener;->getFacilityLockForAppResponse(Lcom/qti/extphone/Status;[I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_0

    :catch_28
    move-exception p0

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_FACILITY_LOCK_FOR_APP_RESPONSE : Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
