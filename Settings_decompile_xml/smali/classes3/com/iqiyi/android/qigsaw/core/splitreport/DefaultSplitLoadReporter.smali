.class public Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;
.super Ljava/lang/Object;
.source "DefaultSplitLoadReporter.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitLoadReporter"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 2
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

    .line 52
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    .line 53
    iget-object p3, p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->cause:Ljava/lang/Throwable;

    iget-object v0, p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    .line 55
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget p2, p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->errorCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "SplitLoadReporter"

    const-string v1, "Failed to load split %s in process %s cost %d ms, error code: %d!"

    .line 53
    invoke-static {v0, p3, v1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
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

    .line 47
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SplitLoadReporter"

    const-string p2, "Success to load %s in process %s cost %d ms!"

    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
