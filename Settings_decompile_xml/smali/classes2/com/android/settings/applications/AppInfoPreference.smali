.class public Lcom/android/settings/applications/AppInfoPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "AppInfoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppInfoPreference$AppInfo;
    }
.end annotation


# instance fields
.field private mAppInfo:Lcom/android/settings/applications/AppInfoPreference$AppInfo;

.field private mAppVersion:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateUi()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppInfo:Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    if-eqz v0, :cond_3

    .line 71
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, v0, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoPreference;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppInfo:Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    iget-object v1, v1, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppVersion:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 80
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppInfo:Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    iget-boolean v2, v1, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mAppVersionVisible:Z

    if-eqz v2, :cond_2

    .line 81
    iget-object v1, v1, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppVersion:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoPreference;->mIcon:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/android/settings/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoPreference;->mLabel:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/android/settings/R$id;->app_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppVersion:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoPreference;->updateUi()V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 49
    sget p1, Lcom/android/settings/R$layout;->manage_applications_item:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAppInfo(Lcom/android/settings/applications/AppInfoPreference$AppInfo;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/applications/AppInfoPreference;->mAppInfo:Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoPreference;->updateUi()V

    return-void
.end method
