.class public Lcom/android/settings/msim/StatusImei;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "StatusImei.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private addTab(Ljava/lang/Class;III)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;III)",
            "Landroidx/appcompat/app/ActionBar$Tab;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v7

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    .line 44
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-static {v5, p4}, Lmiui/telephony/SubscriptionManager;->putSlotId(Landroid/os/Bundle;I)V

    const/4 v6, 0x1

    move-object v2, v7

    move v3, p3

    move-object v4, p1

    .line 46
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    return-object v7
.end method

.method private setupContents()V
    .locals 5

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 30
    const-class v2, Lcom/android/settings/msim/ImeiFragment;

    .line 32
    sget v3, Lcom/android/settings/R$string;->status_sim_1:I

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/android/settings/msim/StatusImei;->addTab(Ljava/lang/Class;III)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    .line 33
    sget v3, Lcom/android/settings/R$string;->status_sim_2:I

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/settings/msim/StatusImei;->addTab(Ljava/lang/Class;III)Landroidx/appcompat/app/ActionBar$Tab;

    .line 34
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/msim/StatusImei;->setupContents()V

    return-void
.end method
