.class public Lcom/android/settings/notification/ZenRuleNamePreference;
.super Landroidx/preference/Preference;
.source "ZenRuleNamePreference.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mRuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNamePreference;->initLayoutResource()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNamePreference;->initLayoutResource()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNamePreference;->initLayoutResource()V

    return-void
.end method

.method private initLayoutResource()V
    .locals 1

    .line 36
    sget v0, Lcom/android/settings/R$layout;->zen_rule_name_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 42
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->zen_rule_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNamePreference;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleNamePreference;->mRuleName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
