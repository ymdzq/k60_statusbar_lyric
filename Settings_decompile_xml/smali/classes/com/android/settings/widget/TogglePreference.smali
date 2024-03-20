.class public Lcom/android/settings/widget/TogglePreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "TogglePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnBeforeListener(Lcom/android/settings/widget/TogglePreference;)Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/TogglePreference;->mOnBeforeListener:Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/TogglePreference;->mOnBeforeListener:Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;

    .line 34
    new-instance p1, Lcom/android/settings/widget/TogglePreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/TogglePreference$1;-><init>(Lcom/android/settings/widget/TogglePreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
