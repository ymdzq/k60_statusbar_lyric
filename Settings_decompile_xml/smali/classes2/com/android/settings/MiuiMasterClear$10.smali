.class Lcom/android/settings/MiuiMasterClear$10;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
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

    .line 794
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$10;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 797
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$10;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p2}, Lcom/miui/tsmclient/service/IMiTsmCleanSeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;Lcom/miui/tsmclient/service/IMiTsmCleanSeService;)V

    .line 798
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    return-void

    .line 802
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$10;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$10;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetwalletSkipCallback(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/ICallback;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/miui/tsmclient/service/IMiTsmCleanSeService;->querySeCard(Lcom/miui/tsmclient/service/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "query se card error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiMasterClear"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$10;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;Lcom/miui/tsmclient/service/IMiTsmCleanSeService;)V

    return-void
.end method
