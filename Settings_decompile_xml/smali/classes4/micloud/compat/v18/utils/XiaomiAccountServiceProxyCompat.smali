.class public Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;
.super Ljava/lang/Object;
.source "XiaomiAccountServiceProxyCompat.java"


# static fields
.field private static final sXiaomiAccountServiceProxyCompatImpl:Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;

.field private static final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    sget v0, Lcom/xiaomi/micloudsdk/utils/MiCloudSdkBuild;->CURRENT_VERSION:I

    sput v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;->version:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 15
    new-instance v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_V20;

    invoke-direct {v0}, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_V20;-><init>()V

    sput-object v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;->sXiaomiAccountServiceProxyCompatImpl:Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_Base;

    invoke-direct {v0}, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_Base;-><init>()V

    sput-object v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;->sXiaomiAccountServiceProxyCompatImpl:Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;

    :goto_0
    return-void
.end method

.method public static getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    sget-object v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;->sXiaomiAccountServiceProxyCompatImpl:Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;

    invoke-interface {v0, p0, p1}, Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    sget-object v0, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;->sXiaomiAccountServiceProxyCompatImpl:Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;

    invoke-interface {v0, p0, p1, p2}, Lmicloud/compat/v18/utils/IXiaomiAccountServiceProxyCompat;->invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
