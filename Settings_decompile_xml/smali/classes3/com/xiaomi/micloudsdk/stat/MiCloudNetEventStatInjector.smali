.class public Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
.super Ljava/lang/Object;
.source "MiCloudNetEventStatInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;
    }
.end annotation


# instance fields
.field private mIsDownloadCallbackInitialized:Z

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsInitialized:Z

    .line 18
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->mIsDownloadCallbackInitialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addGetDownloadFileUrlsFailedEvent(Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method public addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method public addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method public isGetDownloadFileRequestUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
