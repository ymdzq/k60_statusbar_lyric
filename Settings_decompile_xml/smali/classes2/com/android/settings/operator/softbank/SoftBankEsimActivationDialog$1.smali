.class Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$1;
.super Ljava/lang/Object;
.source "SoftBankEsimActivationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string/jumbo p1, "provision_wifi_skip"

    const/4 p2, 0x0

    .line 54
    invoke-static {p1, p2}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "eSim"

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    iget-object p2, p0, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$1;->val$activity:Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 58
    iget-object p0, p0, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
