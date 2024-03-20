.class Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;
.super Ljava/lang/Object;
.source "WakeupXiaoaiSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WakeupXiaoaiSettingsFragment;->bringDialog(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 248
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->val$preference:Landroidx/preference/Preference;

    instance-of p1, p1, Lmiuix/preference/RadioButtonPreference;

    const/4 p2, -0x2

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmSelectedRadioButton(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    .line 249
    invoke-static {p1, v0, v1, p2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 252
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->val$preference:Landroidx/preference/Preference;

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    invoke-static {p1, v0}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fputmSelectedRadioButton(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Lmiuix/preference/RadioButtonPreference;)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmKeyCategory(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/preference/RadioButtonPreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmSelectedRadioButton(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->val$preference:Landroidx/preference/Preference;

    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 256
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->val$preference:Landroidx/preference/Preference;

    .line 259
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {p1, v0, v1, p2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmActionChangeDialog(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 262
    iget-object p1, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fgetmActionChangeDialog(Lcom/android/settings/WakeupXiaoaiSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 263
    iget-object p0, p0, Lcom/android/settings/WakeupXiaoaiSettingsFragment$2;->this$0:Lcom/android/settings/WakeupXiaoaiSettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/WakeupXiaoaiSettingsFragment;->-$$Nest$fputmActionChangeDialog(Lcom/android/settings/WakeupXiaoaiSettingsFragment;Lmiuix/appcompat/app/AlertDialog;)V

    :cond_3
    return-void
.end method
