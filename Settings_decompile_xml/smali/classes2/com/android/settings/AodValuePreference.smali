.class public Lcom/android/settings/AodValuePreference;
.super Lcom/android/settings/KeyguardRestrictedPreference;
.source "AodValuePreference.java"


# instance fields
.field private mValueString:Ljava/lang/String;

.field private mValueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/AodValuePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/AodValuePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/android/settings/AodValuePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    invoke-direct {p0}, Lcom/android/settings/AodValuePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 41
    sget v0, Lcom/android/settings/R$layout;->aod_value_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setShowRightArrow(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    sget v0, Lcom/android/settings/R$id;->text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AodValuePreference;->mValueView:Landroid/widget/TextView;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBindViewHolder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/AodValuePreference;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/AodValuePreference;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AodValuePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/android/settings/AodValuePreference;->mValueView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settings/AodValuePreference;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    const-string v0, "aod_notification_status"

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aod_mode_value_preference"

    .line 81
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/AodUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "AodValuePreference"

    const-string/jumbo v0, "onClick(): AOD intent == null"

    .line 85
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/high16 v0, 0x10000000

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public setAodValue(Ljava/lang/String;)V
    .locals 1

    .line 62
    iput-object p1, p0, Lcom/android/settings/AodValuePreference;->mValueString:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAodValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/AodValuePreference;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/AodValuePreference;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AodValuePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/settings/AodValuePreference;->mValueView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settings/AodValuePreference;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;->setValue(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AodValuePreference;->setAodValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
