.class public final Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;
.super Landroid/app/slice/SliceProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAutoGrantPermissions:[Ljava/lang/String;

.field public mSliceManager:Landroid/app/slice/SliceManager;

.field public final mSliceProvider:Landroidx/slice/SliceProvider;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceProvider;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/app/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 2
    if-eqz p2, :cond_0

    .line 5
    array-length v0, p2

    .line 7
    if-nez v0, :cond_1

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 10
    :cond_1
    iput-object p2, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 11
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/slice/SliceProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/slice/SliceProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 7
    const-class p2, Landroid/app/slice/SliceManager;

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/slice/SliceManager;

    .line 16
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 18
    return-void
    .line 20
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    const-string v0, "bind_slice"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    if-eqz p3, :cond_2

    .line 15
    const-string/jumbo v0, "slice_uri"

    .line 17
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/net/Uri;

    .line 24
    move-object v1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "map_slice"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    const-string/jumbo v0, "slice_intent"

    .line 36
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/content/Intent;

    .line 43
    if-nez v0, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    .line 48
    throw v1

    .line 51
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 52
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 56
    move-result v2

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 60
    move-result v3

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/slice/SliceManager;->checkSlicePermission(Landroid/net/Uri;II)I

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p0, v1}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->checkPermissions(Landroid/net/Uri;)V

    .line 70
    :cond_3
    const-string v0, "androidx.remotecallback.method.PROVIDER_CALLBACK"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    iget-object p0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Landroidx/slice/SliceProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 83
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/slice/SliceProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 88
    move-result-object p0

    .line 91
    return-object p0
    .line 92
.end method

.method public final checkPermissions(Landroid/net/Uri;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 4
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    aget-object v3, v0, v2

    .line 10
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 16
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 22
    invoke-virtual {v0, v3, p1}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 36
    return-void

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    return-void
    .line 43
.end method

.method public final onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .locals 3

    .line 1
    const-string v0, "Slice with URI "

    .line 2
    invoke-static {p2}, Landroidx/slice/SliceConvert;->wrap(Ljava/util/Set;)Landroidx/collection/ArraySet;

    .line 4
    move-result-object p2

    .line 7
    sput-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 8
    const/4 p2, 0x0

    .line 10
    :try_start_0
    iget-object p0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 11
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->onBindSlice()Landroidx/slice/Slice;

    .line 13
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sput-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 21
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_1
    const-string v1, "SliceProviderWrapper"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " is invalid."

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    sput-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 53
    return-object p2

    .line 55
    :goto_0
    sput-object p2, Landroidx/slice/SliceProvider;->sSpecs:Ljava/util/Set;

    .line 56
    throw p0
    .line 58
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->checkPermissions(Landroid/net/Uri;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 9
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-super {p0, p1}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method

.method public final onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    const-string p1, "This provider has not implemented intent to uri mapping"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
    .line 14
.end method

.method public final onSlicePinned(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 7
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getPinnedSlices()Ljava/util/List;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final onSliceUnpinned(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Landroidx/slice/compat/SliceProviderWrapperContainer$SliceProviderWrapper;->mSliceProvider:Landroidx/slice/SliceProvider;

    .line 7
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->getPinnedSlices()Ljava/util/List;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    return-void
    .line 22
.end method
