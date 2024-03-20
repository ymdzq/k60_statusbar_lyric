.class public Lcom/android/settings/MiuiConfirmCommonPassword;
.super Lcom/android/settings/SettingsCompatActivity;
.source "MiuiConfirmCommonPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsCompatActivity;-><init>()V

    return-void
.end method

.method public static getExtraFragmentName()Ljava/lang/String;
    .locals 1

    .line 68
    const-class v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p0, ":settings:show_fragment"

    .line 57
    invoke-static {}, Lcom/android/settings/MiuiConfirmCommonPassword;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title"

    .line 58
    sget v1, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
