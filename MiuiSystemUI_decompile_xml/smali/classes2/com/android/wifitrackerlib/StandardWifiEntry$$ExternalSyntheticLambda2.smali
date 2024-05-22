.class public final synthetic Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/StandardWifiEntry;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/StandardWifiEntry;Ljava/lang/StringBuilder;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;->f$0:Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 5
    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;->f$1:Ljava/lang/StringBuilder;

    .line 7
    iput-wide p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;->f$2:J

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;->f$0:Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 2
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;->f$1:Ljava/lang/StringBuilder;

    .line 4
    iget-wide v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v4, " \n{"

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v4, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 26
    if-eqz v4, :cond_0

    .line 28
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 30
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    const-string v4, "*"

    .line 42
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    const-string v4, "="

    .line 47
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v4, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 52
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, ","

    .line 57
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v4, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 67
    move-result v4

    .line 70
    const-string v5, ","

    .line 71
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    sget v5, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 79
    const/16 v5, 0x8

    .line 81
    if-ne v4, v5, :cond_4

    .line 83
    const-string v4, ",mldMac="

    .line 85
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 90
    move-result-object v4

    .line 93
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v4, ",linkId="

    .line 97
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getApMloLinkId()I

    .line 102
    move-result v4

    .line 105
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v4, ",affLinks="

    .line 109
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v4, Ljava/util/StringJoiner;

    .line 114
    const-string v6, ","

    .line 116
    const-string v7, "["

    .line 118
    const-string v8, "]"

    .line 120
    invoke-direct {v4, v6, v7, v8}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getAffiliatedMloLinks()Ljava/util/List;

    .line 125
    move-result-object v6

    .line 128
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object v6

    .line 132
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v7

    .line 136
    if-eqz v7, :cond_3

    .line 137
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v7

    .line 142
    check-cast v7, Landroid/net/wifi/MloLink;

    .line 143
    invoke-virtual {v7}, Landroid/net/wifi/MloLink;->getBand()I

    .line 145
    move-result v8

    .line 148
    const/4 v9, 0x1

    .line 149
    if-eq v8, v9, :cond_2

    .line 150
    const/4 v9, 0x2

    .line 152
    if-eq v8, v9, :cond_2

    .line 153
    if-eq v8, v5, :cond_1

    .line 155
    const/16 v9, 0x10

    .line 157
    if-eq v8, v9, :cond_2

    .line 159
    const-string v8, "StandardWifiEntry"

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    const-string v10, "Unknown MLO link band: "

    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v7}, Landroid/net/wifi/MloLink;->getBand()I

    .line 173
    move-result v10

    .line 176
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v9

    .line 183
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v9, -0x1

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    move v9, v5

    .line 189
    :cond_2
    :goto_1
    new-instance v8, Ljava/util/StringJoiner;

    .line 190
    const-string v10, ","

    .line 192
    const-string/jumbo v11, "{"

    .line 194
    const-string/jumbo v12, "}"

    .line 197
    invoke-direct {v8, v10, v11, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 200
    new-instance v10, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string v11, "apMacAddr="

    .line 208
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v7}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    .line 213
    move-result-object v11

    .line 216
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v10

    .line 223
    invoke-virtual {v8, v10}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 224
    move-result-object v8

    .line 227
    new-instance v10, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string v11, "freq="

    .line 233
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v7}, Landroid/net/wifi/MloLink;->getChannel()I

    .line 238
    move-result v7

    .line 241
    invoke-static {v7, v9}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    .line 242
    move-result v7

    .line 245
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v7

    .line 252
    invoke-virtual {v8, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 253
    move-result-object v7

    .line 256
    invoke-virtual {v7}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 257
    move-result-object v7

    .line 260
    invoke-virtual {v4, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 261
    goto/16 :goto_0

    .line 264
    :cond_3
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 266
    move-result-object v4

    .line 269
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_4
    iget-wide v4, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 273
    const-wide/16 v6, 0x3e8

    .line 275
    div-long/2addr v4, v6

    .line 277
    sub-long/2addr v2, v4

    .line 278
    long-to-int p1, v2

    .line 279
    div-int/lit16 p1, p1, 0x3e8

    .line 280
    const-string v2, ","

    .line 282
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string p1, "s"

    .line 290
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo p1, "}"

    .line 295
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit v0

    .line 305
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    return-void

    .line 309
    :catchall_0
    move-exception p0

    .line 310
    monitor-exit v0

    .line 311
    throw p0
    .line 312
.end method
