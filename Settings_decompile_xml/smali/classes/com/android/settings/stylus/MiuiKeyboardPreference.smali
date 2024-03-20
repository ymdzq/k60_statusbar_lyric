.class public Lcom/android/settings/stylus/MiuiKeyboardPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiKeyboardPreference.java"


# instance fields
.field private mEnable:Z

.field private mKeyboard:Lcom/android/settings/stylus/MiuiKeyboard;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/android/settings/stylus/MiuiKeyboardPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/stylus/MiuiKeyboardPreference;->mEnable:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/MiuiKeyboardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/MiuiKeyboardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiKeyboardPreference;->mEnable:Z

    .line 26
    sget p1, Lcom/android/settings/R$layout;->keyboard_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/MiuiKeyboardPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 33
    new-instance v0, Lcom/android/settings/stylus/MiuiKeyboardPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/MiuiKeyboardPreference$1;-><init>(Lcom/android/settings/stylus/MiuiKeyboardPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 41
    sget v0, Lcom/android/settings/R$id;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/stylus/MiuiKeyboard;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiKeyboardPreference;->mKeyboard:Lcom/android/settings/stylus/MiuiKeyboard;

    .line 42
    iget-boolean p0, p0, Lcom/android/settings/stylus/MiuiKeyboardPreference;->mEnable:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/stylus/MiuiKeyboard;->setEnable(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiKeyboardPreference;->mEnable:Z

    .line 49
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiKeyboardPreference;->mKeyboard:Lcom/android/settings/stylus/MiuiKeyboard;

    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/MiuiKeyboard;->setEnable(Z)V

    return-void
.end method
