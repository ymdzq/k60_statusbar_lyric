.class public Lcom/android/settings/dndmode/RadioButtonWithArrow;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "RadioButtonWithArrow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private arrow:Landroid/widget/ImageView;

.field private arrowVisibility:I

.field private clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrowVisibility:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrowVisibility:I

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 35
    sget v0, Lcom/android/settings/R$id;->right_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrow:Landroid/widget/ImageView;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->accessibility_more_settings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    iget p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrowVisibility:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setArrowVisibility(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrowVisibility:I

    .line 57
    iget-object p0, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->arrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnClickListeners(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/dndmode/RadioButtonWithArrow;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
