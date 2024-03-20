.class public Lcom/android/settingslib/miuisettings/preference/ButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mText:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settingslib/miuisettings/preference/ButtonPreference;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->mListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020019    # @android:id/button1

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;-><init>(Lcom/android/settingslib/miuisettings/preference/ButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->mListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->mText:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
