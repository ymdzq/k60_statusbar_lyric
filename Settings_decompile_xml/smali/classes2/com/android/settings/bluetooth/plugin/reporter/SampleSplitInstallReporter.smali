.class public Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitInstallReporter;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;
.source "SampleSplitInstallReporter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;",
            ">;J)V"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method public onDeferredInstallOK(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onDeferredInstallOK(Ljava/util/List;J)V

    return-void
.end method

.method public onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;",
            "J)V"
        }
    .end annotation

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V

    return-void
.end method

.method public onStartInstallOK(Ljava/util/List;J)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onStartInstallOK(Ljava/util/List;J)V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    .line 28
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->getInstallFlag()I

    move-result p2

    const/4 p3, 0x2

    const-string v0, "SampleSplitInstallReporter"

    if-ne p2, p3, :cond_1

    .line 29
    iget-object p1, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Split %s has been installed, don\'t need delivery this result"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->getInstallFlag()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 31
    iget-object p1, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Split %s is installed firstly, you can delivery this result"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method
