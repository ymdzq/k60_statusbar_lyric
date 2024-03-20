.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$6;
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

    .line 98
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$6;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$6;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
