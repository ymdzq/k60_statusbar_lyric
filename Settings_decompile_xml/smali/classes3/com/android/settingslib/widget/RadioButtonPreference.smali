.class public Lcom/android/settingslib/widget/RadioButtonPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mAppendix:Landroid/view/View;

.field private mAppendixVisibility:I

.field private mExtraWidget:Landroid/widget/ImageView;

.field private mExtraWidgetContainer:Landroid/view/View;

.field private mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    return-void
.end method


# virtual methods
.method public hasIcon()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 164
    sget v0, Lcom/android/settingslib/widget/R$id;->radio_extra_widget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidget:Landroid/widget/ImageView;

    .line 165
    sget v0, Lcom/android/settingslib/widget/R$id;->radio_extra_widget_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetContainer:Landroid/view/View;

    .line 167
    iget-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/RadioButtonPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setAppendixVisibility(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendix:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    return-void
.end method

.method public setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 188
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetContainer:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    return-void
.end method
