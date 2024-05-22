.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 12
    const/4 v2, -0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 20
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 21
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 26
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    move-result p2

    .line 32
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 33
    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 37
    const-string v2, "onReceive VOLUME_CHANGED_ACTION stream="

    .line 39
    const-string v3, " level="

    .line 41
    const-string v4, " oldLevel="

    .line 43
    invoke-static {v2, p1, v3, v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v2

    .line 48
    invoke-static {v2, p2, v1}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 52
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 54
    move-result p1

    .line 57
    goto/16 :goto_2

    .line 58
    :cond_1
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    move-result p1

    .line 72
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 73
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    move-result v0

    .line 78
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 79
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    move-result p2

    .line 84
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 85
    if-eqz v1, :cond_2

    .line 87
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 89
    const-string v2, "onReceive STREAM_DEVICES_CHANGED_ACTION stream="

    .line 91
    const-string v4, " devices="

    .line 93
    const-string v5, " oldDevices="

    .line 95
    invoke-static {v2, p1, v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object v0

    .line 100
    invoke-static {v0, p2, v1}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 104
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 106
    move-result p2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 110
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 112
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 114
    move-result v1

    .line 117
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 118
    move-result-object v0

    .line 121
    iget v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 122
    if-ne v2, v1, :cond_3

    .line 124
    move v0, v3

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iput v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 128
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    .line 130
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v0

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v1

    .line 143
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 147
    const/16 v1, 0x17

    .line 148
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 150
    :cond_4
    const/4 v0, 0x1

    .line 153
    :goto_0
    or-int/2addr p2, v0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 155
    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    .line 157
    move-result p1

    .line 160
    or-int/2addr p1, p2

    .line 161
    goto/16 :goto_2

    .line 162
    :cond_5
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v0

    .line 169
    if-eqz v0, :cond_7

    .line 170
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 172
    move-result p1

    .line 175
    const-string v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 176
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 178
    move-result p2

    .line 181
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 182
    if-eqz v0, :cond_6

    .line 184
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    const-string v2, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    .line 190
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, " muted="

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 213
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    .line 215
    move-result p1

    .line 218
    goto/16 :goto_2

    .line 219
    :cond_7
    const-string p2, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result p2

    .line 226
    if-eqz p2, :cond_9

    .line 227
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 229
    if-eqz p1, :cond_8

    .line 231
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 233
    const-string p2, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 235
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 240
    iget-object p2, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 242
    invoke-virtual {p2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    .line 244
    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 248
    move-result p1

    .line 251
    goto :goto_2

    .line 252
    :cond_9
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result p2

    .line 258
    if-eqz p2, :cond_b

    .line 259
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 261
    if-eqz p1, :cond_a

    .line 263
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 265
    const-string p2, "onReceive ACTION_CONFIGURATION_CHANGED"

    .line 267
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 272
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    .line 276
    goto :goto_1

    .line 279
    :cond_b
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 280
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    move-result p2

    .line 285
    if-eqz p2, :cond_d

    .line 286
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 288
    if-eqz p1, :cond_c

    .line 290
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 292
    const-string p2, "onReceive ACTION_SCREEN_OFF"

    .line 294
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 299
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 301
    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onScreenOff()V

    .line 303
    goto :goto_1

    .line 306
    :cond_d
    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result p1

    .line 312
    if-eqz p1, :cond_f

    .line 313
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 315
    if-eqz p1, :cond_e

    .line 317
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 319
    const-string p2, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    .line 321
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 326
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 328
    const/4 p2, 0x2

    .line 330
    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    .line 331
    :cond_f
    :goto_1
    move p1, v3

    .line 334
    :goto_2
    if-eqz p1, :cond_10

    .line 335
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 337
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 339
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 341
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 343
    :cond_10
    return-void
    .line 346
.end method
