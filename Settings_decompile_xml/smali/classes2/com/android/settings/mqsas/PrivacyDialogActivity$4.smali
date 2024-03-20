.class Lcom/android/settings/mqsas/PrivacyDialogActivity$4;
.super Ljava/lang/Object;
.source "PrivacyDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/mqsas/PrivacyDialogActivity;->showPrivacyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mqsas/PrivacyDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/mqsas/PrivacyDialogActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity$4;->this$0:Lcom/android/settings/mqsas/PrivacyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 62
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity$4;->this$0:Lcom/android/settings/mqsas/PrivacyDialogActivity;

    invoke-static {v0}, Lcom/android/settings/mqsas/PrivacyDialogActivity;->-$$Nest$fgetmType(Lcom/android/settings/mqsas/PrivacyDialogActivity;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity$4;->this$0:Lcom/android/settings/mqsas/PrivacyDialogActivity;

    invoke-static {p0}, Lcom/android/settings/mqsas/PrivacyDialogActivity;->-$$Nest$fgetmDgt(Lcom/android/settings/mqsas/PrivacyDialogActivity;)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    .line 63
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    const/4 v1, 0x2

    .line 62
    invoke-virtual {p2, v1, v0, p0, p1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->dialogButtonChecked(IILjava/lang/String;Z)V

    return-void
.end method
