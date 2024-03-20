.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;
.super Landroid/os/Handler;
.source "MiuiAuracastQcomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoveHandler"
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

    .line 1748
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 1746
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 1749
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1753
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

    .line 1754
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xca

    if-eq v0, v2, :cond_2

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "MSG_SELECT_BEFORE_REMOVE "

    .line 1759
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 1763
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetassistMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 1767
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmLocalManager(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result v5

    .line 1768
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v3

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 1769
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v6, v5}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result v5

    .line 1768
    invoke-virtual {v4, v3, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->removeBroadcastSource(BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1771
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1756
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fputmWaitRemove(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Z)V

    :cond_3
    :goto_1
    return-void
.end method
