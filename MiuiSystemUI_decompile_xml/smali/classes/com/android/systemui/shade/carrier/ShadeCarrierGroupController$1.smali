.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->getSlotIndex(I)I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    const-string v2, "ShadeCarrierGroup"

    .line 11
    if-lt v0, v1, :cond_0

    .line 13
    const-string/jumbo p0, "setMobileDataIndicators - slot: "

    .line 15
    invoke-static {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    return-void

    .line 21
    :cond_0
    const/4 v1, -0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    const-string v0, "Invalid SIM slot index for subscription: "

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 45
    new-instance v8, Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 47
    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 49
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 51
    iget v3, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    .line 53
    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    .line 55
    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 57
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 62
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    .line 63
    move-object v2, v8

    .line 65
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shade/carrier/CellSignalState;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 66
    aput-object v8, v1, v0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    .line 71
    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
    .line 81
.end method

.method public final setNoSims(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    move p2, p1

    .line 7
    :goto_0
    const/4 v0, 0x3

    .line 8
    if-ge p2, v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 11
    aget-object v1, v0, p2

    .line 13
    invoke-virtual {v1, p1}, Lcom/android/systemui/shade/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 15
    move-result-object v1

    .line 18
    aput-object v1, v0, p2

    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    .line 24
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    return-void
    .line 34
.end method
