.class Lcom/android/settings/MiuiMasterClear$4;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->showResetESimConfirmDialog()V
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

    .line 555
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$4;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 558
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$4;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->supportDeleteEsimRequireNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 559
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$4;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mrunCheckEsimStatusForDelete(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$4;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmEraseEsim(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 562
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$4;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$msetESimStateIfNeed(Lcom/android/settings/MiuiMasterClear;I)V

    .line 563
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$4;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mrunFindDeviceCheckAndDoMasterClean(Lcom/android/settings/MiuiMasterClear;)V

    :goto_0
    return-void
.end method
