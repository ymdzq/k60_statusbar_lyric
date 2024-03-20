.class public Lcom/android/settings/inputmethod/InputMethodFullScreenManager;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodFullScreenManager.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnableFullScreenKeyboardObserver:Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;

.field private mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

.field private mLeftPreference:Lmiuix/preference/DropDownPreference;

.field private mMiddlePreference:Lmiuix/preference/DropDownPreference;

.field private mRightPreference:Lmiuix/preference/DropDownPreference;

.field private mSelectedValueMiddleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedValueSideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mupdateFunctionPreferenceEnable(Lcom/android/settings/inputmethod/InputMethodFullScreenManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->updateFunctionPreferenceEnable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueSideList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueMiddleList:Ljava/util/ArrayList;

    return-void
.end method

.method private updateFunctionPreferenceEnable()V
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_ime_bottom_view"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mLeftPreference:Lmiuix/preference/DropDownPreference;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mRightPreference:Lmiuix/preference/DropDownPreference;

    if-ne v0, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 117
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mMiddlePreference:Lmiuix/preference/DropDownPreference;

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 1

    .line 141
    sget p1, Lcom/android/settings/R$id;->high_keyboard:I

    const-string v0, "enable_miui_ime_bottom_view"

    if-ne p2, p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addMiuiBottomEnableRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    sget p1, Lcom/android/settings/R$id;->default_keyboard:I

    if-ne p2, p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    const-string p1, "0"

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addMiuiBottomEnableRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "FullScreenInputMethod"

    const-string p1, "check full screen ime error."

    .line 148
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/android/settings/R$xml;->full_keyboard_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    .line 52
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueSideList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$array;->input_method_function_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueMiddleList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->input_method_middle_function_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p1, "left_function_key"

    .line 56
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mLeftPreference:Lmiuix/preference/DropDownPreference;

    .line 57
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getSelectedFunctionIndex(Landroid/content/Context;Z)I

    move-result p1

    .line 59
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mLeftPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    const-string/jumbo p1, "right_function_key"

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mRightPreference:Lmiuix/preference/DropDownPreference;

    .line 62
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getSelectedFunctionIndex(Landroid/content/Context;Z)I

    move-result p1

    .line 64
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mRightPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    const-string/jumbo p1, "middle_function_key"

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mMiddlePreference:Lmiuix/preference/DropDownPreference;

    .line 67
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getMiddleFunctionSelectedIndex(Landroid/content/Context;)I

    move-result p1

    .line 69
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mMiddlePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    const-string p1, "full_screen_keyboard_optimization_image"

    .line 71
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "enable_miui_ime_bottom_view"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 73
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighKeyboardChecked(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$drawable;->keyboard_settings_image_high:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighImage(I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$drawable;->keyboard_settings_image_normal:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setDefaultImage(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$string;->multifunction_keyboard:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighText(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$string;->default_keyboard:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setDefaultText(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mFullIMEPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mLeftPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v1, :cond_0

    .line 124
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueSideList:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "full_screen_keyboard_left_function"

    .line 126
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getSelectedFunctionKeyByIndex(I)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mRightPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v1, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueSideList:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "full_screen_keyboard_right_function"

    .line 130
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getSelectedFunctionKeyByIndex(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mMiddlePreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v1, :cond_2

    .line 132
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mSelectedValueMiddleList:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "full_screen_keyboard_middle_function"

    .line 134
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getMiddleFunctionSelectedKeyByIndex(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->updateFunctionPreferenceEnable()V

    .line 88
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodFullScreenManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;

    :cond_0
    const-string v1, "enable_miui_ime_bottom_view"

    .line 91
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->mEnableFullScreenKeyboardObserver:Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
