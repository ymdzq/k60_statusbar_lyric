.class Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;
.super Ljava/lang/Object;
.source "GestureShortcutSettingsSelectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GestureShortcutSettingsSelectFragment;->bringDialog(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

.field final synthetic val$preference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    iput-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->val$preference:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmContentResolver(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->val$preference:Landroidx/preference/CheckBoxPreference;

    .line 299
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmTitleKey(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    .line 298
    invoke-static {p1, p2, v0, v1}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->val$preference:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 303
    :goto_0
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fgetmActionChangeDialog(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->-$$Nest$fputmActionChangeDialog(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Lmiuix/appcompat/app/AlertDialog;)V

    :cond_1
    return-void
.end method
