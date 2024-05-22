.class public final Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Landroid/media/INearbyMediaDevicesUpdateCallback;

    .line 31
    invoke-interface {p1, v1}, Landroid/media/INearbyMediaDevicesProvider;->registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v1

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 57
    sget-object v3, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderRegistered$2;->INSTANCE:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderRegistered$2;

    .line 59
    const-string v4, "NearbyMediaDevices"

    .line 61
    iget-object v0, v0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 63
    const/4 v5, 0x0

    .line 65
    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 66
    move-result-object v2

    .line 69
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 73
    invoke-interface {p1}, Landroid/media/INearbyMediaDevicesProvider;->asBinder()Landroid/os/IBinder;

    .line 76
    move-result-object p1

    .line 79
    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->deathRecipient:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$deathRecipient$1;

    .line 80
    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 83
    return-void
    .line 86
.end method

.method public final unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->logger:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 27
    sget-object v1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderUnregistered$2;->INSTANCE:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger$logProviderUnregistered$2;

    .line 29
    const-string v2, "NearbyMediaDevices"

    .line 31
    iget-object p1, p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 33
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 36
    move-result-object v0

    .line 39
    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 43
    :cond_0
    return-void
    .line 46
.end method
