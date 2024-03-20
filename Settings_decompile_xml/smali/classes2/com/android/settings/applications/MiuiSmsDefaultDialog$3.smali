.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MiuiSmsDefaultDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->-$$Nest$fgetmCurrentDialog(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
