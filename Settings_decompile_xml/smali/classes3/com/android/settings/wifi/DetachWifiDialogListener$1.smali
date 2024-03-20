.class Lcom/android/settings/wifi/DetachWifiDialogListener$1;
.super Ljava/lang/Object;
.source "DetachWifiDialogListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/DetachWifiDialogListener;->clearOnDetach(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/DetachWifiDialogListener;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/DetachWifiDialogListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/wifi/DetachWifiDialogListener$1;->this$0:Lcom/android/settings/wifi/DetachWifiDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/android/settings/wifi/DetachWifiDialogListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dialog Attached to Window"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowDetached()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/android/settings/wifi/DetachWifiDialogListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog Detached to Window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/DetachWifiDialogListener$1;->this$0:Lcom/android/settings/wifi/DetachWifiDialogListener;

    invoke-static {v0}, Lcom/android/settings/wifi/DetachWifiDialogListener;->-$$Nest$fgetmActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/DetachWifiDialogListener$1;->this$0:Lcom/android/settings/wifi/DetachWifiDialogListener;

    invoke-static {v0}, Lcom/android/settings/wifi/DetachWifiDialogListener;->-$$Nest$fgetneedFinishActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/DetachWifiDialogListener$1;->this$0:Lcom/android/settings/wifi/DetachWifiDialogListener;

    invoke-static {v0}, Lcom/android/settings/wifi/DetachWifiDialogListener;->-$$Nest$fgetmActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/DetachWifiDialogListener$1;->this$0:Lcom/android/settings/wifi/DetachWifiDialogListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/DetachWifiDialogListener;->-$$Nest$fputmActivity(Lcom/android/settings/wifi/DetachWifiDialogListener;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
