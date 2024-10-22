.class public abstract Lcom/android/settings/applications/AppStateAppOpsBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
    }
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsOpCodes:[I

.field private final mContext:Landroid/content/Context;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V
    .locals 7

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V
    .locals 7

    .line 73
    filled-new-array {p4}, [I

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;[I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;[I[Ljava/lang/String;)V
    .locals 7

    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;[I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;[I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 80
    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    .line 81
    iput-object p6, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 82
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mUserManager:Landroid/os/UserManager;

    .line 83
    invoke-virtual {p2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    const-string p2, "appops"

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 85
    iput-object p4, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    .line 86
    iput-object p5, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method private doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .line 102
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getEntries()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :try_start_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 177
    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 178
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 179
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 180
    iget-object v7, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 181
    iget-object v11, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v10, v5}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 184
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 192
    :cond_3
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 193
    invoke-virtual {v2, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 195
    iget-object v9, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v9, v8, v5}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v9

    .line 197
    invoke-direct {p0, v8}, Lcom/android/settings/applications/AppStateAppOpsBridge;->shouldIgnorePackage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v9, :cond_4

    .line 198
    new-instance v9, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v9, v8, v4}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 199
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 203
    :cond_5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    return-object v2

    :catch_0
    move-exception v2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager is dead. Can\'t get list of packages requesting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppStateAppOpsBridge"

    invoke-static {v1, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private loadAppOpsStates(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_6

    .line 266
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 267
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 268
    invoke-direct {p0, v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 273
    :cond_2
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-nez v6, :cond_3

    goto :goto_2

    .line 277
    :cond_3
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    const-string v7, "AppStateAppOpsBridge"

    if-nez v6, :cond_4

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppOp permission exists for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of user "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but package doesn\'t exist or did not request "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 281
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " access"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 285
    :cond_4
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-ge v5, v8, :cond_5

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No AppOps permission exists for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 289
    :cond_5
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    iput v4, v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private loadPermissionsStates(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 227
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 228
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 234
    invoke-interface {v3, v4, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 236
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-ge v3, v4, :cond_1

    .line 238
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 239
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v6, :cond_4

    .line 241
    iput-object v5, v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x1

    .line 242
    iput-boolean v5, v6, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageManager is dead. Can\'t get list of packages granted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    .line 248
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppStateAppOpsBridge"

    .line 247
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method private shouldIgnorePackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android"

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
    .locals 7

    .line 111
    new-instance v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    new-instance v1, Landroid/os/UserHandle;

    .line 112
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    .line 116
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-wide/32 v3, 0x401000

    .line 114
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 119
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 120
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_1

    move v4, v2

    .line 122
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 123
    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mPermissions:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 124
    iput-boolean v5, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    .line 125
    aget v6, v1, v4

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 127
    iput-boolean v5, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge;->mAppOpsOpCodes:[I

    invoke-virtual {v1, p2, p1, p0}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 137
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageManager is dead. Can\'t get package info "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppStateAppOpsBridge"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .locals 6

    .line 147
    invoke-direct {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getEntries()Landroid/util/SparseArray;

    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->loadPermissionsStates(Landroid/util/SparseArray;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->loadAppOpsStates(Landroid/util/SparseArray;)V

    .line 154
    iget-object p0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 157
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 158
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    .line 161
    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_0
    iput-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_1
    iput-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
