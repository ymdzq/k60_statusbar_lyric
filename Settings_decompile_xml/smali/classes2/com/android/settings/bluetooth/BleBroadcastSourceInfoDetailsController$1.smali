.class Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;
.super Ljava/lang/Object;
.source "BleBroadcastSourceInfoDetailsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->onRemoveBroadcastSourceInfoPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->-$$Nest$fgetmScanAssistGroupOpDialog(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->-$$Nest$fgetmScanAssistGroupOpDialog(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 198
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->-$$Nest$fputmScanAssistGroupOpDialog(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;Landroidx/appcompat/app/AlertDialog;)V

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->-$$Nest$fputmGroupOp(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;Z)V

    .line 201
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;->-$$Nest$mtriggerRemoveBroadcastSource(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;)V

    return-void
.end method
