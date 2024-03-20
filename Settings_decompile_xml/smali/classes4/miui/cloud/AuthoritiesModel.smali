.class public Lmiui/cloud/AuthoritiesModel;
.super Ljava/lang/Object;
.source "AuthoritiesModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/AuthoritiesModel$ISorter;,
        Lmiui/cloud/AuthoritiesModel$IFilter;,
        Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;
    }
.end annotation


# static fields
.field private static final AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_TYPE_XIAOMI_ACCOUNT:Ljava/lang/String; = "com.xiaomi"

.field private static final FEATURE_SUPPORT_GOOGLE_CSP_SYNC:Ljava/lang/String; = "support_google_csp_sync"

.field public static final UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;


# instance fields
.field private final mAccountType:Ljava/lang/String;

.field private mAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;

    const-string v2, "sms"

    const-string v3, "com.android.mms"

    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.android.contacts"

    .line 46
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "call_log"

    .line 47
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.xiaomi.calendar"

    const-string v2, "com.android.calendar"

    .line 51
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;-><init>(Lmiui/cloud/AuthoritiesModel$1;)V

    sput-object v0, Lmiui/cloud/AuthoritiesModel;->UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    const-string p1, "com.xiaomi"

    .line 70
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 58
    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 64
    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    .line 65
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 33
    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 33
    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static isMiuiAppAuthority(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 74
    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 75
    invoke-static {p0, p1}, Lmiui/cloud/util/PkgInfoUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

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
.method public filter(Ljava/util/List;)Lmiui/cloud/AuthoritiesModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/cloud/AuthoritiesModel;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public filter([Ljava/lang/String;)Lmiui/cloud/AuthoritiesModel;
    .locals 0

    .line 112
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lmiui/cloud/AuthoritiesModel;->filter(Ljava/util/List;)Lmiui/cloud/AuthoritiesModel;

    move-result-object p0

    return-object p0
.end method

.method public filterBy(Lmiui/cloud/AuthoritiesModel$IFilter;)Lmiui/cloud/AuthoritiesModel;
    .locals 2

    .line 107
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lmiui/cloud/AuthoritiesModel$IFilter;->filter(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public getAllAuthorities()Lmiui/cloud/AuthoritiesModel;
    .locals 7

    .line 79
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 80
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 81
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 90
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public sortBy(Lmiui/cloud/AuthoritiesModel$ISorter;)Lmiui/cloud/AuthoritiesModel;
    .locals 2

    .line 102
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lmiui/cloud/AuthoritiesModel$ISorter;->sort(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public toList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    return-object p0
.end method
