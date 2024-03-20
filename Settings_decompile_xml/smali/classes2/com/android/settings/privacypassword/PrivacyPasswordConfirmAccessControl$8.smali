.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->createOpenFingerprintDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 765
    iget-object p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object p2, p2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setIsNeverRemindOpenFinger(Z)V

    .line 766
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$msetFingerprint(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    return-void
.end method
