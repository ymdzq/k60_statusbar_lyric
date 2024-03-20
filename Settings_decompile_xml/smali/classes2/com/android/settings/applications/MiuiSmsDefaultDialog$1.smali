.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 60
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->-$$Nest$fputmCurrentDialog(Lcom/android/settings/applications/MiuiSmsDefaultDialog;I)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method
