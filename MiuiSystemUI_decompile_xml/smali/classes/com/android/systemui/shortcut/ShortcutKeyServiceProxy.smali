.class public final Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;
.super Lcom/android/internal/policy/IShortcutService$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

.field public final mHandler:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/IShortcutService$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mHandler:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final notifyShortcutKeyPressed(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mHandler:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
    .line 23
.end method
