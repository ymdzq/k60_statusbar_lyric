.class Lcom/android/settings/ConflictDialog$2;
.super Ljava/lang/Object;
.source "ConflictDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConflictDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConflictDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ConflictDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/ConflictDialog$2;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/android/settings/ConflictDialog$2;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-static {p1}, Lcom/android/settings/ConflictDialog;->-$$Nest$fgetmCallback(Lcom/android/settings/ConflictDialog;)Lcom/android/settings/CheckedCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/settings/ConflictDialog$2;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-static {p1}, Lcom/android/settings/ConflictDialog;->-$$Nest$fgetmCallback(Lcom/android/settings/ConflictDialog;)Lcom/android/settings/CheckedCallback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/CheckedCallback;->onCheckResult(Z)V

    .line 63
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.aod.style_list"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.miui.aod"

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/ConflictDialog$2;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConflictDialog"

    const-string/jumbo p2, "switch to aod failed: "

    .line 68
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
