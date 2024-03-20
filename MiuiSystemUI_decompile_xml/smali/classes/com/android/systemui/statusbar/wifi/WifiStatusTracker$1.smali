.class public final Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 3
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    invoke-static {p2}, Lcom/android/settingslib/Utils;->tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    .line 11
    move-result-object v1

    .line 14
    goto/16 :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 27
    iget-object v4, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    .line 36
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    iget-object v5, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 43
    iget v6, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiNetwork:I

    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v6

    .line 50
    check-cast v5, Ljava/util/HashSet;

    .line 51
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    iget v6, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiNetwork:I

    .line 59
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 61
    move-result v7

    .line 64
    if-eq v6, v7, :cond_2

    .line 65
    iget-object v6, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 67
    if-eqz v6, :cond_2

    .line 69
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 74
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 78
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v6

    .line 82
    if-eqz v6, :cond_2

    .line 83
    iget-object v6, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 85
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 87
    move-result v6

    .line 90
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 91
    move-result v7

    .line 94
    if-ne v6, v7, :cond_2

    .line 95
    move v6, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move v6, v0

    .line 99
    :goto_0
    if-eqz v6, :cond_3

    .line 100
    iget v6, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiNetwork:I

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    iput-object v1, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 111
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 113
    move-result v5

    .line 116
    iput v5, v4, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiNetwork:I

    .line 117
    goto :goto_1

    .line 119
    :cond_4
    move-object v1, v3

    .line 120
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    sget-object v5, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    move-result-wide v6

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    move-result-object v6

    .line 135
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object v5

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v5, ",onCapabilitiesChanged: network="

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const-string v5, ",networkCapabilities="

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v5, "wifiInfo="

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 171
    iget-object v5, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 172
    iget v6, v5, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 174
    iget-object v7, v5, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 176
    aput-object v4, v7, v6

    .line 178
    add-int/2addr v6, v2

    .line 180
    rem-int/lit8 v6, v6, 0x20

    .line 181
    iput v6, v5, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 183
    if-eqz v1, :cond_a

    .line 185
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    .line 187
    move-result v4

    .line 190
    if-nez v4, :cond_6

    .line 191
    goto :goto_2

    .line 193
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 194
    iget-object v3, v3, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 196
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 198
    move-result v4

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v4

    .line 205
    check-cast v3, Ljava/util/HashSet;

    .line 206
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 208
    move-result v3

    .line 211
    if-nez v3, :cond_7

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 214
    iget-object v3, v3, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 216
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 218
    move-result p1

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object p1

    .line 225
    check-cast v3, Ljava/util/HashSet;

    .line 226
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 231
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 236
    const/16 v1, 0x10

    .line 238
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 240
    move-result v1

    .line 243
    if-nez v1, :cond_8

    .line 244
    const/16 v1, 0x18

    .line 246
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 248
    move-result p2

    .line 251
    if-eqz p2, :cond_9

    .line 252
    :cond_8
    move v0, v2

    .line 254
    :cond_9
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->validate:Z

    .line 255
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    .line 264
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 266
    return-void

    .line 269
    :cond_a
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 270
    iget-object p2, p2, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 272
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 274
    move-result v1

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    move-result-object v1

    .line 281
    check-cast p2, Ljava/util/HashSet;

    .line 282
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 284
    move-result p2

    .line 287
    if-eqz p2, :cond_b

    .line 288
    iget-object p2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 290
    iget-object p2, p2, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 292
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 294
    move-result p1

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    move-result-object p1

    .line 301
    check-cast p2, Ljava/util/HashSet;

    .line 302
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 307
    iget-object p1, p1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 309
    check-cast p1, Ljava/util/HashSet;

    .line 311
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 313
    move-result p1

    .line 316
    if-eqz p1, :cond_b

    .line 317
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 319
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 324
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->validate:Z

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    .line 328
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 330
    :cond_b
    return-void
    .line 333
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

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
    const-string v1, ",onLost: network="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 36
    iget v2, v1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 38
    iget-object v3, v1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 40
    aput-object v0, v3, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    rem-int/lit8 v2, v2, 0x20

    .line 46
    iput v2, v1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 48
    iget-object v0, v1, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 50
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 52
    move-result v1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 59
    check-cast v0, Ljava/util/HashSet;

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 68
    iget-object v0, v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 70
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 72
    move-result p1

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 79
    check-cast v0, Ljava/util/HashSet;

    .line 80
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 85
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;->this$0:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 91
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->validate:Z

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    .line 96
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 98
    :cond_0
    return-void
    .line 101
.end method
