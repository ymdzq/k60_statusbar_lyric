.class public abstract Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;
.source "PassportSimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;,
        Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;
    }
.end annotation


# instance fields
.field protected final arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arguments can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
