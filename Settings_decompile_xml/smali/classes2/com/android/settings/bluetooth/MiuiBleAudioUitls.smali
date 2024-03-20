.class public final Lcom/android/settings/bluetooth/MiuiBleAudioUitls;
.super Ljava/lang/Object;
.source "MiuiBleAudioUitls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;,
        Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHintDialog(Landroid/app/Activity;BIILcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 360
    sget p3, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_default_fail:I

    .line 361
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_default_fail_unknwon:I

    goto :goto_1

    .line 356
    :pswitch_0
    sget p3, Lcom/android/settings/R$string;->bluetooth_ble_audio_stop_synchronize_title:I

    .line 357
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_stop_synchronize_message:I

    goto :goto_1

    .line 352
    :pswitch_1
    sget p3, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_remove_confirm:I

    .line 353
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_remove_confirm_content:I

    goto :goto_1

    .line 348
    :pswitch_2
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_remove_fail:I

    .line 349
    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getCallbackStatusString(I)I

    move-result p3

    goto :goto_0

    .line 344
    :pswitch_3
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_update_pin_fail:I

    .line 345
    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getCallbackStatusString(I)I

    move-result p3

    goto :goto_0

    .line 340
    :pswitch_4
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_update_fail:I

    .line 341
    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getCallbackStatusString(I)I

    move-result p3

    goto :goto_0

    .line 336
    :pswitch_5
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_add_fail:I

    .line 337
    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getCallbackStatusString(I)I

    move-result p3

    goto :goto_0

    .line 332
    :pswitch_6
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_select_fail:I

    .line 333
    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getCallbackStatusString(I)I

    move-result p3

    :goto_0
    move v2, v0

    move v0, p3

    move p3, v2

    .line 365
    :goto_1
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x1

    .line 367
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 369
    new-instance p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;

    invoke-direct {p0, p4, p1, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;BI)V

    const p3, 0x104000a    # @android:string/ok

    invoke-virtual {v1, p3, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 378
    new-instance p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$2;

    invoke-direct {p0, p4, p1, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$2;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;BI)V

    const/high16 p1, 0x1040000    # @android:string/cancel

    invoke-virtual {v1, p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 397
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v2, Lcom/android/settings/R$layout;->ble_audio_password_dialog:I

    invoke-virtual {p0, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 399
    sget v0, Lcom/android/settings/R$id;->ble_audio_password:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 401
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 402
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v3, 0x0

    .line 403
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    if-nez p1, :cond_1

    .line 405
    sget p1, Lcom/android/settings/R$string;->bluetooth_share_broadcast_update:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 407
    :cond_1
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getTitleFromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 410
    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 412
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_connect:I

    new-instance p1, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$3;

    invoke-direct {p1, v0, p3, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$3;-><init>(Landroid/widget/EditText;Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;B)V

    invoke-virtual {v1, p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 427
    new-instance p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;

    invoke-direct {p0, p3, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;B)V

    const/high16 p1, 0x1040000    # @android:string/cancel

    invoke-virtual {v1, p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioSyncStatusString(I)I
    .locals 2

    .line 171
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_audio_sync_unknown:I

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const v1, 0xffff

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_audio_sync_invalid:I

    goto :goto_0

    .line 180
    :cond_1
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_audio_sync_in_sync:I

    goto :goto_0

    .line 177
    :cond_2
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_audio_sync_not_sync:I

    :goto_0
    return v0
.end method

.method public static getCallbackStatusString(I)I
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 225
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_fail:I

    goto :goto_0

    .line 219
    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_no_empty_solt:I

    goto :goto_0

    .line 216
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_duplicate_addition:I

    goto :goto_0

    .line 213
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_source_unavailable:I

    goto :goto_0

    .line 210
    :pswitch_3
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_invalid_source_select:I

    goto :goto_0

    .line 207
    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_colocated_src_unavailable:I

    goto :goto_0

    .line 204
    :pswitch_5
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_invalid_source_id:I

    goto :goto_0

    .line 201
    :pswitch_6
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_txn_timeout:I

    goto :goto_0

    .line 198
    :pswitch_7
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_fatal:I

    goto :goto_0

    .line 195
    :pswitch_8
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_fail:I

    goto :goto_0

    .line 192
    :pswitch_9
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_success:I

    goto :goto_0

    .line 222
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_ble_audio_callback_invalid_group_op:I

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEncryptionStatusString(I)I
    .locals 2

    .line 122
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_broadcast_code_unkonwn:I

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const v1, 0xffff

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_broadcast_code_invalid:I

    goto :goto_0

    .line 137
    :cond_1
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_broadcast_code_incorrect:I

    goto :goto_0

    .line 134
    :cond_2
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_broadcast_code_correct:I

    goto :goto_0

    .line 131
    :cond_3
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_broadcast_code_need_add:I

    goto :goto_0

    .line 128
    :cond_4
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_broadcast_code_not_encrypted:I

    :goto_0
    return v0
.end method

.method public static getMetadataSyncStatusString(I)I
    .locals 2

    .line 145
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_unknown:I

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const v1, 0xffff

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_invad:I

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_no_past:I

    goto :goto_0

    .line 163
    :cond_2
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_fail:I

    goto :goto_0

    .line 154
    :cond_3
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_in_sync:I

    goto :goto_0

    .line 160
    :cond_4
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_syncinfo_need:I

    goto :goto_0

    .line 148
    :cond_5
    sget v0, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_pa_sync_idel:I

    :goto_0
    return v0
.end method

.method public static getSyncState(Landroid/bluetooth/BleBroadcastSourceInfo;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v1

    .line 271
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-ne p0, v2, :cond_1

    return v2

    :cond_1
    if-ne v1, v3, :cond_2

    if-eq p0, v2, :cond_2

    return v3

    :cond_2
    if-eq v1, v3, :cond_3

    if-ne p0, v2, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public static getTitleFromBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    .line 247
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "NULL DEVICE"

    return-object p0

    .line 251
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->isLocalDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_1

    .line 259
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static isLocalDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 234
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSynchronized(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .locals 7

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isSynchronized srcInfo is null return !"

    .line 296
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "Metadata Synced"

    move v3, v4

    goto :goto_0

    :cond_1
    const-string v2, "Metadata not synced"

    move v3, v1

    .line 308
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result p0

    if-ne p0, v4, :cond_2

    const-string p0, "Audio Synced"

    move v5, v4

    goto :goto_1

    :cond_2
    const-string p0, "Audio not synced"

    move v5, v1

    .line 315
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method
