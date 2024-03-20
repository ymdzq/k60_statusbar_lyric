.class public Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
.super Ljava/lang/Object;
.source "PassportCATokenManager.java"


# static fields
.field private static sInstance:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->sInstance:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
    .locals 1

    .line 177
    sget-object v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->sInstance:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-object v0
.end method
