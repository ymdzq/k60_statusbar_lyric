.class public Lcom/android/settings/InfinityDisplayStyleFragment;
.super Lcom/android/settings/BaseFragment;
.source "InfinityDisplayStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mInsideButton:Landroid/widget/RadioButton;

.field private mShowButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    return-void
.end method

.method private isInside()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isOutside()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setInside(Z)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setOutside(Z)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private updateRadioState()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplayStyleFragment;->isOutside()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, v2}, Lcom/android/settings/InfinityDisplayStyleFragment;->setOutside(Z)V

    .line 77
    invoke-direct {p0, v1}, Lcom/android/settings/InfinityDisplayStyleFragment;->setInside(Z)V

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplayStyleFragment;->isInside()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/settings/InfinityDisplayStyleFragment;->mShowButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/InfinityDisplayStyleFragment;->mInsideButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/InfinityDisplayStyleFragment;->mShowButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/InfinityDisplayStyleFragment;->mInsideButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 47
    sget v0, Lcom/android/settings/R$id;->notch_style_show_container:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 48
    invoke-direct {p0, v1}, Lcom/android/settings/InfinityDisplayStyleFragment;->setOutside(Z)V

    .line 49
    invoke-direct {p0, v1}, Lcom/android/settings/InfinityDisplayStyleFragment;->setInside(Z)V

    goto :goto_0

    .line 50
    :cond_0
    sget v0, Lcom/android/settings/R$id;->notch_style_status_bar_inside_container:I

    if-ne p1, v0, :cond_1

    .line 51
    invoke-direct {p0, v1}, Lcom/android/settings/InfinityDisplayStyleFragment;->setOutside(Z)V

    const/4 p1, 0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/InfinityDisplayStyleFragment;->setInside(Z)V

    .line 54
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplayStyleFragment;->updateRadioState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 28
    sget p3, Lcom/android/settings/R$layout;->fragment_notch_style_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 32
    instance-of p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p3, :cond_0

    .line 33
    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 36
    :cond_0
    sget p2, Lcom/android/settings/R$id;->notch_style_show_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget p2, Lcom/android/settings/R$id;->notch_style_status_bar_inside_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget p2, Lcom/android/settings/R$id;->notch_style_show:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/InfinityDisplayStyleFragment;->mShowButton:Landroid/widget/RadioButton;

    .line 39
    sget p2, Lcom/android/settings/R$id;->notch_style_status_bar_inside:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/InfinityDisplayStyleFragment;->mInsideButton:Landroid/widget/RadioButton;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplayStyleFragment;->updateRadioState()V

    return-object p1
.end method
