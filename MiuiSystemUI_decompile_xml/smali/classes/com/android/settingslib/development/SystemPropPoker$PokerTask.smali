.class public final Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->listServices()[Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "SystemPropPoker"

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string p0, "There are no services, how odd"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    goto :goto_2

    .line 18
    :cond_0
    array-length v2, p1

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_2

    .line 22
    aget-object v5, p1, v4

    .line 24
    invoke-virtual {p0, v5}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    move-result-object v6

    .line 29
    if-eqz v6, :cond_1

    .line 30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 32
    move-result-object v7

    .line 35
    const v8, 0x5f535052

    .line 36
    :try_start_0
    invoke-interface {v6, v8, v7, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 42
    :catch_0
    move-exception v6

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    const-string v9, "Someone wrote a bad service \'"

    .line 46
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, "\' that doesn\'t like to be poked"

    .line 54
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 62
    invoke-static {v1, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :catch_1
    :goto_1
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 66
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    :goto_2
    return-object v0
    .line 72
.end method

.method public listServices()[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method
