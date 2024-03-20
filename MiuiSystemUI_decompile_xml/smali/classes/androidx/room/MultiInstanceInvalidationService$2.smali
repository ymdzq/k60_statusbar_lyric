.class public final Landroidx/room/MultiInstanceInvalidationService$2;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    .line 7
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final broadcastInvalidation(I[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 2
    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 7
    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    if-nez v1, :cond_0

    .line 21
    const-string p0, "ROOM"

    .line 23
    const-string p1, "Remote invalidation client ID not registered"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 32
    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 34
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 36
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    if-ge v3, v2, :cond_3

    .line 41
    :try_start_1
    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 43
    iget-object v4, v4, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 45
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v4

    .line 56
    iget-object v5, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 57
    iget-object v5, v5, Landroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v6

    .line 64
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 68
    check-cast v5, Ljava/lang/String;

    .line 69
    if-eq p1, v4, :cond_2

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-nez v4, :cond_1

    .line 77
    goto :goto_1

    .line 79
    :cond_1
    :try_start_2
    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 80
    iget-object v4, v4, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 82
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 84
    move-result-object v4

    .line 87
    check-cast v4, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 88
    invoke-interface {v4, p2}, Landroidx/room/IMultiInstanceInvalidationCallback;->onInvalidation([Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    goto :goto_1

    .line 93
    :catch_0
    move-exception v4

    .line 94
    :try_start_3
    const-string v5, "ROOM"

    .line 95
    const-string v6, "Error invoking a remote callback"

    .line 97
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 102
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    :try_start_4
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 106
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 108
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 110
    throw p1

    .line 113
    :cond_3
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 114
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 116
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 118
    monitor-exit v0

    .line 121
    return-void

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    throw p0
    .line 125
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/room/MultiInstanceInvalidationService$2;->onTransact$androidx$room$IMultiInstanceInvalidationService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$androidx$room$IMultiInstanceInvalidationService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v2, :cond_5

    .line 6
    const/4 v3, 0x2

    .line 8
    if-eq p1, v3, :cond_2

    .line 9
    const/4 v1, 0x3

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    const v1, 0x5f4e5446

    .line 14
    if-eq p1, v1, :cond_0

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    return v2

    .line 27
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 31
    move-result p1

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 38
    invoke-virtual {p0, p1, p2}, Landroidx/room/MultiInstanceInvalidationService$2;->broadcastInvalidation(I[Ljava/lang/String;)V

    .line 39
    return v2

    .line 42
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 46
    move-result-object p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    const-string p4, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 53
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 55
    move-result-object p4

    .line 58
    if-eqz p4, :cond_4

    .line 59
    instance-of v0, p4, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 61
    if-eqz v0, :cond_4

    .line 63
    move-object v1, p4

    .line 65
    check-cast v1, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    new-instance v1, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;

    .line 69
    invoke-direct {v1, p1}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 71
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    move-result p1

    .line 77
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 78
    iget-object p4, p2, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 80
    monitor-enter p4

    .line 82
    :try_start_0
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 83
    iget-object p2, p2, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 85
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 87
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 90
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v2

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 112
    move-result-object p1

    .line 115
    if-nez p1, :cond_6

    .line 116
    goto :goto_1

    .line 118
    :cond_6
    const-string p4, "androidx.room.IMultiInstanceInvalidationCallback"

    .line 119
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 121
    move-result-object p4

    .line 124
    if-eqz p4, :cond_7

    .line 125
    instance-of v0, p4, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 127
    if-eqz v0, :cond_7

    .line 129
    move-object v1, p4

    .line 131
    check-cast v1, Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 132
    goto :goto_1

    .line 134
    :cond_7
    new-instance v1, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;

    .line 135
    invoke-direct {v1, p1}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 137
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 143
    invoke-virtual {p0, v1, p1}, Landroidx/room/MultiInstanceInvalidationService$2;->registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    .line 144
    move-result p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return v2
    .line 154
.end method

.method public final registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 6
    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 8
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 11
    iget v3, v2, Landroidx/room/MultiInstanceInvalidationService;->mMaxClientId:I

    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 15
    iput v3, v2, Landroidx/room/MultiInstanceInvalidationService;->mMaxClientId:I

    .line 17
    iget-object v2, v2, Landroidx/room/MultiInstanceInvalidationService;->mCallbackList:Landroidx/room/MultiInstanceInvalidationService$1;

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v4

    .line 24
    invoke-virtual {v2, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 31
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v1

    .line 42
    return v3

    .line 43
    :cond_1
    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->this$0:Landroidx/room/MultiInstanceInvalidationService;

    .line 44
    iget p1, p0, Landroidx/room/MultiInstanceInvalidationService;->mMaxClientId:I

    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 48
    iput p1, p0, Landroidx/room/MultiInstanceInvalidationService;->mMaxClientId:I

    .line 50
    monitor-exit v1

    .line 52
    return v0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
    .line 56
.end method
