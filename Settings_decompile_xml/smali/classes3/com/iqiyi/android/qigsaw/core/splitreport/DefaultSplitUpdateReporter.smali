.class public Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;
.super Ljava/lang/Object;
.source "DefaultSplitUpdateReporter.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitUpdateReporter"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onNewSplitInfoVersionLoaded(Ljava/lang/String;)V
    .locals 1

    const-string p0, "Success to load new split info version "

    .line 55
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "SplitUpdateReporter"

    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SplitUpdateReporter"

    const-string p2, "Failed to update version from %s to %s, errorCode %d."

    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SplitUpdateReporter"

    const-string p2, "Success to update version from %s to %s, update splits: %s."

    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
