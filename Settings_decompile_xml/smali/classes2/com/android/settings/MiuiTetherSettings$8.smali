.class Lcom/android/settings/MiuiTetherSettings$8;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->popupEvent(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;

.field final synthetic val$istether:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 845
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    iput-object p2, p0, Lcom/android/settings/MiuiTetherSettings$8;->val$istether:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 847
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$8;->val$istether:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 848
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Lcom/android/settings/MiuiTetherSettings;->onHotspot()V

    .line 849
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgettetherDialog(Lcom/android/settings/MiuiTetherSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p0

    const-string/jumbo p2, "tethering_prompt_state"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 851
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mstartProvisioningIfNecessary(Lcom/android/settings/MiuiTetherSettings;I)V

    .line 852
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$8;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetusbDialog(Lcom/android/settings/MiuiTetherSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p0

    const-string/jumbo p2, "usbnetwork_prompt_state"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
