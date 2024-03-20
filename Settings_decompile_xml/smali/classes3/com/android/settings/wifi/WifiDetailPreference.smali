.class public Lcom/android/settings/wifi/WifiDetailPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "WifiDetailPreference.java"


# instance fields
.field private mDetailText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget p1, Lcom/android/settings/R$layout;->preference_widget_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 49
    sget v0, Lcom/android/settings/R$id;->widget_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 50
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDetailPreference;->mDetailText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    const/16 v0, 0xa

    .line 51
    invoke-virtual {p1, p0, p0, v0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
