.class public Lcom/android/settings/ai/AiSettingsSubActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AiSettingsSubActivity.java"


# instance fields
.field mAiSettingsSubAdapter:Lcom/android/settings/ai/AiSettingsSubAdapter;

.field private mBack:Landroid/widget/ImageView;

.field private mButtonType:Ljava/lang/String;

.field mLinearLayoutColorDivider:Lcom/android/settings/ai/LinearLayoutColorDivider;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mButtonType:Ljava/lang/String;

    .line 34
    new-instance v1, Lcom/android/settings/ai/AiSettingsSubAdapter;

    .line 35
    invoke-static {p0, v0}, Lcom/android/settings/ai/DataFactory;->generateItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mButtonType:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/ai/AiSettingsSubAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mAiSettingsSubAdapter:Lcom/android/settings/ai/AiSettingsSubAdapter;

    return-void
.end method

.method private initUI()V
    .locals 5

    .line 39
    sget v0, Lcom/android/settings/R$id;->rcv_custom_op:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    sget v0, Lcom/android/settings/R$id;->ai_settings_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mBack:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/android/settings/R$id;->ai_settings_sub_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mTitle:Landroid/widget/TextView;

    const-string v0, "key_double_click_ai_button_settings"

    .line 42
    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mButtonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->ai_settings_double_click_category:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "key_single_click_ai_button_settings"

    .line 44
    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mButtonType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->single_press_AI_button:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->ai_settings_long_click_category:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    new-instance v0, Lcom/android/settings/ai/LinearLayoutColorDivider;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->white:I

    sget v3, Lcom/android/settings/R$dimen;->ai_settings_divider_size:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/ai/LinearLayoutColorDivider;-><init>(Landroid/content/res/Resources;III)V

    iput-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mLinearLayoutColorDivider:Lcom/android/settings/ai/LinearLayoutColorDivider;

    .line 51
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mAiSettingsSubAdapter:Lcom/android/settings/ai/AiSettingsSubAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mLinearLayoutColorDivider:Lcom/android/settings/ai/LinearLayoutColorDivider;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/ai/AiSettingsSubActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ai/AiSettingsSubActivity$1;-><init>(Lcom/android/settings/ai/AiSettingsSubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lcom/android/settings/R$layout;->ai_settings_sub_activity:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/ai/AiSettingsSubActivity;->initData()V

    .line 29
    invoke-direct {p0}, Lcom/android/settings/ai/AiSettingsSubActivity;->initUI()V

    return-void
.end method
