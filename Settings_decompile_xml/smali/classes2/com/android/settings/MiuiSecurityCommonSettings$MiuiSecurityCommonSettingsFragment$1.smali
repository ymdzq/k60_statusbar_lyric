.class Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "change_password"

    .line 126
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 127
    check-cast p2, Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 129
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const-string v2, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const-string v2, "add_keyguard_password_then_add_face_recoginition"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "facial"

    .line 132
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    const v2, 0x8000

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 133
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "pattern"

    .line 136
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    const/high16 v2, 0x10000

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 138
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    const/16 v3, 0x69

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 141
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetPattern(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "numerical"

    .line 144
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    const/high16 v2, 0x20000

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    const/16 v3, 0x69

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 149
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetNumericPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "mixed"

    .line 152
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-nez p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    const/high16 v2, 0x40000

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 154
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto :goto_0

    .line 157
    :cond_5
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Lcom/android/settings/MiuiChooseLockSettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    const/16 v3, 0x69

    invoke-static {v2}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmPasswordConfirmed(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->-$$Nest$fgetmUserPassword(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 157
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetMixedPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V

    :cond_6
    :goto_0
    return v0
.end method
