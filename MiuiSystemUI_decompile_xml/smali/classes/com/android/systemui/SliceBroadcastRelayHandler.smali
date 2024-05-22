.class public final Lcom/android/systemui/SliceBroadcastRelayHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mReceiver:Lcom/android/systemui/SliceBroadcastRelayHandler$1;

.field public final mRelays:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/SliceBroadcastRelayHandler$1;-><init>(Lcom/android/systemui/SliceBroadcastRelayHandler;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Lcom/android/systemui/SliceBroadcastRelayHandler$1;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "com.android.settingslib.action.REGISTER_SLICE_RECEIVER"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    .line 14
    const-string/jumbo v2, "uri"

    .line 16
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/net/Uri;

    .line 25
    const-string v2, "receiver"

    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/ComponentName;

    .line 33
    const-string v3, "filter"

    .line 35
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Landroid/content/IntentFilter;

    .line 41
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    .line 47
    if-nez v3, :cond_0

    .line 49
    new-instance v3, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    .line 51
    invoke-direct {v3, v0}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;-><init>(Landroid/net/Uri;)V

    .line 53
    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object p0, v3, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;->mReceivers:Landroid/util/ArraySet;

    .line 59
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 p0, 0x2

    .line 64
    invoke-virtual {v1, v3, p1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "com.android.settingslib.action.UNREGISTER_SLICE_RECEIVER"

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 81
    move-result-object p1

    .line 84
    check-cast p1, Landroid/net/Uri;

    .line 85
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 90
    check-cast p0, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    .line 91
    if-eqz p0, :cond_2

    .line 93
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_2
    :goto_0
    return-void
    .line 98
.end method

.method public final start()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    const-string v1, "com.android.settingslib.action.REGISTER_SLICE_RECEIVER"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "com.android.settingslib.action.UNREGISTER_SLICE_RECEIVER"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Lcom/android/systemui/SliceBroadcastRelayHandler$1;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    return-void
    .line 21
.end method
