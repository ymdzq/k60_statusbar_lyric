.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ServiceTokenServiceConnector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method
