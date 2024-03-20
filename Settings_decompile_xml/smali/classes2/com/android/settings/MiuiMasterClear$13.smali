.class Lcom/android/settings/MiuiMasterClear$13;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Lcom/android/settings/MiuiMasterClear$WipeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->wipeFrpBlockDataAndDoMasterClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public static synthetic $r8$lambda$VXxs_6OYaqqe63pLFbEhQpgqy2Y(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mdoMasterClear(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z88L5NpaBKMs5xuan-Nmoo88mng(Lcom/android/settings/MiuiMasterClear$13;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear$13;->lambda$onWipeFinished$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$13;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onWipeFinished$0()V
    .locals 3

    const-string v0, "MiuiMasterClear"

    :try_start_0
    const-string/jumbo v1, "prepare to clear car key"

    .line 910
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$13;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MiuiMasterClear$13$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiMasterClear$13$1;-><init>(Lcom/android/settings/MiuiMasterClear$13;)V

    invoke-interface {v1, v2}, Lcom/miui/tsmclient/service/IMiTsmCleanSeService;->cleanSeCard(Lcom/miui/tsmclient/service/ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 924
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$13;->this$0:Lcom/android/settings/MiuiMasterClear;

    new-instance v0, Lcom/android/settings/MiuiMasterClear$13$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$13$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onWipeFinished()V
    .locals 1

    .line 908
    new-instance v0, Lcom/android/settings/MiuiMasterClear$13$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$13$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiMasterClear$13;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
