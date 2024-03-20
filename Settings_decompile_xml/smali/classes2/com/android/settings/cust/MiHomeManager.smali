.class public Lcom/android/settings/cust/MiHomeManager;
.super Ljava/lang/Object;
.source "MiHomeManager.java"


# static fields
.field private static final CONTENT_URI_SETTINGS:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST:Landroid/net/Uri;

.field private static sInstance:Lcom/android/settings/cust/MiHomeManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field public isMiHomeManagerInstalled:Z

.field private mContext:Landroid/content/Context;

.field private volatile mIsInitingSettingsForbiddenList:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreferenceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fputmIsInitingSettingsForbiddenList(Lcom/android/settings/cust/MiHomeManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/cust/MiHomeManager;->mIsInitingSettingsForbiddenList:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSettingsForbiddenList(Lcom/android/settings/cust/MiHomeManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/cust/MiHomeManager;->initSettingsForbiddenList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.xiaomi.mihomemanager.whitelistProvider/packageName"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cust/MiHomeManager;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v0, "content://com.xiaomi.mihomemanager.settingsProvider/settings"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cust/MiHomeManager;->CONTENT_URI_SETTINGS:Landroid/net/Uri;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/cust/MiHomeManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/cust/MiHomeManager;->isMiHomeManagerInstalled:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/cust/MiHomeManager;->mPm:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string v0, "com.xiaomi.mihomemanager"

    const/16 v1, 0x2240

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/cust/MiHomeManager;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/cust/MiHomeManager;->isMiHomeManagerInstalled:Z

    const-string p0, "MiHomeManager"

    const-string p1, "Exception when retrieving package:com.xiaomi.mihomemanager"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/cust/MiHomeManager;
    .locals 2

    .line 59
    sget-object v0, Lcom/android/settings/cust/MiHomeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/settings/cust/MiHomeManager;->sInstance:Lcom/android/settings/cust/MiHomeManager;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/android/settings/cust/MiHomeManager;

    invoke-direct {v1, p0}, Lcom/android/settings/cust/MiHomeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/cust/MiHomeManager;->sInstance:Lcom/android/settings/cust/MiHomeManager;

    .line 63
    :cond_0
    sget-object p0, Lcom/android/settings/cust/MiHomeManager;->sInstance:Lcom/android/settings/cust/MiHomeManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initSettingsForbiddenList()V
    .locals 7

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mPreferenceSet:Ljava/util/HashSet;

    .line 99
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-static {v0, v1}, Lcom/android/settings/cust/MiHomeManager;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/utils/SignaturesUtils;->isSignaturesSameCurrentApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/cust/MiHomeManager;->isSystemSignature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/android/settings/cust/MiHomeManager;->CONTENT_URI_SETTINGS:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 110
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/android/settings/cust/MiHomeManager;->mPreferenceSet:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return-void
.end method

.method private initWhiteList()V
    .locals 7

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mPackageSet:Ljava/util/HashSet;

    .line 80
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    const-string v1, "com.xiaomi.mihomemanager"

    invoke-static {v0, v1}, Lcom/android/settings/cust/MiHomeManager;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/utils/SignaturesUtils;->isSignaturesSameCurrentApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/cust/MiHomeManager;->isSystemSignature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    sget-object v2, Lcom/android/settings/cust/MiHomeManager;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 91
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/android/settings/cust/MiHomeManager;->mPackageSet:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 146
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method private isSystemSignature()Z
    .locals 4

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/cust/MiHomeManager;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 70
    iget-object p0, p0, Lcom/android/settings/cust/MiHomeManager;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    aget-object p0, p0, v0

    .line 71
    invoke-virtual {v1, p0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "MiHomeManager"

    const-string v2, "Exception when getting system signature"

    .line 73
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public isForbidden(Ljava/lang/String;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mPreferenceSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/android/settings/cust/MiHomeManager;->isSetEmpty(Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/cust/MiHomeManager;->mIsInitingSettingsForbiddenList:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/cust/MiHomeManager;->mIsInitingSettingsForbiddenList:Z

    .line 130
    new-instance v0, Lcom/android/settings/cust/MiHomeManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cust/MiHomeManager$1;-><init>(Lcom/android/settings/cust/MiHomeManager;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mPreferenceSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/android/settings/cust/MiHomeManager;->isSetEmpty(Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/cust/MiHomeManager;->mPreferenceSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isSetEmpty(Ljava/util/HashSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_0

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

.method public isWhiteListPackage(Ljava/lang/String;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/cust/MiHomeManager;->mPackageSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/cust/MiHomeManager;->initWhiteList()V

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/settings/cust/MiHomeManager;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
