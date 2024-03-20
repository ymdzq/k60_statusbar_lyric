.class public Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;
.super Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByPassToken"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    return-void
.end method


# virtual methods
.method protected getLoginType()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "byPassToken"

    return-object p0
.end method

.method protected makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
    .locals 0

    .line 190
    new-instance p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    return-object p0
.end method
