.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
.super Ljava/lang/Object;
.source "SplitDetails.java"


# instance fields
.field private final appVersionName:Ljava/lang/String;

.field private final qigsawId:Ljava/lang/String;

.field private final splitEntryFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

.field private final updateSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->qigsawId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->appVersionName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->updateSplits:Ljava/util/List;

    .line 50
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitEntryFragments:Ljava/util/List;

    .line 51
    iput-object p5, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    return-void
.end method


# virtual methods
.method getAppVersionName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->appVersionName:Ljava/lang/String;

    return-object p0
.end method

.method getQigsawId()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "1.2"

    return-object p0
.end method

.method getSplitEntryFragments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitEntryFragments:Ljava/util/List;

    return-object p0
.end method

.method getSplitInfoListing()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    return-object p0
.end method

.method getUpdateSplits()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->updateSplits:Ljava/util/List;

    return-object p0
.end method
