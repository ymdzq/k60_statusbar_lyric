.class public Lcom/miui/maml/util/MobileDataUtils;
.super Lcom/miui/maml/util/BaseMobileDataUtils;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/BaseMobileDataUtils;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static getInstance()Lcom/miui/maml/util/MobileDataUtils;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "miui.msim.util.MSimMobileDataUtils"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/maml/util/MobileDataUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object v0

    .line 14
    :catch_0
    new-instance v0, Lcom/miui/maml/util/MobileDataUtils;

    .line 15
    invoke-direct {v0}, Lcom/miui/maml/util/MobileDataUtils;-><init>()V

    .line 17
    return-object v0
    .line 20
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    :try_start_0
    const-string p0, "connectivity"

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object p1

    .line 13
    const-string/jumbo p2, "setMobileDataEnabled"

    .line 14
    const/4 v0, 0x1

    .line 17
    new-array v1, v0, [Ljava/lang/Class;

    .line 18
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    aput-object v2, v0, v3

    .line 29
    invoke-static {p1, p0, p2, v1, v0}, Lcom/miui/maml/util/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    const-string p2, "Invoke | ConnectivityManager_enableMobileData() occur EXCEPTION: "

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    const-string p2, "BaseMobileDataUtils"

    .line 43
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void
    .line 48
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/util/BaseMobileDataUtils;->getMobileDataUri()Landroid/net/Uri;

    .line 6
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 11
    return-void
    .line 14
.end method
