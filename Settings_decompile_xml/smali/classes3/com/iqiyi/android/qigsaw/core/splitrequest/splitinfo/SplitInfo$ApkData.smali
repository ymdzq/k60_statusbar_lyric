.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;
.super Ljava/lang/Object;
.source "SplitInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkData"
.end annotation


# instance fields
.field private abi:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private size:J

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetabi(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->abi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmd5(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->md5:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->size:J

    return-wide v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->abi:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->url:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->md5:Ljava/lang/String;

    .line 222
    iput-wide p4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->size:J

    return-void
.end method


# virtual methods
.method public getAbi()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->abi:Ljava/lang/String;

    return-object p0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->url:Ljava/lang/String;

    return-object p0
.end method
