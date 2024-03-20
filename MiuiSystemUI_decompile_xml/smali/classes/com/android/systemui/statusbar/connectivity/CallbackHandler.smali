.class public final Lcom/android/systemui/statusbar/connectivity/CallbackHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# static fields
.field public static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mEmergencyListeners:Ljava/util/ArrayList;

.field public final mHistory:[Ljava/lang/String;

.field public mHistoryIndex:I

.field public mLastCallback:Ljava/lang/String;

.field public mNoDefaultNetwork:Z

.field public mNoNetworksAvailable:Z

.field public mNoValidatedNetwork:Z

.field public mShow:Z

.field public final mSignalCallbacks:Ljava/util/ArrayList;

.field public mSimDetected:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->SSDF:Ljava/text/SimpleDateFormat;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 17
    const/16 p1, 0x40

    .line 19
    new-array p1, p1, [Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistory:[Ljava/lang/String;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/16 v1, 0x64

    .line 4
    if-eq v0, v1, :cond_8

    .line 6
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_d

    .line 13
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 19
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mShow:Z

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSimDetected:Z

    .line 34
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setNoSims(ZZ)V

    .line 36
    goto/16 :goto_d

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 45
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    goto/16 :goto_d

    .line 50
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 52
    if-eqz v0, :cond_1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 56
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkController$EmergencyListener;

    .line 60
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto/16 :goto_d

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkController$EmergencyListener;

    .line 71
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    goto/16 :goto_d

    .line 76
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p0

    .line 83
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v0

    .line 87
    if-eqz v0, :cond_9

    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 94
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 96
    if-eqz v3, :cond_2

    .line 98
    move v3, v1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move v3, v2

    .line 102
    :goto_1
    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setMobileDataEnabled(Z)V

    .line 103
    goto :goto_0

    .line 106
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object p0

    .line 112
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 122
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 123
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 127
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V

    .line 129
    goto :goto_2

    .line 132
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object p0

    .line 138
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 148
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 149
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 153
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/connectivity/IconState;)V

    .line 155
    goto :goto_3

    .line 158
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 159
    if-eqz v0, :cond_3

    .line 161
    move v0, v1

    .line 163
    goto :goto_4

    .line 164
    :cond_3
    move v0, v2

    .line 165
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mShow:Z

    .line 166
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 168
    if-eqz v0, :cond_4

    .line 170
    move v0, v1

    .line 172
    goto :goto_5

    .line 173
    :cond_4
    move v0, v2

    .line 174
    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSimDetected:Z

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object p0

    .line 182
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 192
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 193
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 195
    if-eqz v3, :cond_5

    .line 197
    move v3, v1

    .line 199
    goto :goto_7

    .line 200
    :cond_5
    move v3, v2

    .line 201
    :goto_7
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 202
    if-eqz v4, :cond_6

    .line 204
    move v4, v1

    .line 206
    goto :goto_8

    .line 207
    :cond_6
    move v4, v2

    .line 208
    :goto_8
    invoke-interface {v0, v3, v4}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setNoSims(ZZ)V

    .line 209
    goto :goto_6

    .line 212
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object p0

    .line 218
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v0

    .line 222
    if-eqz v0, :cond_9

    .line 223
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v0

    .line 228
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 229
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    check-cast v1, Ljava/util/List;

    .line 233
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setSubs(Ljava/util/List;)V

    .line 235
    goto :goto_9

    .line 238
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    move-result-object p0

    .line 244
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v0

    .line 248
    if-eqz v0, :cond_9

    .line 249
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 254
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkController$EmergencyListener;

    .line 255
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 257
    if-eqz v3, :cond_7

    .line 259
    move v3, v1

    .line 261
    goto :goto_b

    .line 262
    :cond_7
    move v3, v2

    .line 263
    :goto_b
    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/connectivity/NetworkController$EmergencyListener;->setEmergencyCallsOnly(Z)V

    .line 264
    goto :goto_a

    .line 267
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 270
    move-result-object p0

    .line 273
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    move-result v0

    .line 277
    if-eqz v0, :cond_9

    .line 278
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    move-result-object v0

    .line 283
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    .line 284
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    check-cast v1, Ljava/lang/Integer;

    .line 288
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 290
    move-result v1

    .line 293
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setDefaultSim(I)V

    .line 294
    goto :goto_c

    .line 297
    :cond_9
    :goto_d
    return-void

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 300
.end method

.method public final recordLastCallback(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistory:[Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistoryIndex:I

    .line 4
    aput-object p1, v0, v1

    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 8
    rem-int/lit8 v1, v1, 0x40

    .line 10
    iput v1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mHistoryIndex:I

    .line 12
    return-void
    .line 14
.end method

.method public final setAllSubs(Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Ljava/lang/Object;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final setConnectivityStatus(ZZZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/connectivity/CallbackHandler;ZZZ)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    return-void
    .line 10
.end method

.method public final setDefaultSim(I)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    return-void
    .line 15
.end method

.method public final setEmergencyCallsOnly(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 3
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    return-void
    .line 10
.end method

.method public final setEthernetIndicators(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->SSDF:Ljava/text/SimpleDateFormat;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",setEthernetIndicators: icon="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->recordLastCallback(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x3

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    return-void
    .line 47
.end method

.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setIsAirplaneMode: icon="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mLastCallback:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mLastCallback:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sget-object v2, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->SSDF:Ljava/text/SimpleDateFormat;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v3

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, ","

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->recordLastCallback(Ljava/lang/String;)V

    .line 64
    :cond_0
    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 68
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
    .line 75
.end method

.method public final setMobileDataEnabled(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    return-void
    .line 11
.end method

.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->SSDF:Ljava/text/SimpleDateFormat;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ","

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->recordLastCallback(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;

    .line 39
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Ljava/lang/Object;I)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
    .line 48
.end method

.method public final setNoSims(ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 3
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    return-void
    .line 10
.end method

.method public final setSubs(Ljava/util/List;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setSubs: subs="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    if-nez p1, :cond_0

    .line 10
    const-string v1, ""

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mLastCallback:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->mLastCallback:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    sget-object v2, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->SSDF:Ljava/text/SimpleDateFormat;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v3

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ","

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->recordLastCallback(Ljava/lang/String;)V

    .line 73
    :cond_1
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    return-void
    .line 84
.end method

.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->SSDF:Ljava/text/SimpleDateFormat;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ","

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->recordLastCallback(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;

    .line 39
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Ljava/lang/Object;I)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
    .line 48
.end method
