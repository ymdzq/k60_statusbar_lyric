.class Lcom/android/settings/KeyShortcutSettingsFragment$1;
.super Ljava/lang/Object;
.source "KeyShortcutSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyShortcutSettingsFragment;->bringUpActionChooseDlg(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$function:Ljava/lang/String;

.field final synthetic val$preference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyShortcutSettingsFragment;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$preference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p3, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$function:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    const-string/jumbo v0, "none"

    if-ne p2, p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/KeyShortcutSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$preference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 263
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$function:Ljava/lang/String;

    const/4 v2, -0x2

    .line 262
    invoke-static {p1, p2, v1, v2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 264
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$preference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$function:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/KeyShortcutSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$action:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 267
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fgetmShortcutPreferenceMap(Lcom/android/settings/KeyShortcutSettingsFragment;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$action:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/KeyShortcutSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$preference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 271
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-static {p1, p2}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->val$preference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {p2, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 274
    :goto_1
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fgetmFunctionChangeDialog(Lcom/android/settings/KeyShortcutSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fgetmFunctionChangeDialog(Lcom/android/settings/KeyShortcutSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 276
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment$1;->this$0:Lcom/android/settings/KeyShortcutSettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/KeyShortcutSettingsFragment;->-$$Nest$fputmFunctionChangeDialog(Lcom/android/settings/KeyShortcutSettingsFragment;Lmiuix/appcompat/app/AlertDialog;)V

    :cond_2
    return-void
.end method
