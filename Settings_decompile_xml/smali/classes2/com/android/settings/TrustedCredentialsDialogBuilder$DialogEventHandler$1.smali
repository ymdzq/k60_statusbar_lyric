.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickEnableOrDisable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-$$Nest$fgetmDelegate(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-interface {p1, p2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->removeOrInstallCert(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    .line 167
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->-$$Nest$mnextOrDismiss(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    return-void
.end method
