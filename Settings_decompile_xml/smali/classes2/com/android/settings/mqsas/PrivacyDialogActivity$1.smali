.class Lcom/android/settings/mqsas/PrivacyDialogActivity$1;
.super Ljava/lang/Object;
.source "PrivacyDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 39
    iput-object p1, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity$1;->this$0:Lcom/android/settings/mqsas/PrivacyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity$1;->this$0:Lcom/android/settings/mqsas/PrivacyDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
