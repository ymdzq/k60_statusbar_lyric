.class Lcom/android/settings/MiuiMasterClear$3;
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

.field final synthetic val$builder:Lmiuix/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 567
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$3;->this$0:Lcom/android/settings/MiuiMasterClear;

    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$3;->val$builder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 570
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$3;->this$0:Lcom/android/settings/MiuiMasterClear;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fputmEraseEsim(Lcom/android/settings/MiuiMasterClear;Z)V

    .line 571
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$3;->val$builder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 572
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$3;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mrunFindDeviceCheckAndDoMasterClean(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method
