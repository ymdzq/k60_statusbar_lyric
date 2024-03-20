.class public Lcom/android/settings/widget/LocaleRadioButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "LocaleRadioButtonPreference.java"


# instance fields
.field private final LOCALE_TAIWAN:Ljava/lang/String;

.field private mLocaleInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/LocaleRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo p1, "zh_TW"

    .line 19
    iput-object p1, p0, Lcom/android/settings/widget/LocaleRadioButtonPreference;->LOCALE_TAIWAN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocaleInfo()Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/LocaleRadioButtonPreference;->mLocaleInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;

    return-object p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    const v0, 0x1020016    # @android:id/title

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    .line 36
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/widget/LocaleRadioButtonPreference;->getLocaleInfo()Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, v4}, Lcom/android/settings/MiuiUtils;->overlayLocaleLanguageLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/android/settings/MiuiUtils;->needOverlayTwLocale()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh_TW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 43
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    :cond_1
    return-void
.end method

.method public setLocaleInfo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/widget/LocaleRadioButtonPreference;->mLocaleInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;

    return-void
.end method
