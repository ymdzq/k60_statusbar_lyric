.class public final synthetic Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    .line 2
    check-cast p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    .line 6
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    goto/16 :goto_5

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    .line 28
    const/16 v1, 0x8

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-boolean v3, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    .line 35
    iget-object v4, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 37
    iget-object v5, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    .line 39
    const/4 v6, 0x3

    .line 41
    if-nez v3, :cond_7

    .line 42
    iget-boolean v3, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    .line 44
    if-eqz v3, :cond_7

    .line 46
    new-array v0, v6, [Z

    .line 48
    iget-object v3, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    .line 50
    array-length v7, v3

    .line 52
    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->subscriptionIds:[I

    .line 53
    array-length v8, p1

    .line 55
    const-string v9, "ShadeCarrierGroup"

    .line 56
    if-ne v7, v8, :cond_6

    .line 58
    move v7, v2

    .line 60
    :goto_0
    if-ge v7, v6, :cond_4

    .line 61
    array-length v8, v3

    .line 63
    if-ge v7, v8, :cond_4

    .line 64
    aget v8, p1, v7

    .line 66
    invoke-virtual {p0, v8}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->getSlotIndex(I)I

    .line 68
    move-result v8

    .line 71
    if-lt v8, v6, :cond_1

    .line 72
    const-string/jumbo v10, "updateInfoCarrier - slot: "

    .line 74
    invoke-static {v10, v8, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    goto :goto_1

    .line 80
    :cond_1
    const/4 v10, -0x1

    .line 81
    if-ne v8, v10, :cond_2

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    const-string v10, "Invalid SIM slot index for subscription: "

    .line 86
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    aget v10, p1, v7

    .line 91
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v8

    .line 99
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_1

    .line 103
    :cond_2
    aget-object v10, v3, v7

    .line 104
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 106
    move-result-object v10

    .line 109
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    move-result-object v10

    .line 113
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    move-result v11

    .line 117
    if-nez v11, :cond_3

    .line 118
    aget-object v11, v4, v8

    .line 120
    const/4 v12, 0x1

    .line 122
    invoke-virtual {v11, v12}, Lcom/android/systemui/shade/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 123
    move-result-object v11

    .line 126
    aput-object v11, v4, v8

    .line 127
    aput-boolean v12, v0, v8

    .line 129
    aget-object v11, v5, v8

    .line 131
    invoke-virtual {v11, v10}, Lcom/android/systemui/shade/carrier/ShadeCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 133
    aget-object v8, v5, v8

    .line 136
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    move p1, v2

    .line 144
    :goto_2
    if-ge p1, v6, :cond_9

    .line 145
    aget-boolean v3, v0, p1

    .line 147
    if-nez v3, :cond_5

    .line 149
    aget-object v3, v4, p1

    .line 151
    invoke-virtual {v3, v2}, Lcom/android/systemui/shade/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 153
    move-result-object v3

    .line 156
    aput-object v3, v4, p1

    .line 157
    aget-object v3, v5, p1

    .line 159
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 164
    goto :goto_2

    .line 166
    :cond_6
    const-string p1, "Carrier information arrays not of same length"

    .line 167
    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    goto :goto_4

    .line 172
    :cond_7
    move v3, v2

    .line 173
    :goto_3
    if-ge v3, v6, :cond_8

    .line 174
    aget-object v7, v4, v3

    .line 176
    invoke-virtual {v7, v2}, Lcom/android/systemui/shade/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/shade/carrier/CellSignalState;

    .line 178
    move-result-object v7

    .line 181
    aput-object v7, v4, v3

    .line 182
    aget-object v7, v5, v3

    .line 184
    const-string v8, ""

    .line 186
    invoke-virtual {v7, v8}, Lcom/android/systemui/shade/carrier/ShadeCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 188
    aget-object v7, v5, v3

    .line 191
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 196
    goto :goto_3

    .line 198
    :cond_8
    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    move-result p1

    .line 207
    if-nez p1, :cond_9

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->handleUpdateState()V

    .line 213
    :goto_5
    return-void
    .line 216
.end method
