.class public Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;
.super Ljava/lang/Object;
.source "DefaultSplitUninstallReporter.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitUninstallReporter"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;->context:Landroid/content/Context;

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

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SplitUninstallReporter"

    const-string p2, "Succeed to uninstall %s, cost time %d ms."

    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
