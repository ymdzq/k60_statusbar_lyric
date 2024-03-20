.class Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$2;
.super Ljava/lang/Object;
.source "FingerprintManageSetting.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$2;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 167
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$2;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$2;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
