.class Lcom/android/settings/ConflictDialog$1;
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

    .line 48
    iput-object p1, p0, Lcom/android/settings/ConflictDialog$1;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/android/settings/ConflictDialog$1;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-static {p1}, Lcom/android/settings/ConflictDialog;->-$$Nest$fgetmCallback(Lcom/android/settings/ConflictDialog;)Lcom/android/settings/CheckedCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p0, p0, Lcom/android/settings/ConflictDialog$1;->this$0:Lcom/android/settings/ConflictDialog;

    invoke-static {p0}, Lcom/android/settings/ConflictDialog;->-$$Nest$fgetmCallback(Lcom/android/settings/ConflictDialog;)Lcom/android/settings/CheckedCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/CheckedCallback;->onCheckResult(Z)V

    :cond_0
    return-void
.end method
