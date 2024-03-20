.class public Lcom/android/settings/KeyShortcutSettingsFragment;
.super Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;
.source "KeyShortcutSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFunctionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mPressMenuToAppSwitch:Z

.field private mResources:Landroid/content/res/Resources;

.field private mShortcutPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/KeyShortcutSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFunctionChangeDialog(Lcom/android/settings/KeyShortcutSettingsFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mFunctionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShortcutPreferenceMap(Lcom/android/settings/KeyShortcutSettingsFragment;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFunctionChangeDialog(Lcom/android/settings/KeyShortcutSettingsFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mFunctionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mFunctionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private bringUpActionChooseDlg(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mFunctionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/android/settings/KeyShortcutSettingsFragment$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/KeyShortcutSettingsFragment$1;-><init>(Lcom/android/settings/KeyShortcutSettingsFragment;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    .line 282
    invoke-virtual {p3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    .line 281
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 282
    invoke-virtual {p3}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 283
    iget-object v1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 284
    invoke-static {v1, p2}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 283
    invoke-static {p2, v1}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 285
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 286
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->key_gesture_function_dialog_message:I

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 287
    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_positive:I

    .line 289
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_negative:I

    .line 290
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 291
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mFunctionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 292
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getSummary(Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p2}, Lcom/android/settings/KeyShortcutSettingsFragment;->resetSummary(Ljava/util/Map;)V

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v1, "press_menu"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "long_press_home_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "long_press_menu_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "long_press_back_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 173
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->show_menu:I

    .line 175
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "show_menu"

    .line 174
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->launch_recents:I

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "launch_recents"

    .line 176
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->split_screen:I

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "split_screen"

    .line 166
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->go_to_sleep:I

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "go_to_sleep"

    .line 169
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 183
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->key_none:I

    .line 184
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "none"

    .line 183
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    .line 187
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x9bcf05a -> :sswitch_3
        0x53db241e -> :sswitch_2
        0x5add439e -> :sswitch_1
        0x6f895bdb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getValue(Ljava/util/Map;)[Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    .line 193
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private resetSummary(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->launch_camera:I

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_camera"

    .line 198
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->screen_shot:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screen_shot"

    .line 200
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->supportPartialScreenShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->regional_screen_shot:I

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "partial_screen_shot"

    .line 203
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v1, "launch_google_search"

    goto :goto_0

    :cond_1
    const-string v1, "launch_voice_assistant"

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 210
    sget v0, Lcom/android/settings/R$string;->launch_google_search:I

    goto :goto_1

    .line 211
    :cond_2
    sget v0, Lcom/android/settings/R$string;->launch_voice_assistant:I

    .line 209
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->close_app:I

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "close_app"

    .line 212
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->turn_on_torch:I

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "turn_on_torch"

    .line 215
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->dump_log:I

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump_log"

    .line 219
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mPressMenuToAppSwitch:Z

    if-nez v0, :cond_5

    .line 223
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->launch_recents:I

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "launch_recents"

    .line 223
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 226
    :cond_5
    iget-object p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->show_menu:I

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "show_menu"

    .line 226
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private updateDropPreferenceInfo(Ljava/lang/String;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/MiuiShortcut$Key;->getKeyShortcutAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "press_menu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/settings/KeyShortcutSettingsFragment;->getSummary(Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/KeyShortcutSettingsFragment;->getValue(Ljava/util/Map;)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, -0x2

    .line 242
    invoke-static {v2, v1, v3, v4}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mResources:Landroid/content/res/Resources;

    .line 47
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->KEY_PAGE_KEY:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mPageTitle:Ljava/lang/String;

    .line 48
    sget p1, Lcom/android/settings/R$xml;->keyshortcut_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_key_press_app_switch"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mPressMenuToAppSwitch:Z

    .line 54
    sget-object p1, Lcom/android/settings/MiuiShortcut$Key;->KEY_SHORTCUT_ACTION:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 55
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v5, :cond_3

    .line 57
    iget-object v6, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    invoke-direct {p0, v4, v6}, Lcom/android/settings/KeyShortcutSettingsFragment;->getSummary(Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0, v6}, Lcom/android/settings/KeyShortcutSettingsFragment;->getValue(Ljava/util/Map;)[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "press_menu"

    .line 61
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 62
    iget-object v7, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-virtual {v5, v4}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string/jumbo v4, "none"

    .line 67
    invoke-virtual {v5, v4}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mPressMenuToAppSwitch:Z

    if-eqz v4, :cond_2

    const-string v4, "launch_recents"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "show_menu"

    .line 70
    :goto_1
    invoke-virtual {v5, v4}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 74
    :goto_2
    invoke-virtual {v5, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "pref_fingerprint_nav_center_to_home"

    .line 79
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_single_key_use"

    .line 81
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    .line 83
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->supportFpNavCenterToHome()Z

    move-result v3

    if-nez v3, :cond_5

    .line 84
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 85
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 87
    :cond_5
    iget-object v3, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "single_key_use_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 90
    iget-object v4, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_nav_center_action"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    .line 93
    :goto_3
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne v4, v1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    .line 95
    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 106
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_fingerprint_nav_center_to_home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TRUE"

    const-string v2, "FALSE"

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-eqz v0, :cond_1

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "fingerprint_nav_center_action"

    invoke-static {p2, v0, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 113
    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v0, "pref_single_key_use"

    .line 114
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "single_key_use_enable"

    invoke-static {p2, v0, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 120
    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_3
    const-string/jumbo v0, "none"

    .line 122
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiShortcut$Key;->getKeyShortcutAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 125
    :goto_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "press_menu"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    check-cast p2, Ljava/lang/String;

    const-string p1, "launch_recents"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mPressMenuToAppSwitch:Z

    .line 127
    invoke-direct {p0, p2}, Lcom/android/settings/KeyShortcutSettingsFragment;->updateDropPreferenceInfo(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "screen_key_press_app_switch"

    iget-boolean v1, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mPressMenuToAppSwitch:Z

    invoke-static {p2, v0, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 131
    iget-object p2, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mPressMenuToAppSwitch:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo p1, "show_menu"

    :goto_3
    invoke-interface {p2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_9

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 135
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 136
    iget-object v6, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 138
    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v6, v5, v7}, Lcom/android/settings/KeyShortcutSettingsFragment;->bringUpActionChooseDlg(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)V

    :cond_8
    if-le v2, v3, :cond_7

    .line 142
    iget-object v6, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mShortcutPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v6, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v0, v4}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_4

    .line 148
    :cond_9
    iget-object v0, p0, Lcom/android/settings/KeyShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .line 148
    invoke-static {v0, v1, p2, v4}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 151
    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    return v3
.end method
