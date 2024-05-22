.class public final Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 11
    const/16 v1, 0x11

    .line 12
    const/16 v2, 0x12

    .line 14
    const-string/jumbo v3, "wifi_state"

    .line 16
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    const-string v6, ", "

    .line 21
    const-string v7, "SlaveWifiHelper"

    .line 23
    sparse-switch v0, :sswitch_data_0

    .line 25
    goto/16 :goto_3

    .line 28
    :sswitch_0
    const-string v0, "android.net.wifi.AML_NETWORK_SLAVE_STATE_CHANGE"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    goto/16 :goto_3

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 40
    const-string v0, "isConnected"

    .line 42
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 44
    move-result p2

    .line 47
    iput-boolean p2, p1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 48
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 50
    invoke-static {p1}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->access$setSlaveWifiConnected(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;)V

    .line 52
    sget-boolean p1, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 55
    if-eqz p1, :cond_7

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 59
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 61
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    const-string v0, "AML_NETWORK_SLAVE_STATE_CHANGED_ACTION: "

    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    goto/16 :goto_3

    .line 88
    :sswitch_1
    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p1

    .line 95
    if-nez p1, :cond_1

    .line 96
    goto/16 :goto_3

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 105
    move-result p2

    .line 108
    if-ne p2, v1, :cond_2

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    move v4, v5

    .line 112
    :goto_0
    iput-boolean v4, p1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiEnabled:Z

    .line 113
    sget-boolean p1, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 115
    if-eqz p1, :cond_7

    .line 117
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 119
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiEnabled:Z

    .line 121
    const-string p1, "WIFI_SLAVE_STATE_CHANGED_ACTION: "

    .line 123
    invoke-static {p1, p0, v7}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 125
    goto/16 :goto_3

    .line 128
    :sswitch_2
    const-string v0, "android.net.wifi.AML_WIFI_SLAVE_STATE_CHANGE"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result p1

    .line 135
    if-nez p1, :cond_3

    .line 136
    goto :goto_3

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 144
    move-result p2

    .line 147
    if-ne p2, v1, :cond_4

    .line 148
    goto :goto_1

    .line 150
    :cond_4
    move v4, v5

    .line 151
    :goto_1
    iput-boolean v4, p1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiEnabled:Z

    .line 152
    sget-boolean p1, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 154
    if-eqz p1, :cond_7

    .line 156
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 158
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiEnabled:Z

    .line 160
    const-string p1, "AML_WIFI_SLAVE_STATE_CHANGED_ACTION: "

    .line 162
    invoke-static {p1, p0, v7}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 164
    goto :goto_3

    .line 167
    :sswitch_3
    const-string v0, "android.net.wifi.SLAVE_STATE_CHANGE"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result p1

    .line 173
    if-nez p1, :cond_5

    .line 174
    goto :goto_3

    .line 176
    :cond_5
    const-string p1, "networkInfo"

    .line 177
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 179
    move-result-object p1

    .line 182
    check-cast p1, Landroid/net/NetworkInfo;

    .line 183
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 185
    if-eqz p1, :cond_6

    .line 187
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 189
    move-result p1

    .line 192
    if-eqz p1, :cond_6

    .line 193
    goto :goto_2

    .line 195
    :cond_6
    move v4, v5

    .line 196
    :goto_2
    iput-boolean v4, p2, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 197
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 199
    invoke-static {p1}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->access$setSlaveWifiConnected(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;)V

    .line 201
    sget-boolean p1, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    .line 204
    if-eqz p1, :cond_7

    .line 206
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 208
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 210
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    .line 214
    const-string v0, "NETWORK_SLAVE_STATE_CHANGED_ACTION: "

    .line 216
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p0

    .line 233
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_7
    :goto_3
    return-void

    .line 237
    :sswitch_data_0
    .sparse-switch
        -0x62333411 -> :sswitch_3
        -0x3f8e4478 -> :sswitch_2
        -0x36281783 -> :sswitch_1
        0x7500663f -> :sswitch_0
    .end sparse-switch
    .line 238
.end method
