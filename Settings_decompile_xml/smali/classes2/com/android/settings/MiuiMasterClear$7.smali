.class Lcom/android/settings/MiuiMasterClear$7;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear;->showConfirmDialog()V
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

    .line 751
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$7;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 753
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$7;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputneedShowBackupDialg(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 754
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$7;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputisShowOnce(Lcom/android/settings/MiuiMasterClear;Z)V

    return-void
.end method
