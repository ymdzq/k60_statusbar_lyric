.class public Lcom/android/settings/backup/AccountRestoreManager;
.super Ljava/lang/Object;
.source "AccountRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/AccountRestoreManager$DatabaseHelper;,
        Lcom/android/settings/backup/AccountRestoreManager$AccountItem;,
        Lcom/android/settings/backup/AccountRestoreManager$Authokens;
    }
.end annotation


# static fields
.field static final ACCOUNTS_DB_FILE:Ljava/lang/String;

.field static final ACCOUNT_DB_PATH:Ljava/lang/String;

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final DATABASE_VERSION:I

.field private static sSupportAccountType:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/backup/AccountRestoreManager$AccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachDir:Ljava/io/File;

.field private mAuthokensMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/backup/AccountRestoreManager$Authokens;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mExistAccount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtrasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetDATABASE_VERSION()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/backup/AccountRestoreManager;->DATABASE_VERSION:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "accounts_ce.db"

    .line 57
    sput-object v0, Lcom/android/settings/backup/AccountRestoreManager;->ACCOUNTS_DB_FILE:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/android/settings/backup/AccountRestoreManager;->ACCOUNT_DB_PATH:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/backup/AccountRestoreManager;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.xiaomi"

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/settings/backup/AccountRestoreManager;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/settings/backup/AccountRestoreManager;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/settings/backup/AccountRestoreManager;->sSupportAccountType:Ljava/util/HashSet;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/android/settings/backup/AccountRestoreManager;->getDatabaseVersion()I

    move-result v0

    sput v0, Lcom/android/settings/backup/AccountRestoreManager;->DATABASE_VERSION:I

    const-string v0, "key"

    const-string/jumbo v1, "value"

    .line 339
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/backup/AccountRestoreManager;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string/jumbo v0, "type"

    const-string v1, "authtoken"

    .line 345
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/backup/AccountRestoreManager;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAuthokensMap:Ljava/util/HashMap;

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExtrasMap:Ljava/util/HashMap;

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExistAccount:Ljava/util/HashSet;

    return-void
.end method

.method private static getDatabaseVersion()I
    .locals 1

    .line 0
    const/16 v0, 0xa

    return v0
.end method

.method private readAccountsTable()V
    .locals 11

    .line 119
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExistAccount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 123
    array-length v3, v0

    if-lez v3, :cond_0

    .line 124
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 125
    iget-object v6, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExistAccount:Ljava/util/HashSet;

    iget-object v7, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v3, p0, Lcom/android/settings/backup/AccountRestoreManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "accounts"

    const-string/jumbo v0, "name"

    const-string/jumbo v5, "password"

    const-string v6, "_id"

    const-string/jumbo v7, "type"

    filled-new-array {v6, v7, v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 144
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    new-instance v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;-><init>(Lcom/android/settings/backup/AccountRestoreManager$AccountItem-IA;)V

    .line 146
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->id:J

    const/4 v4, 0x1

    .line 147
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    const/4 v4, 0x2

    .line 148
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->name:Ljava/lang/String;

    const/4 v4, 0x3

    .line 149
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->password:Ljava/lang/String;

    .line 150
    iget-object v4, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExistAccount:Ljava/util/HashSet;

    iget-object v5, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.xiaomi"

    iget-object v5, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    sget-object v4, Lcom/android/settings/backup/AccountRestoreManager;->sSupportAccountType:Ljava/util/HashSet;

    iget-object v5, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.android.email"

    .line 155
    iget-object v5, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.exchange"

    iget-object v5, v3, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 158
    :cond_3
    iget-object v4, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 162
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private readAuthokensTable()V
    .locals 12

    .line 203
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAuthokensMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;

    .line 205
    iget-wide v2, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->id:J

    .line 207
    iget-object v4, p0, Lcom/android/settings/backup/AccountRestoreManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "authtokens"

    sget-object v6, Lcom/android/settings/backup/AccountRestoreManager;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v7, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    iget-object v8, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    new-instance v5, Lcom/android/settings/backup/AccountRestoreManager$Authokens;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/settings/backup/AccountRestoreManager$Authokens;-><init>(Lcom/android/settings/backup/AccountRestoreManager$Authokens-IA;)V

    const/4 v6, 0x0

    .line 223
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/backup/AccountRestoreManager$Authokens;->type:Ljava/lang/String;

    const/4 v6, 0x1

    .line 224
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/backup/AccountRestoreManager$Authokens;->authtoken:Ljava/lang/String;

    .line 225
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    iget-object v1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAuthokensMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readExtraTable()V
    .locals 12

    .line 171
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExtrasMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;

    .line 173
    iget-object v2, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExistAccount:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-wide v2, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->id:J

    .line 177
    iget-object v4, p0, Lcom/android/settings/backup/AccountRestoreManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "extras"

    sget-object v6, Lcom/android/settings/backup/AccountRestoreManager;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v7, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    iget-object v8, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 191
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 192
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 193
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    iget-object v1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExtrasMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public importData()V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;

    .line 95
    iget-wide v3, v2, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->id:J

    .line 96
    new-instance v5, Landroid/accounts/Account;

    iget-object v6, v2, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->type:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    iget-object v2, v2, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/backup/AccountRestoreManager;->mExtrasMap:Ljava/util/HashMap;

    .line 101
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 99
    invoke-virtual {v0, v5, v2, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "AccountRestoreManager"

    const-string v7, "add account error!"

    .line 103
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAuthokensMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/backup/AccountRestoreManager$Authokens;

    .line 108
    iget-object v4, v3, Lcom/android/settings/backup/AccountRestoreManager$Authokens;->type:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/settings/backup/AccountRestoreManager$Authokens;->authtoken:Ljava/lang/String;

    invoke-virtual {v0, v5, v4, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.backup.ACCOUNT_RESTORED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.cloudservice"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    iget-object p0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public prepareImport(Ljava/io/File;)V
    .locals 2

    .line 82
    :try_start_0
    new-instance v0, Lcom/android/settings/backup/AccountRestoreManager$DatabaseHelper;

    iget-object v1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/backup/AccountRestoreManager$DatabaseHelper;-><init>(Lcom/android/settings/backup/AccountRestoreManager;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/backup/AccountRestoreManager;->readAccountsTable()V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/backup/AccountRestoreManager;->readExtraTable()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/backup/AccountRestoreManager;->readAuthokensTable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 82
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "AccountRestoreManager"

    const-string/jumbo v0, "prepareImport: "

    .line 88
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setActiveAdmin()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 264
    sget-boolean v1, Lmiui/os/Build;->IS_MIONE:Z

    const-string v2, "com.android.email"

    if-eqz v1, :cond_0

    .line 265
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.kingsoft.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 276
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 277
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 279
    :try_start_1
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    iget-object p0, p0, Lcom/android/settings/backup/AccountRestoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 280
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_2
    :cond_1
    :goto_2
    return-void
.end method

.method public setAttachDir(Ljava/io/File;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/settings/backup/AccountRestoreManager;->mAttachDir:Ljava/io/File;

    return-void
.end method
