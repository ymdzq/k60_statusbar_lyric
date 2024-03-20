.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;
.super Landroid/media/AudioManager$MuteAwaitConnectionCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 2
    invoke-direct {p0}, Landroid/media/AudioManager$MuteAwaitConnectionCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v3, 0x1

    .line 19
    invoke-static {v3, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 20
    move-result v4

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 27
    sget-object v6, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceAdded$2;->INSTANCE:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceAdded$2;

    .line 29
    const/4 v7, 0x0

    .line 31
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 32
    const-string v8, "MediaMuteAwait"

    .line 34
    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 36
    move-result-object v5

    .line 39
    invoke-interface {v5, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 40
    invoke-interface {v5, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 43
    invoke-interface {v5, v4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 46
    invoke-virtual {v0, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {v3, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 57
    move-result p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 63
    iput-object p1, p2, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    .line 65
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->getIcon(Landroid/media/AudioDeviceAttributes;)Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object p0

    .line 80
    iget-object p1, p2, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 81
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 83
    move-result-object p1

    .line 86
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p1

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result p2

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 102
    check-cast p2, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 103
    invoke-interface {p2, p0, v0, v1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceAdded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    goto :goto_0

    .line 108
    :cond_0
    return-void
    .line 109
.end method

.method public final onUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    .line 12
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 21
    iget-object v2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const/4 v2, 0x1

    .line 27
    invoke-static {v2, p3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 28
    move-result v3

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 35
    sget-object v5, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceRemoved$2;->INSTANCE:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceRemoved$2;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 39
    const-string v6, "MediaMuteAwait"

    .line 41
    const/4 v7, 0x0

    .line 43
    invoke-virtual {v0, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 44
    move-result-object v4

    .line 47
    invoke-interface {v4, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 48
    invoke-interface {v4, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 51
    invoke-interface {v4, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 54
    invoke-interface {v4, p1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 57
    invoke-virtual {v0, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 60
    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v2, p3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 70
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 76
    iput-object v7, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    .line 78
    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 82
    move-result-object p0

    .line 85
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p0

    .line 91
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result p1

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 102
    invoke-interface {p1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceRemoved()V

    .line 104
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method
