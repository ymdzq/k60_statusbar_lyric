.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitCleanService;
.super Landroid/app/IntentService;
.source "SplitCleanService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "qigsaw_split_clean"

    .line 40
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doClean()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->clearCache()V

    .line 54
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->cleanMiCache(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitCleanService;->doClean()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
