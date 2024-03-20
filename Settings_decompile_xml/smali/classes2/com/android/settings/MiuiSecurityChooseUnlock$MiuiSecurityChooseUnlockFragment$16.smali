.class Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;
.super Ljava/lang/Object;
.source "MiuiSecurityChooseUnlock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->showConfirmDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1034
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->-$$Nest$fgetisDismiss(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1035
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->-$$Nest$mturnoffPassword(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    .line 1036
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->-$$Nest$mhandleRemoveAllFingerprints(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    .line 1037
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->-$$Nest$fputisDismiss(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Z)V

    :cond_0
    return-void
.end method
