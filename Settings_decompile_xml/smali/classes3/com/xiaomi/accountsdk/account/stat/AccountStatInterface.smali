.class public abstract Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
.super Ljava/lang/Object;
.source "AccountStatInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$EmptyAccountStatImplementation;-><init>(Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$1;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->sInstance:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-object v0
.end method


# virtual methods
.method public abstract statHttpEvent(Ljava/lang/String;J)V
.end method

.method public abstract statHttpEvent(Ljava/lang/String;Ljava/lang/Exception;)V
.end method
