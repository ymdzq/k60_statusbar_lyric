.class public Lcom/android/settings/display/PaperModePreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "PaperModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;
    }
.end annotation


# instance fields
.field private mRightArrowClickListener:Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;

.field private mShowRightArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/PaperModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/settings/display/PaperModePreference;->mRightArrowClickListener:Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;

    .line 19
    sget p1, Lcom/android/settings/R$layout;->preference_widget_detail:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 29
    sget v0, Lcom/android/settings/R$id;->detail_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-boolean v0, p0, Lcom/android/settings/display/PaperModePreference;->mShowRightArrow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->accessibility_more_settings:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/android/settings/display/PaperModePreference;->mRightArrowClickListener:Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1, p0}, Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;->onRightArrowClick(Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setOnRightArrowClickListener(Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/display/PaperModePreference;->mRightArrowClickListener:Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;

    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/settings/display/PaperModePreference;->mShowRightArrow:Z

    return-void
.end method
