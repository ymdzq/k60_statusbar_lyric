.class public Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "CheckBoxPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;


# instance fields
.field private mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "http://schemas.android.com/apk/miuisettings"

    const-string/jumbo v2, "showIcon"

    .line 36
    invoke-interface {p1, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    :cond_0
    new-instance p1, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-direct {p1, p0, p0, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;-><init>(Landroidx/preference/Preference;Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;Z)V

    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 0
    return-void
.end method
