.class public Lcom/android/settings/dndmode/LabelPreference;
.super Lcom/android/settingslib/miuisettings/preference/ValuePreference;
.source "LabelPreference.java"


# instance fields
.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/settings/dndmode/LabelPreference;->mLabel:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/android/settings/dndmode/LabelPreference;->mLabel:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
