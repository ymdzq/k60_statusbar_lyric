.class public Lcom/xiaomi/accounts/AccountManagerService;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;,
        Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;,
        Lcom/xiaomi/accounts/AccountManagerService$Session;,
        Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final REMOTE_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/xiaomi/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthenticatorCache:Lcom/xiaomi/accounts/AccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mMessageHandler:Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accounts/AccountManagerService;->REMOTE_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const-string/jumbo v0, "type"

    const-string v1, "authtoken"

    .line 122
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v0, "key"

    const-string/jumbo v1, "value"

    .line 127
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/xiaomi/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 168
    sput-object v0, Lcom/xiaomi/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/xiaomi/accounts/AccountAuthenticatorCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/xiaomi/accounts/AccountAuthenticatorCache;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 191
    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/xiaomi/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 194
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AccountManagerService"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    .line 195
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 196
    new-instance p1, Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;

    iget-object p2, p0, Lcom/xiaomi/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/xiaomi/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mMessageHandler:Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;

    .line 198
    iput-object p3, p0, Lcom/xiaomi/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/xiaomi/accounts/AccountAuthenticatorCache;

    .line 200
    sget-object p1, Lcom/xiaomi/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/AccountManagerService;->initUser(I)Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;IZ)Ljava/io/File;
    .locals 0

    .line 67
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->getDatabaseFile(Landroid/content/Context;IZ)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->getDatabasePath(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/accounts/AccountManagerService;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/accounts/AccountManagerService;)Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mMessageHandler:Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 67
    sget-object v0, Lcom/xiaomi/accounts/AccountManagerService;->REMOTE_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaomi/accounts/AccountManagerService;)Lcom/xiaomi/accounts/AccountAuthenticatorCache;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/xiaomi/accounts/AccountAuthenticatorCache;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/accounts/AccountManagerService;Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private clearCallingIdentity()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getAccountIdLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 8

    const-string v1, "accounts"

    const-string p0, "_id"

    .line 1323
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "name=? AND type=?"

    iget-object p0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {p0, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p0

    .line 1326
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1327
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-wide/16 p0, -0x1

    return-wide p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1332
    throw p1
.end method

.method private static getDatabaseFile(Landroid/content/Context;IZ)Ljava/io/File;
    .locals 3

    .line 1623
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 1624
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1626
    new-instance p0, Ljava/io/File;

    if-eqz p2, :cond_0

    const-string/jumbo p1, "sec_accounts.db"

    goto :goto_0

    :cond_0
    const-string p1, "accounts.db"

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getDatabasePath(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 0

    .line 1630
    invoke-static {p0, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->getDatabaseFile(Landroid/content/Context;IZ)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExtrasIdLocked(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;)J
    .locals 8

    const-string v1, "extras"

    const-string p0, "_id"

    .line 1336
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accounts_id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "key"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=?"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p0

    .line 1340
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1341
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const-wide/16 p0, -0x1

    return-wide p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1346
    throw p1
.end method

.method private getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .line 309
    invoke-static {}, Lcom/xiaomi/accounts/UserId;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccounts(I)Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    return-object p0
.end method

.method private initUser(I)Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/accounts/AMSInjector;->loadSQLCipherLibsOnlyOnce(Landroid/content/Context;)V

    .line 211
    iget-object v1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    iget-object v2, p0, Lcom/xiaomi/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;I)V

    .line 214
    iget-object v2, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 215
    invoke-direct {p0, v1}, Lcom/xiaomi/accounts/AccountManagerService;->purgeOldGrants(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)V

    .line 216
    invoke-direct {p0, v1}, Lcom/xiaomi/accounts/AccountManagerService;->validateAccountsAndPopulateCache(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)V

    .line 218
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private insertExtraLocked(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 470
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "key"

    .line 471
    invoke-virtual {p0, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "accounts_id"

    .line 472
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p2, "value"

    .line 473
    invoke-virtual {p0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extras"

    .line 474
    invoke-virtual {p1, p2, v0, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private invalidateAuthTokenLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    .line 659
    filled-new-array {p4, p3}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p4

    .line 671
    :goto_0
    :try_start_0
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 672
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 673
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 674
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "authtokens"

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v2, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 680
    :cond_1
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 681
    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private onResult(Lcom/xiaomi/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "AccountManagerService"

    if-nez p2, :cond_0

    .line 871
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x2

    .line 873
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onResult() on response "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/xiaomi/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 882
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "failure while notifying response"

    .line 883
    invoke-static {v0, p1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private purgeOldGrants(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)V
    .locals 11

    .line 231
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    const-string v2, "grants"

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v1, "uid"

    const/4 v10, 0x0

    aput-object v1, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 233
    invoke-virtual/range {v1 .. v8}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/xiaomi/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v9

    goto :goto_1

    :cond_0
    move v3, v10

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "AccountManagerService"

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting grants for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " because its package is no longer installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "grants"

    const-string/jumbo v4, "uid=?"

    new-array v5, v9, [Ljava/lang/String;

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    .line 245
    invoke-virtual {p1, v3, v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    throw p0

    :catchall_1
    move-exception p0

    .line 251
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private readPasswordInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 345
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 346
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    const-string v2, "accounts"

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/String;

    const-string v4, "password"

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const-string v4, "name=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 347
    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p2, v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 352
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 357
    throw p0

    :catchall_1
    move-exception p0

    .line 358
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private restoreCallingIdentity(J)V
    .locals 0

    .line 0
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 689
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 690
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v2

    .line 691
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 693
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/xiaomi/accounts/AccountManagerService;->getAccountIdLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 711
    :try_start_2
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :cond_1
    :try_start_3
    const-string v7, "authtokens"

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accounts_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 700
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "accounts_id"

    .line 701
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "type"

    .line 702
    invoke-virtual {v7, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "authtoken"

    .line 703
    invoke-virtual {v7, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "authtokens"

    const-string v4, "authtoken"

    .line 704
    invoke-virtual {v2, v3, v4, v7}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 705
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 706
    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    :try_start_4
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 712
    throw p0

    :catchall_1
    move-exception p0

    .line 713
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return v0
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 2

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "the accounts changed, sending broadcast of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaomi/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 795
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AccountManagerService"

    .line 794
    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setPasswordInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 772
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 773
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 774
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 776
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "password"

    .line 777
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-direct {p0, v1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->getAccountIdLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    .line 780
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p3, v4

    const-string v3, "accounts"

    const-string v4, "_id=?"

    .line 781
    invoke-virtual {v1, v3, v2, v4, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "authtokens"

    const-string v3, "accounts_id=?"

    .line 782
    invoke-virtual {v1, v2, v3, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 789
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 790
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 787
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 788
    throw p0

    :catchall_1
    move-exception p0

    .line 790
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private setUserdataInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 839
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 840
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 841
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 843
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->getAccountIdLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gez v2, :cond_1

    .line 864
    :try_start_2
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 847
    :cond_1
    :try_start_3
    invoke-direct {p0, v1, v4, v5, p3}, Lcom/xiaomi/accounts/AccountManagerService;->getExtrasIdLocked(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v2

    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    move-object v2, p0

    move-object v3, v1

    move-object v6, p3

    move-object v7, p4

    .line 849
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/accounts/AccountManagerService;->insertExtraLocked(Lnet/sqlcipher/database/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v2, v2, v8

    if-gez v2, :cond_3

    .line 864
    :try_start_4
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 854
    :cond_2
    :try_start_5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "value"

    .line 855
    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extras"

    .line 856
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v4, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x1

    if-eq v3, v2, :cond_3

    .line 864
    :try_start_6
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 861
    :try_start_7
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 864
    :try_start_8
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 866
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 864
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 865
    throw p0

    :catchall_1
    move-exception p0

    .line 866
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method private validateAccountsAndPopulateCache(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)V
    .locals 16

    move-object/from16 v1, p0

    .line 255
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 256
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    const-string v4, "accounts"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v11, 0x0

    aput-object v3, v5, v11

    const-string/jumbo v3, "type"

    const/4 v12, 0x1

    aput-object v3, v5, v12

    const-string v3, "name"

    const/4 v13, 0x2

    aput-object v3, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    .line 258
    invoke-virtual/range {v3 .. v10}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 262
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 263
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v5, v11

    .line 265
    :goto_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 267
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 268
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 269
    iget-object v10, v1, Lcom/xiaomi/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/xiaomi/accounts/AccountAuthenticatorCache;

    .line 270
    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 269
    invoke-virtual {v10, v14}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v10, "AccountManagerService"

    .line 271
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleting account "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " because type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " no longer has a registered authenticator"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "accounts"

    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v10, v6, v7}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    :try_start_3
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v9, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    move v11, v12

    goto/16 :goto_3

    .line 279
    :cond_0
    :try_start_4
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 281
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 288
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 290
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/accounts/Account;

    .line 293
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v11

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 294
    new-instance v10, Landroid/accounts/Account;

    invoke-direct {v10, v9, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 297
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 300
    :cond_4
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v5, :cond_5

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/xiaomi/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 305
    :cond_5
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    move v11, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 300
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_6

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$700(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/xiaomi/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 304
    :cond_6
    throw v0

    :catchall_3
    move-exception v0

    .line 305
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method


# virtual methods
.method public clearPassword(Landroid/accounts/Account;)V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 801
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPassword: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 807
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 808
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 810
    :try_start_0
    invoke-direct {p0, v0, p1, v3}, Lcom/xiaomi/accounts/AccountManagerService;->setPasswordInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 813
    throw p1

    .line 806
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 4

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 1276
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountManagerService"

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccounts: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1277
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1282
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1284
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1285
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1286
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1288
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1289
    throw p1
.end method

.method protected getAccountsFromCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 3

    .line 1861
    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/AccountManagerService;->validateAccountsAndPopulateCache(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)V

    if-eqz p2, :cond_1

    .line 1863
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    if-nez p0, :cond_0

    .line 1865
    sget-object p0, Lcom/xiaomi/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 1867
    :cond_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0

    .line 1871
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 1872
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 1875
    sget-object p0, Lcom/xiaomi/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 1877
    :cond_3
    new-array p0, v0, [Landroid/accounts/Account;

    .line 1879
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 1880
    array-length v2, v1

    invoke-static {v1, p2, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1882
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public getAuthToken(Lcom/xiaomi/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    .line 934
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notifyOnAuthFailure "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v6, p5

    :goto_0
    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    if-eqz v10, :cond_4

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 947
    iget-object v1, v12, Lcom/xiaomi/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/xiaomi/accounts/AccountAuthenticatorCache;

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 949
    invoke-static {v2}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 948
    invoke-virtual {v1, v2}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-nez p6, :cond_1

    .line 956
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    const-string v2, "callerUid"

    .line 959
    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callerPid"

    .line 960
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v11, :cond_2

    const-string v1, "notifyOnAuthFailure"

    const/4 v2, 0x1

    .line 962
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 965
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 970
    :try_start_0
    invoke-virtual {v12, v3, v9, v10}, Lcom/xiaomi/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 972
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "authtoken"

    .line 973
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authAccount"

    .line 974
    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountType"

    .line 975
    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-direct {v12, v0, v2}, Lcom/xiaomi/accounts/AccountManagerService;->onResult(Lcom/xiaomi/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    invoke-direct {v12, v13, v14}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    .line 981
    :cond_3
    :try_start_1
    new-instance v15, Lcom/xiaomi/accounts/AccountManagerService$2;

    iget-object v5, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p5

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lcom/xiaomi/accounts/AccountManagerService$2;-><init>(Lcom/xiaomi/accounts/AccountManagerService;Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lcom/xiaomi/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1021
    invoke-virtual {v15}, Lcom/xiaomi/accounts/AccountManagerService$Session;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    invoke-direct {v12, v13, v14}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {v12, v13, v14}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1024
    throw v0

    .line 945
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 324
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPassword: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 332
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 334
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accounts/AccountManagerService;->readPasswordInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 337
    throw p1

    .line 329
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getUserAccounts(I)Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    if-nez v1, :cond_0

    .line 316
    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/AccountManagerService;->initUser(I)Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 317
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 319
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 362
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 371
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 373
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->readUserDataInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 376
    throw p1

    .line 369
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 368
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 629
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountManagerService"

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateAuthToken: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 637
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 639
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 640
    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4

    .line 641
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 643
    :try_start_2
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    :try_start_3
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 648
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 650
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 646
    :try_start_4
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 647
    throw p1

    :catchall_1
    move-exception p1

    .line 648
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 650
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 651
    throw p1

    .line 635
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authToken is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 634
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 717
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peekAuthToken: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 725
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 726
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 728
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 731
    throw p1

    .line 724
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authTokenType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 723
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected readAuthTokenInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1918
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1919
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1922
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 1923
    invoke-virtual {p0, v1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 1924
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1927
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1968
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "authtokens"

    .line 1969
    sget-object v2, Lcom/xiaomi/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p1

    .line 1975
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1976
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 1977
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1978
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1981
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1982
    throw p0
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1948
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "extras"

    .line 1949
    sget-object v2, Lcom/xiaomi/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p1

    .line 1955
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1956
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 1957
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1958
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1961
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1962
    throw p0
.end method

.method protected readUserDataInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1931
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$200(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1932
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 1936
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1938
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 1939
    invoke-virtual {p0, v1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 1940
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1943
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 735
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthToken: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 744
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 746
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xiaomi/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 749
    throw p1

    .line 742
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authTokenType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 741
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 753
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassword: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 759
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 760
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 762
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/accounts/AccountManagerService;->setPasswordInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 765
    throw p1

    .line 758
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    .line 817
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 825
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 826
    invoke-direct {p0}, Lcom/xiaomi/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 828
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xiaomi/accounts/AccountManagerService;->setUserdataInternal(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 831
    throw p1

    .line 824
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 823
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1904
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1906
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 1907
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p5, :cond_1

    .line 1910
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1912
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1890
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1892
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Lnet/sqlcipher/database/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 1893
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;->access$500(Lcom/xiaomi/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p5, :cond_1

    .line 1896
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1898
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
