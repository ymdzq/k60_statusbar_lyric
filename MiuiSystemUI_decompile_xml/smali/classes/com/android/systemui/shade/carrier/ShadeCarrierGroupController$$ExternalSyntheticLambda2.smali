.class public final synthetic Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

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
    iget v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->handleUpdateState()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    .line 16
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mSignalCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    .line 20
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 26
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasVoiceFeature:Z

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;

    .line 40
    invoke-direct {v0, v2, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;)V

    .line 42
    iget-object p0, v2, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 45
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 51
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;

    .line 59
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;)V

    .line 62
    iget-object v0, v2, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 65
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 72
.end method
