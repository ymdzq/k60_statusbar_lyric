.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter$AdapterHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    const-string p0, "bluetooth_restricte_state_change"

    .line 2
    const-string v0, "received an unkown message : "

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "received message : "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    const-string v3, "LocalBluetoothAdapter"

    .line 15
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 20
    const/16 v2, 0x14

    .line 22
    if-eq v1, v2, :cond_0

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 44
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    check-cast p1, Landroid/content/Context;

    .line 50
    if-nez p1, :cond_1

    .line 52
    const-string p0, "error: context == null"

    .line 54
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 59
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 60
    const-string v4, "android.xiaomi.bluetooth.WRITE_RESTRICT_STATE_CHANGED"

    .line 62
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v4, "com.android.bluetooth"

    .line 67
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 72
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 77
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v0, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE_WRITE"

    .line 82
    const/4 v4, 0x1

    .line 84
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const/high16 v0, 0x4000000

    .line 88
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const/high16 v0, 0x10000000

    .line 93
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 98
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    move-result-object v0

    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 108
    move-result v0

    .line 111
    const/16 v5, 0xa

    .line 112
    if-ne v1, v5, :cond_2

    .line 114
    if-eq v0, v4, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    move-result-object v5

    .line 121
    invoke-static {v5, p0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_2
    const/16 v4, 0xc

    .line 125
    if-ne v1, v4, :cond_3

    .line 127
    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 131
    move-result-object p1

    .line 134
    invoke-static {p1, p0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 138
    :catch_0
    move-exception p0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "handleMessage: Exception: "

    .line 142
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    :goto_0
    return-void
    .line 157
.end method
