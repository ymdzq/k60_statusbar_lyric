.class public Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;
.super Ljava/lang/Object;
.source "NetworkRequestLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger$InstanceSingleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger$InstanceSingleton;->sInstance:Lcom/xiaomi/accountsdk/request/log/NetworkRequestLogger;

    return-object v0
.end method


# virtual methods
.method protected varargs print(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method
