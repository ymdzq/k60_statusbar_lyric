.class Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckEsimStatusForDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Lmiuix/appcompat/app/ProgressDialog;

.field private esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected isTimeOver:Z

.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public static synthetic $r8$lambda$K7PXnMYk_aYRJM6CBjdOpXTNlS4(Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->lambda$onPostExecute$1(Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxv-mG6R7T-OfjksRD5XSgrN4nA(Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->lambda$onPostExecute$0(Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 1488
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->isTimeOver:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiMasterClear;Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1631
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EsimStatusForDelete success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMasterClear"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-boolean v0, p1, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->success:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1633
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mrunFindDeviceCheckAndDoMasterClean(Lcom/android/settings/MiuiMasterClear;)V

    goto/16 :goto_0

    .line 1635
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check esim status error "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->extraMes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmESimInitialState(Lcom/android/settings/MiuiMasterClear;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1637
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0, v1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$msetESimStateIfNeed(Lcom/android/settings/MiuiMasterClear;I)V

    .line 1639
    :cond_2
    iget p1, p1, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorCode:I

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 1641
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->not_connected_to_wifi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->please_connect_to_the_wifi:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    .line 1642
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->got_it:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1641
    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/settings/MiuiMasterClear;->getEsimTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1642
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1645
    :cond_4
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->network_connection_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->please_connect_to_the_network:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    .line 1646
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->got_it:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1645
    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/settings/MiuiMasterClear;->getEsimTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1646
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1652
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiMasterClear;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V
    .locals 2

    .line 1623
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->unregisterReceiver()V

    .line 1624
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiMasterClear;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;
    .locals 10

    .line 1560
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmEraseEsim(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 1561
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$msetESimStateIfNeed(Lcom/android/settings/MiuiMasterClear;I)V

    .line 1562
    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$smgetEsimGPIOState()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "MiuiMasterClear"

    const-string v3, "CheckEsimStatusForDeleteTask wait"

    .line 1564
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-class p1, Lcom/android/settings/MiuiMasterClear;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :try_start_1
    const-class v3, Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1567
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "MiuiMasterClear"

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->unregisterReceiver()V

    .line 1571
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorStatus(ILjava/lang/String;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0

    .line 1575
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p1}, Lcom/android/settings/MiuiMasterClear;->getAllEsimProfiles()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "get esim profiles error"

    .line 1577
    invoke-static {v2, p0}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorStatus(ILjava/lang/String;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0

    .line 1580
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1581
    invoke-static {v1}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->okStatus(Z)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0

    .line 1584
    :cond_2
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/MiuiMasterClear;->getSpnEnforcedWifi(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 1585
    iget-object v3, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/MiuiMasterClear;->getMccMncEnforcedWifi(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    move v4, v1

    .line 1587
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 1588
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/euicc/EuiccProfileInfo;

    .line 1589
    invoke-virtual {v5}, Landroid/service/euicc/EuiccProfileInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MiuiMasterClear"

    .line 1590
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "profileInfo ServiceProviderName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v1, v0

    goto :goto_4

    .line 1595
    :cond_3
    invoke-virtual {v5}, Landroid/service/euicc/EuiccProfileInfo;->getCarrierIdentifier()Landroid/service/carrier/CarrierIdentifier;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 1599
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiMasterClear"

    .line 1600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profileInfo mccmnc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 1606
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->hasConnectWifi(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p0, 0x2

    const-string p1, "Not connected to Wi-Fi"

    .line 1607
    invoke-static {p0, p1}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorStatus(ILjava/lang/String;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0

    .line 1610
    :cond_7
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "Network connection error"

    .line 1611
    invoke-static {v0, p0}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorStatus(ILjava/lang/String;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0

    .line 1614
    :cond_8
    invoke-static {v1}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->okStatus(Z)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1486
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 4

    .line 1500
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "CheckEsimStatusForDeleteTask onCancelled"

    const-string v1, "MiuiMasterClear"

    .line 1501
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmESimInitialState(Lcom/android/settings/MiuiMasterClear;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$msetESimStateIfNeed(Lcom/android/settings/MiuiMasterClear;I)V

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1506
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1508
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->unregisterReceiver()V

    .line 1509
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->isTimeOver:Z

    if-eqz v0, :cond_2

    const-string v0, "check esim status timeover"

    .line 1510
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->load_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    .line 1512
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->load_esim_info_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->got_it:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 1511
    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/settings/MiuiMasterClear;->getEsimTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 1512
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method protected onPostExecute(Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V
    .locals 2

    .line 1620
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1622
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiMasterClear;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1486
    check-cast p1, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->onPostExecute(Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 1518
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1519
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 1520
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->load_esim_info:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1521
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 1522
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 1523
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->dialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1525
    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$smgetEsimGPIOState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "removeMessages ESIM_TIMEOUT_MSG"

    const-string v1, "MiuiMasterClear"

    .line 1526
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiMasterClear;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1528
    new-instance v0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;-><init>(Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1550
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 1551
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerReceiver esimStatusChangeReceiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected unregisterReceiver()V
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterReceiver esimStatusChangeReceiver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMasterClear"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1495
    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->esimStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
