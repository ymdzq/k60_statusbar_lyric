.class Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_V20;
.super Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_Base;
.source "XiaomiAccountServiceProxyCompat_V20.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat_Base;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    invoke-static {p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
