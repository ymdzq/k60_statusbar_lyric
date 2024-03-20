.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyPasswordConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
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

    .line 181
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 186
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$munregisterFingerprint(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmStop(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 189
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$mregisterFingerprintDelayed(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    :cond_1
    :goto_0
    return-void
.end method
