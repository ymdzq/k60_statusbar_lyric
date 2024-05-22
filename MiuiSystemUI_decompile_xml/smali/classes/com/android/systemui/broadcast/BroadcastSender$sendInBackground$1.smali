.class public final Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

.field public final synthetic $callable:Lkotlin/jvm/functions/Function0;

.field public final synthetic $reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$callable:Lkotlin/jvm/functions/Function0;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$reason:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$callable:Lkotlin/jvm/functions/Function0;

    .line 2
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$reason:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 11
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$broadcastWakelock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendInBackground$1;->$reason:Ljava/lang/String;

    .line 18
    invoke-interface {v1, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 20
    throw v0
    .line 23
.end method
