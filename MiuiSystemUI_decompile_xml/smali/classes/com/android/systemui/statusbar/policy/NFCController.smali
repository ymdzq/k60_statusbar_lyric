.class public final Lcom/android/systemui/statusbar/policy/NFCController;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAdapter:Landroid/nfc/NfcAdapter;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public volatile mEnabled:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNFCEnableListeners:Ljava/util/ArrayList;

.field public final mUpdateEnabled:Lcom/android/systemui/statusbar/policy/NFCController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mEnabled:Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mNFCEnableListeners:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lcom/android/systemui/statusbar/policy/NFCController$1;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NFCController$1;-><init>(Lcom/android/systemui/statusbar/policy/NFCController;)V

    .line 20
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mUpdateEnabled:Lcom/android/systemui/statusbar/policy/NFCController$1;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    .line 27
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 29
    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 34
    invoke-virtual {p2, p0, p1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 36
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mMainHandler:Landroid/os/Handler;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mBackgroundHandler:Landroid/os/Handler;

    .line 41
    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
    .line 46
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mBackgroundHandler:Landroid/os/Handler;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NFCController;->mUpdateEnabled:Lcom/android/systemui/statusbar/policy/NFCController$1;

    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method
