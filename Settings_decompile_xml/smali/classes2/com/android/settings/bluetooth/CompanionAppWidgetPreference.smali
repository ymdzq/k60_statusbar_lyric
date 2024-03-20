.class public Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;
.super Landroidx/preference/Preference;
.source "CompanionAppWidgetPreference.java"


# instance fields
.field private mImageButtonPadding:I

.field private mWidgetIcon:Landroid/graphics/drawable/Drawable;

.field private mWidgetListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object p2, p0, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;->mWidgetListener:Landroid/view/View$OnClickListener;

    .line 42
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->bluetooth_companion_app_widget:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;->mImageButtonPadding:I

    .line 44
    sget p1, Lcom/android/settings/R$layout;->companion_apps_remove_button_widget:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 50
    sget v0, Lcom/android/settings/R$id;->remove_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 51
    iget v0, p0, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;->mImageButtonPadding:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 53
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1060000    # @android:color/darker_gray

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/bluetooth/CompanionAppWidgetPreference;->mWidgetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
