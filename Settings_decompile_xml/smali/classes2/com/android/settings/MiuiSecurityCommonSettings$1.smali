.class Lcom/android/settings/MiuiSecurityCommonSettings$1;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityCommonSettings;->setFragmentResultOnDetach(Landroidx/fragment/app/Fragment;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$savebundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;ILjava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$savebundle:Landroid/os/Bundle;

    iput p2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$result:I

    iput-object p3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$savebundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "miui_security_fragment_result"

    .line 80
    iget v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$result:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "password"

    .line 81
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    invoke-static {v1, p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->onFragmentResult(Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)V

    return-void
.end method
