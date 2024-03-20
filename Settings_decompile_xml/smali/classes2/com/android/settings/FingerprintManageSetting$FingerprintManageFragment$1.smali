.class Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$1;
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

    .line 132
    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$1;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 135
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$1;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    const-string v2, "com.android.settings.MiuiGxzwQuickOpenFragment"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/R$string;->gxzw_quick_open_title:I

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    const/4 p0, 0x1

    return p0
.end method
