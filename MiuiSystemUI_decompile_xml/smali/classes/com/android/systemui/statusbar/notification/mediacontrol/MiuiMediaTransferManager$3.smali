.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$3;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 23
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 25
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 28
    :cond_0
    monitor-exit p0

    .line 30
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1

    .line 35
    :cond_1
    move v0, v2

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    goto/16 :goto_5

    .line 39
    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 46
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_9

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    .line 57
    instance-of v3, v0, Lcom/android/settingslib/media/PhoneMediaDevice;

    .line 59
    if-eqz v3, :cond_8

    .line 61
    :try_start_1
    const-string v3, "mRouteInfo"

    .line 63
    const-class v4, Landroid/media/MediaRoute2Info;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object v4

    .line 70
    :goto_1
    if-eqz v4, :cond_6

    .line 71
    const-class v5, Ljava/lang/Object;

    .line 73
    if-eq v4, v5, :cond_6

    .line 75
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 77
    move-result-object v5

    .line 80
    array-length v6, v5

    .line 81
    move v7, v2

    .line 82
    :goto_2
    if-ge v7, v6, :cond_5

    .line 83
    aget-object v8, v5, v7

    .line 85
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 90
    move-result-object v9

    .line 93
    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    move-result v9

    .line 97
    if-eqz v9, :cond_4

    .line 98
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 105
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 108
    move-result-object v4

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const/4 v0, 0x0

    .line 113
    :goto_3
    check-cast v0, Landroid/media/MediaRoute2Info;

    .line 114
    if-eqz v0, :cond_8

    .line 116
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 118
    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 126
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 129
    if-eqz v0, :cond_7

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 133
    if-eqz v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 137
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 139
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 142
    :cond_7
    monitor-exit p0

    .line 144
    move v0, v1

    .line 145
    goto :goto_4

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 151
    const-string v0, "MiuiMediaTransferManager"

    .line 154
    const-string v3, "Can\'t find phone name!"

    .line 156
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_8
    move v0, v2

    .line 161
    :goto_4
    if-eqz v0, :cond_3

    .line 162
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 164
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 166
    move-result-object p1

    .line 169
    if-eqz p1, :cond_f

    .line 170
    instance-of v0, p1, Lcom/android/settingslib/media/PhoneMediaDevice;

    .line 172
    if-eqz v0, :cond_c

    .line 174
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result p1

    .line 181
    if-nez p1, :cond_b

    .line 182
    monitor-enter p0

    .line 184
    :try_start_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 185
    if-eqz p1, :cond_a

    .line 187
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 189
    if-eqz p1, :cond_a

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 193
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 195
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 198
    :cond_a
    monitor-exit p0

    .line 200
    goto :goto_6

    .line 201
    :catchall_2
    move-exception p1

    .line 202
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 203
    throw p1

    .line 204
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->updateAllChips()V

    .line 205
    goto :goto_8

    .line 208
    :cond_c
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 209
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mPhoneRouteName:Ljava/lang/String;

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    move-result p1

    .line 217
    if-nez p1, :cond_e

    .line 218
    monitor-enter p0

    .line 220
    :try_start_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 221
    if-eqz p1, :cond_d

    .line 223
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 225
    if-eqz p1, :cond_d

    .line 227
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 229
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 231
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->isLocalMediaManagerScaning:Z

    .line 234
    :cond_d
    monitor-exit p0

    .line 236
    goto :goto_7

    .line 237
    :catchall_3
    move-exception p1

    .line 238
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 239
    throw p1

    .line 240
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->updateAllChips()V

    .line 241
    :cond_f
    :goto_8
    return-void
    .line 244
.end method
