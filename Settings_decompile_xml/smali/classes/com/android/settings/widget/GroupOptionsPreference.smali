.class public Lcom/android/settings/widget/GroupOptionsPreference;
.super Landroidx/preference/Preference;
.source "GroupOptionsPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;,
        Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;,
        Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;
    }
.end annotation


# instance fields
.field private final mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

.field private final mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

.field private final mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

.field private final mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

.field private final mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

.field private final mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

.field private final mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

.field private final mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

.field private final mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 55
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 56
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 57
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 58
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 59
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 60
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    .line 61
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    .line 62
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/widget/GroupOptionsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 55
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 56
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 57
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 58
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 59
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 60
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    .line 61
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    .line 62
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/widget/GroupOptionsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 55
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 56
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 57
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 58
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 59
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    .line 60
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    .line 61
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    .line 62
    new-instance p1, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    invoke-direct {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    return-void
.end method

.method private init()V
    .locals 1

    .line 81
    sget v0, Lcom/android/settings/R$layout;->bluetooth_group_options:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->id_btn_group_add_source:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->id_btn_connect:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->id_btn_forget:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->id_btn_disconnect:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->id_btn_refresh:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->id_btn_refresh_cancel:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmButton(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/widget/Button;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    sget v1, Lcom/android/settings/R$id;->id_tv_groupid:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fputmTextView(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Landroid/widget/TextView;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    sget v1, Lcom/android/settings/R$id;->id_tv_status:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fputmTextView(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Landroid/widget/TextView;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    sget v1, Lcom/android/settings/R$id;->id_progress_group_scan:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->-$$Nest$fputmProgress(Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;Landroid/widget/ProgressBar;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->setUpButton()V

    .line 100
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->setUpButton()V

    .line 101
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->setUpButton()V

    .line 102
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->setUpButton()V

    .line 103
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->setUpButton()V

    .line 104
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->setUpButton()V

    .line 105
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->setUpTextView()V

    .line 106
    iget-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-virtual {p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->setUpTextView()V

    .line 107
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    invoke-virtual {p0}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->setUpProgress()V

    return-void
.end method

.method public setAddSourceGroupButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 130
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setAddSourceGroupButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setAddSourceGroupButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setAddSourceGroupButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnAddSrcGroup:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 113
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setCancelRefreshButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 300
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setCancelRefreshButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setCancelRefreshButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setCancelRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnCancelRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 292
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setConnectButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setConnectButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setConnectButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setConnectButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnConnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 147
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setDisconnectButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 232
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setDisconnectButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setDisconnectButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setDisconnectButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnDisconnect:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 215
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setForgetButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 198
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setForgetButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setForgetButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnForget:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setProgressScanVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mProgressScan:Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;Z)V

    .line 350
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setRefreshButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 266
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setRefreshButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setRefreshButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mBtnRefresh:Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ButtonInfo;Z)V

    .line 249
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setTexStatusText(I)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 340
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setTextViewText(Ljava/lang/String;)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fgetmText(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvGroupId:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fputmText(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setTvStatusVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-static {v0}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settings/widget/GroupOptionsPreference;->mTvStatus:Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;->-$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$TextViewInfo;Z)V

    .line 333
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method
