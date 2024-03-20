.class Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;
.super Ljava/lang/Object;
.source "MiuiManageAccounts.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiManageAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStarter"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mTitleRes:I

.field final synthetic this$0:Lcom/android/settings/accounts/MiuiManageAccounts;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/MiuiManageAccounts;Ljava/lang/String;I)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->mClass:Ljava/lang/String;

    .line 456
    iput p3, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->mTitleRes:I

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 461
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->mClass:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->mTitleRes:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    .line 464
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->mClass:Ljava/lang/String;

    const-class v0, Lcom/android/settings/location/MiuiLocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiManageAccounts$FragmentStarter;->this$0:Lcom/android/settings/accounts/MiuiManageAccounts;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
