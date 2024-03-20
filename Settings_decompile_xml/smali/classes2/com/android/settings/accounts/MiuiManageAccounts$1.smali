.class Lcom/android/settings/accounts/MiuiManageAccounts$1;
.super Ljava/lang/Object;
.source "MiuiManageAccounts.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiManageAccounts;->updatePreferenceIntents(Landroidx/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiManageAccounts;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccounts$1;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    iput-object p2, p0, Lcom/android/settings/accounts/MiuiManageAccounts$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 522
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 530
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccounts$1;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccounts$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/accounts/MiuiManageAccounts;->-$$Nest$misSafeIntent(Lcom/android/settings/accounts/MiuiManageAccounts;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccounts$1;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccounts$1;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Refusing to launch authenticator intent because it exploits Settings permissions: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
