.class public Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
.super Ljava/lang/Object;
.source "MiCloudStatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mEnable:Z

.field private mIsInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mEnable:Z

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->mIsInitialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
    .locals 1

    .line 15
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
