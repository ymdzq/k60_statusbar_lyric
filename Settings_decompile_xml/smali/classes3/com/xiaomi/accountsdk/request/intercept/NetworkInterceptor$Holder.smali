.class Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor$Holder;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static volatile sInstance:Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/xiaomi/accountsdk/request/intercept/EmptyNetworkInterceptCallback;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/intercept/EmptyNetworkInterceptCallback;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor$Holder;->sInstance:Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;
    .locals 1

    .line 4
    sget-object v0, Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptor$Holder;->sInstance:Lcom/xiaomi/accountsdk/request/intercept/NetworkInterceptCallback;

    return-object v0
.end method
