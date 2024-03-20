.class public Lcom/android/settings/wifi/WifiAssistantController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiAssistantController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static enableWifiAssistant(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_assistant"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static enableWifiAssistantDataPrompt(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_assistant_data_prompt"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static isWifiAssistantDataPromptEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "wifi_assistant_data_prompt"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isWifiAssistantEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "wifi_assistant"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private popupDialog()V
    .locals 4

    .line 73
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 74
    sget v1, Lcom/android/settings/R$string;->wifi_assistant_prompt:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 75
    sget v1, Lcom/android/settings/R$string;->wifi_assistant_prompt_summary:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 76
    sget v1, Lcom/android/settings/R$string;->wifi_assistant_prompt_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$layout;->wifi_assistant_prompt_dialog:I

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 79
    sget v2, Lcom/android/settings/R$id;->inquiry:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiAssistantController;->mButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 80
    iget-object v3, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiAssistantController;->isWifiAssistantDataPromptEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 81
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 84
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "wifi_assistant"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isWifiAssistantAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantController;->mButton:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p1, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiAssistantController;->enableWifiAssistantDataPrompt(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wifi_assistant"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/WifiAssistantController;->enableWifiAssistant(Landroid/content/Context;Z)V

    .line 66
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAssistantController;->popupDialog()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onStop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_assistant"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 57
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiAssistantController;->isWifiAssistantEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
