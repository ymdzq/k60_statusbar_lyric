.class public Lcom/miui/maml/util/BaseMobileDataUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileDataUri()Landroid/net/Uri;
    .locals 0

    .line 1
    const-string p0, "mobile_data"

    .line 2
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 8
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "getMobileDataEnabled"

    .line 15
    new-array v2, p0, [Ljava/lang/Class;

    .line 17
    new-array v3, p0, [Ljava/lang/Object;

    .line 19
    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/maml/util/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "Invoke | ConnectivityManager_getMobileDataEnabled() occur EXCEPTION: "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v1, "BaseMobileDataUtils"

    .line 40
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    return p0
    .line 45
.end method

.method public onMobileDataChange(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
