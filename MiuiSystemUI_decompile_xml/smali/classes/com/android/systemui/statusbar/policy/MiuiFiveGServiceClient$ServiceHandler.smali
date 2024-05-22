.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x2711

    .line 5
    if-ne v0, v2, :cond_2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mServiceConnected:Z

    .line 11
    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mServiceCallback:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mNetworkService:Lcom/qti/extphone/ExtTelephonyManager;

    .line 17
    invoke-virtual {v0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 19
    move-result p1

    .line 22
    const-string v0, "connectService success="

    .line 23
    const-string v3, " bindRetryTimes="

    .line 25
    invoke-static {v0, p1, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v0

    .line 30
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, " maxRetryTimes=10"

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    const-string v3, "connectService"

    .line 45
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p1, :cond_0

    .line 50
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 55
    const/16 v0, 0xa

    .line 57
    if-ge p1, v0, :cond_1

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 61
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 63
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 69
    mul-int/lit16 v0, v0, 0x7d0

    .line 71
    add-int/lit16 v0, v0, 0xbb8

    .line 73
    int-to-long v0, v0

    .line 75
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 81
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const/16 v2, 0x2712

    .line 86
    if-ne v0, v2, :cond_3

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 90
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->-$$Nest$minitFiveGServiceState(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V

    .line 92
    return-void

    .line 95
    :cond_3
    const/16 v2, 0x2713

    .line 96
    if-ne v0, v2, :cond_4

    .line 98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    check-cast p1, Ljava/lang/Integer;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    move-result p1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDelayUpdate5GIcon:[Z

    .line 110
    aput-boolean v1, v0, p1

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon()V

    .line 114
    return-void

    .line 117
    :cond_4
    const/16 v2, 0x2714

    .line 118
    if-ne v0, v2, :cond_5

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon()V

    .line 124
    return-void

    .line 127
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 130
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 132
    move-result-object v2

    .line 135
    if-nez v2, :cond_6

    .line 136
    return-void

    .line 138
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    .line 139
    packed-switch v3, :pswitch_data_0

    .line 141
    goto/16 :goto_4

    .line 144
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    instance-of v1, p1, Lcom/qti/extphone/NrIconType;

    .line 148
    if-eqz v1, :cond_a

    .line 150
    check-cast p1, Lcom/qti/extphone/NrIconType;

    .line 152
    invoke-virtual {p1}, Lcom/qti/extphone/NrIconType;->get()I

    .line 154
    move-result p1

    .line 157
    iput p1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 158
    goto/16 :goto_4

    .line 160
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    instance-of v1, p1, Lcom/qti/extphone/NrConfigType;

    .line 164
    if-eqz v1, :cond_a

    .line 166
    check-cast p1, Lcom/qti/extphone/NrConfigType;

    .line 168
    invoke-virtual {p1}, Lcom/qti/extphone/NrConfigType;->getNrConfigType()I

    .line 170
    move-result p1

    .line 173
    iput p1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 174
    goto/16 :goto_4

    .line 176
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    instance-of v3, p1, Lcom/qti/extphone/SignalStrength;

    .line 180
    if-eqz v3, :cond_a

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 184
    check-cast p1, Lcom/qti/extphone/SignalStrength;

    .line 186
    invoke-virtual {p1}, Lcom/qti/extphone/SignalStrength;->getRsrp()I

    .line 188
    move-result p1

    .line 191
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mGetCustomedRsrpThresholdsMethod:Ljava/lang/reflect/Method;

    .line 192
    const-string v4, "FiveGServiceClient"

    .line 194
    if-eqz v3, :cond_7

    .line 196
    :try_start_0
    new-array v5, v1, [Ljava/lang/Object;

    .line 198
    const/4 v6, 0x0

    .line 200
    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-result-object v3

    .line 204
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_1

    .line 207
    :catch_0
    move-exception v3

    .line 208
    const-string v5, "invoke getCustomedRsrpThresholds fail.\n"

    .line 209
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->RSRP_THRESH_LENIENT:[I

    .line 214
    :goto_1
    const/16 v5, -0x8c

    .line 216
    if-lt p1, v5, :cond_9

    .line 218
    const/16 v5, -0x2c

    .line 220
    if-le p1, v5, :cond_8

    .line 222
    goto :goto_3

    .line 224
    :cond_8
    array-length v1, v3

    .line 225
    :goto_2
    if-lez v1, :cond_9

    .line 226
    add-int/lit8 v5, v1, -0x1

    .line 228
    aget v6, v3, v5

    .line 230
    if-ge p1, v6, :cond_9

    .line 232
    move v1, v5

    .line 234
    goto :goto_2

    .line 235
    :cond_9
    :goto_3
    const-string v3, "getLevel: value = "

    .line 236
    const-string v5, ", level = "

    .line 238
    invoke-static {v3, p1, v5, v1, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 240
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 243
    goto :goto_4

    .line 245
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    instance-of v3, v1, Lcom/qti/extphone/UpperLayerIndInfo;

    .line 248
    if-eqz v3, :cond_a

    .line 250
    check-cast v1, Lcom/qti/extphone/UpperLayerIndInfo;

    .line 252
    invoke-virtual {v1}, Lcom/qti/extphone/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    .line 254
    move-result v1

    .line 257
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    .line 258
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    check-cast p1, Lcom/qti/extphone/UpperLayerIndInfo;

    .line 262
    invoke-virtual {p1}, Lcom/qti/extphone/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    .line 264
    move-result p1

    .line 267
    iput p1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    .line 268
    goto :goto_4

    .line 270
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    instance-of v1, p1, Lcom/qti/extphone/BearerAllocationStatus;

    .line 273
    if-eqz v1, :cond_a

    .line 275
    check-cast p1, Lcom/qti/extphone/BearerAllocationStatus;

    .line 277
    invoke-virtual {p1}, Lcom/qti/extphone/BearerAllocationStatus;->getBearerAllocationStatus()I

    .line 279
    move-result p1

    .line 282
    iput p1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 283
    goto :goto_4

    .line 285
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    instance-of v1, p1, Lcom/qti/extphone/DcParam;

    .line 288
    if-eqz v1, :cond_a

    .line 290
    check-cast p1, Lcom/qti/extphone/DcParam;

    .line 292
    invoke-virtual {p1}, Lcom/qti/extphone/DcParam;->getDcnr()I

    .line 294
    move-result p1

    .line 297
    iput p1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mDcnr:I

    .line 298
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 300
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;I)V

    .line 302
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 306
.end method
