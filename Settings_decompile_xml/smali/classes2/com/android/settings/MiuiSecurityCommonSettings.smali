.class public Lcom/android/settings/MiuiSecurityCommonSettings;
.super Lcom/android/settings/SettingsCompatActivity;
.source "MiuiSecurityCommonSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;
    }
.end annotation


# static fields
.field private static mLoadingDialog:Landroid/app/ProgressDialog;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmLoadingDialog()Landroid/app/ProgressDialog;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/MiuiSecurityCommonSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmLoadingDialog(Landroid/app/ProgressDialog;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/MiuiSecurityCommonSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsCompatActivity;-><init>()V

    return-void
.end method

.method public static setFragmentResultOnDetach(Landroidx/fragment/app/Fragment;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->instanceofSettingsPreFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v1, Lcom/android/settings/MiuiSecurityCommonSettings$1;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/android/settings/MiuiSecurityCommonSettings$1;-><init>(Landroid/os/Bundle;ILjava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 59
    const-class p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
