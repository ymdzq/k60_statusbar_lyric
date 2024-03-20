.class public Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitUninstallReporter;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;
.source "SampleSplitUninstallReporter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSplitUninstallOK(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;->onSplitUninstallOK(Ljava/util/List;J)V

    return-void
.end method
