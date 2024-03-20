.class Lcom/android/settings/MiuiMasterClear$8;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->cleanWalletData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$8;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 782
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$8;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MiuiMasterClear$8;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetwalletSkipCallback(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/ICallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/tsmclient/service/IMiTsmCleanSeService;->keepSeCard(Lcom/miui/tsmclient/service/ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MiuiMasterClear"

    .line 784
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$8;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputneedShowBackupDialg(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 787
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$8;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mshowConfirmDialog(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method
