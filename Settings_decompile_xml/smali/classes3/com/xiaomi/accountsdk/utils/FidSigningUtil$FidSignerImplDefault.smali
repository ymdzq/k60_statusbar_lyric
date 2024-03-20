.class public final Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;
.super Ljava/lang/Object;
.source "FidSigningUtil.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidSigningUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FidSignerImplDefault"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSign()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;
        }
    .end annotation

    .line 54
    new-instance p0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;

    const-string/jumbo v0, "\u5355\u53d1\u5e94\u7528\u573a\u666f\u65e0\u6cd5\u8c03\u7528"

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sign([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;
        }
    .end annotation

    .line 0
    return-object p1
.end method
