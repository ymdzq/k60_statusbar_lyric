.class public interface abstract Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
.super Ljava/lang/Object;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLockTypeSelectedListener"
.end annotation


# virtual methods
.method public abstract onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
.end method

.method public startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V
    .locals 3

    .line 71
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000000

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "request_gk_pw_handle"

    const/4 v2, 0x0

    .line 76
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->-$$Nest$smcopyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    const-string/jumbo v1, "show_options_button"

    .line 78
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->-$$Nest$smcopyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    const-string v1, "choose_lock_generic_extras"

    .line 80
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v1, "lockscreen.password_type"

    .line 85
    iget p1, p1, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method
