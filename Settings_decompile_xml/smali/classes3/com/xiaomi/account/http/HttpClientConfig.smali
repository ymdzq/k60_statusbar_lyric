.class public Lcom/xiaomi/account/http/HttpClientConfig;
.super Ljava/lang/Object;
.source "HttpClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/http/HttpClientConfig$Builder;
    }
.end annotation


# static fields
.field private static volatile defaultConnectTimeoutMs:J = 0x2710L

.field private static volatile defaultWaitCellularTimeoutMs:J = 0x1388L


# instance fields
.field public final connectTimeoutMs:J

.field public final netWorkSlotId:I

.field public final network:Landroid/net/Network;

.field public final readTimeoutMs:J

.field public final waitCellularTimeoutMs:J

.field public final writeTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->network:Landroid/net/Network;

    iput-object v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->network:Landroid/net/Network;

    .line 18
    iget p1, p1, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->netWorkSlotId:I

    iput p1, p0, Lcom/xiaomi/account/http/HttpClientConfig;->netWorkSlotId:I

    .line 20
    sget-wide v0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultConnectTimeoutMs:J

    iput-wide v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->connectTimeoutMs:J

    .line 21
    sget-wide v0, Lcom/xiaomi/account/http/HttpClientConfig;->defaultWaitCellularTimeoutMs:J

    iput-wide v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->waitCellularTimeoutMs:J

    const-wide/16 v0, 0x3a98

    .line 22
    iput-wide v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->readTimeoutMs:J

    .line 23
    iput-wide v0, p0, Lcom/xiaomi/account/http/HttpClientConfig;->writeTimeoutMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;Lcom/xiaomi/account/http/HttpClientConfig$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/account/http/HttpClientConfig;-><init>(Lcom/xiaomi/account/http/HttpClientConfig$Builder;)V

    return-void
.end method
