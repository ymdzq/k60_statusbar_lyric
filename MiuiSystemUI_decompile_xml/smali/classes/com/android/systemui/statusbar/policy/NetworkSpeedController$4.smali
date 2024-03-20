.class public final Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->$r8$classId:I

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    const v3, 0x30d41

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 9
    goto/16 :goto_3

    .line 12
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 14
    packed-switch v0, :pswitch_data_1

    .line 16
    :pswitch_1
    goto/16 :goto_2

    .line 19
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    instance-of v0, p1, Ljava/lang/Long;

    .line 23
    if-eqz v0, :cond_5

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    .line 29
    check-cast p1, Ljava/lang/Long;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v1

    .line 36
    const/4 p1, 0x2

    .line 37
    new-array p1, p1, [Ljava/lang/String;

    .line 38
    long-to-float v1, v1

    .line 40
    const/high16 v2, 0x44800000    # 1024.0f

    .line 41
    div-float/2addr v1, v2

    .line 43
    const v3, 0x4479c000    # 999.0f

    .line 44
    cmpl-float v3, v1, v3

    .line 47
    if-lez v3, :cond_0

    .line 49
    div-float/2addr v1, v2

    .line 51
    const v2, 0x7f13072c    # @string/megabyte_per_second 'MB/s'

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    const v2, 0x7f130650    # @string/kilobyte_per_second 'KB/s'

    .line 56
    :goto_0
    const/high16 v3, 0x41200000    # 10.0f

    .line 59
    cmpg-float v3, v1, v3

    .line 61
    const/4 v4, 0x0

    .line 63
    if-gez v3, :cond_1

    .line 64
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    move-result-object v1

    .line 69
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    const-string v3, "%.2f"

    .line 74
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 79
    aput-object v1, p1, v4

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    const/high16 v3, 0x42c80000    # 100.0f

    .line 83
    cmpg-float v3, v1, v3

    .line 85
    if-gez v3, :cond_2

    .line 87
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    move-result-object v1

    .line 92
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 96
    const-string v3, "%.1f"

    .line 97
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 102
    aput-object v1, p1, v4

    .line 103
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object v1

    .line 109
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 113
    const-string v3, "%.0f"

    .line 114
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 119
    aput-object v1, p1, v4

    .line 120
    :goto_1
    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    aput-object v0, p1, v1

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateText([Ljava/lang/String;)V

    .line 129
    goto :goto_2

    .line 132
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 135
    if-eqz v0, :cond_5

    .line 137
    check-cast p1, Ljava/lang/Boolean;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    move-result p1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 145
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    .line 147
    if-eq v4, p1, :cond_5

    .line 149
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateVisibility()V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 158
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 162
    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    goto :goto_2

    .line 172
    :cond_3
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    goto :goto_2

    .line 176
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 179
    if-eqz v0, :cond_5

    .line 181
    check-cast p1, Ljava/lang/Boolean;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    move-result p1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 189
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    .line 191
    if-eq p1, v4, :cond_5

    .line 193
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    .line 195
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateVisibility()V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 200
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 202
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 206
    if-eqz p1, :cond_4

    .line 208
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    goto :goto_2

    .line 216
    :cond_4
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_5
    :goto_2
    return-void

    .line 220
    :goto_3
    iget p1, p1, Landroid/os/Message;->what:I

    .line 221
    if-eq p1, v3, :cond_6

    .line 223
    goto :goto_4

    .line 225
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 226
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 228
    const v0, 0x186a4

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 233
    move-result-object p1

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    move-result-wide v4

    .line 240
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 241
    move-result-wide v6

    .line 244
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 245
    move-result-wide v8

    .line 248
    add-long/2addr v8, v6

    .line 249
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    .line 250
    cmp-long v0, v6, v1

    .line 252
    if-eqz v0, :cond_7

    .line 254
    cmp-long v0, v4, v6

    .line 256
    if-lez v0, :cond_7

    .line 258
    iget-wide v10, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    .line 260
    cmp-long v0, v10, v1

    .line 262
    if-eqz v0, :cond_7

    .line 264
    cmp-long v0, v8, v1

    .line 266
    if-eqz v0, :cond_7

    .line 268
    cmp-long v0, v8, v10

    .line 270
    if-lez v0, :cond_7

    .line 272
    sub-long v0, v8, v10

    .line 274
    const-wide/16 v10, 0x3e8

    .line 276
    mul-long/2addr v0, v10

    .line 278
    sub-long v6, v4, v6

    .line 279
    div-long v1, v0, v6

    .line 281
    :cond_7
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    .line 283
    iput-wide v8, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    .line 285
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 287
    move-result-object v0

    .line 290
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 296
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    const-wide/16 v0, 0xfa0

    .line 301
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    :goto_4
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x186a1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
    .line 314
.end method
