.class Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "SilentModeDeleteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeDeleteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomRuleItemPreference"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteBtn:Landroid/widget/ImageView;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mId:Ljava/lang/String;

.field private mOnClickDeleteBtnListener:Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/notification/SilentModeDeleteSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnClickDeleteBtnListener(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mOnClickDeleteBtnListener:Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/notification/SilentModeDeleteSettings;Landroid/content/Context;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->this$0:Lcom/android/settings/notification/SilentModeDeleteSettings;

    .line 88
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance p1, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference$1;-><init>(Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;)V

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 89
    iput-object p2, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mContext:Landroid/content/Context;

    .line 90
    sget p1, Lcom/android/settings/R$xml;->dndm_custom_rule_item:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 101
    sget v0, Lcom/android/settings/R$id;->delete_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->delete_rule:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mTitleView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mId:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnDeleteBtnClickListener(Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->mOnClickDeleteBtnListener:Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

    return-void
.end method
