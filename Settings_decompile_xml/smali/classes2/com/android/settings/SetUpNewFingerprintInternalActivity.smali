.class public Lcom/android/settings/SetUpNewFingerprintInternalActivity;
.super Lcom/android/settings/NewFingerprintInternalActivity;
.source "SetUpNewFingerprintInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/NewFingerprintInternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 39
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    const-class p0, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "setup"

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 43
    :cond_0
    const-class p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, ":settings:show_fragment"

    .line 45
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title"

    .line 46
    sget v1, Lcom/android/settings/R$string;->add_fingerprint_text:I

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
