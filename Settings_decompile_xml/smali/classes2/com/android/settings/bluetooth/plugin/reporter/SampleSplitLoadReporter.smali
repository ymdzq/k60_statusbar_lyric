.class public Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitLoadReporter;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;
.source "SampleSplitLoadReporter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;",
            ">;J)V"
        }
    .end annotation

    .line 25
    invoke-super/range {p0 .. p5}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;->onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method public onLoadOK(Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;->onLoadOK(Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method
