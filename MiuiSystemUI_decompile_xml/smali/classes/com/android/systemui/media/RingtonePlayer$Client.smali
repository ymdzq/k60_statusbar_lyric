.class public final Lcom/android/systemui/media/RingtonePlayer$Client;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mRingtone:Landroid/media/Ringtone;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/systemui/media/RingtonePlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/IBinder;Landroid/media/Ringtone;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 9
    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 17
    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    .line 19
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
    .line 25
.end method
