.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;
.super Landroid/os/Handler;
.source "MiuiAuracastQcomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainHandler"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/os/Looper;)V
    .locals 0

    .line 191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 189
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 192
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-string v3, "mFragment is null"

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 209
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->assistant_operate_timeout:I

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fputmIsSelectBusy(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Z)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetgroupIdList(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetassistMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 216
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->unregisterAppCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetassistMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    .line 262
    :cond_2
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 263
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "SINK_DEVICE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DELAY_SELECT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " sink "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmLocalManager(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result v2

    .line 266
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetassistMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v4, :cond_3

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mScanAssistCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    iget-object v5, v5, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetbcProfile(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/BCProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    iget-object v5, v5, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v4, p1, v5}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 271
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "registerAppCallback"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 273
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistMap put"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetassistMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_3
    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssistManager first select on group Id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetgroupIdList(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result p0

    invoke-virtual {v4, v0, p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 250
    :cond_5
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DELAY_UPDATE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "UPdevice"

    .line 253
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v2, "srcId"

    .line 254
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    .line 255
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$mprocessPasswordUpdate(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;BLandroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 225
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    .line 226
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 229
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetaddingDeviceMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage MSG_SOURCE_ADD_TIMEOUT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    if-lez p1, :cond_8

    .line 233
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->assistant_operate_timeout:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_8
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 238
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmFoundBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 239
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 240
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1, v5}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fputmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;)V

    .line 242
    :cond_9
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetaddingDeviceMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 243
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetgroupIdList(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 245
    :cond_a
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    const-string p1, "handleMessage MSG_DELAY_SCANNING"

    .line 200
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 202
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    goto :goto_2

    .line 204
    :cond_c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_2
    return-void
.end method
