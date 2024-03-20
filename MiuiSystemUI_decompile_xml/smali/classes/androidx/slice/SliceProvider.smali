.class public abstract Landroidx/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/app/CoreComponentFactory$CompatWrapped;


# static fields
.field public static sSpecs:Ljava/util/Set;


# instance fields
.field public mAuthorities:[Ljava/lang/String;

.field public mAuthority:Ljava/lang/String;

.field public final mAutoGrantPermissions:[Ljava/lang/String;

.field public final mCompatLock:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mPinnedSliceUris:Ljava/util/List;

.field public final mPinnedSliceUrisLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/slice/SliceProvider;->mCompatLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUrisLock:Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroidx/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    .line 5
    if-nez v0, :cond_1

    .line 7
    iput-object p1, p0, Landroidx/slice/SliceProvider;->mContext:Landroid/content/Context;

    .line 9
    if-eqz p2, :cond_1

    .line 11
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    const/16 p2, 0x3b

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 19
    move-result p2

    .line 22
    const/4 v0, -0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-ne p2, v0, :cond_0

    .line 25
    iput-object p1, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iput-object v1, p0, Landroidx/slice/SliceProvider;->mAuthority:Ljava/lang/String;

    .line 32
    const-string p2, ";"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/slice/SliceProvider;->mAuthorities:[Ljava/lang/String;

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 42
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getPinnedSlices()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUrisLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUris:Ljava/util/List;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 14
    const-class v3, Landroid/app/slice/SliceManager;

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/slice/SliceManager;

    .line 21
    invoke-virtual {v2}, Landroid/app/slice/SliceManager;->getPinnedSlices()Ljava/util/List;

    .line 23
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    iput-object v1, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUris:Ljava/util/List;

    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p0, p0, Landroidx/slice/SliceProvider;->mPinnedSliceUris:Ljava/util/List;

    .line 33
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
    .line 38
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "vnd.android.slice"

    .line 2
    return-object p0
    .line 5
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public abstract onBindSlice()Landroidx/slice/Slice;
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/SliceProvider;->onCreateSliceProvider()V

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public onCreatePermissionManager([Ljava/lang/String;)Landroidx/slice/compat/CompatPermissionManager;
    .locals 3

    .line 1
    new-instance v0, Landroidx/slice/compat/CompatPermissionManager;

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    const-string/jumbo v2, "slice_perms_"

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 23
    move-result v2

    .line 26
    invoke-direct {v0, v1, p0, v2, p1}, Landroidx/slice/compat/CompatPermissionManager;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 27
    return-object v0
    .line 30
.end method

.method public abstract onCreateSliceProvider()V
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
