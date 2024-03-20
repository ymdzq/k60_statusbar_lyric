.class Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;
.super Landroid/os/Handler;
.source "NewMiuiNfcRepairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wireless/NewMiuiNfcRepairController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;


# direct methods
.method constructor <init>(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/os/Looper;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    iget-object v0, v0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->-$$Nest$mupdateState(Lcom/android/settings/wireless/NewMiuiNfcRepairController;I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->-$$Nest$mupdateState(Lcom/android/settings/wireless/NewMiuiNfcRepairController;I)V

    .line 211
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    invoke-static {p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->-$$Nest$fgetmDialog(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->-$$Nest$fputmWhichBtn(Lcom/android/settings/wireless/NewMiuiNfcRepairController;I)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    invoke-static {p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->-$$Nest$fgetmDialog(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 214
    iget-object p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;->this$0:Lcom/android/settings/wireless/NewMiuiNfcRepairController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->-$$Nest$fputmDialog(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method
