.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;
.super Ljava/lang/Object;
.source "SplitInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lib"
.end annotation


# instance fields
.field private final md5:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final size:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;->name:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;->md5:Ljava/lang/String;

    .line 272
    iput-wide p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;->size:J

    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;->size:J

    return-wide v0
.end method
