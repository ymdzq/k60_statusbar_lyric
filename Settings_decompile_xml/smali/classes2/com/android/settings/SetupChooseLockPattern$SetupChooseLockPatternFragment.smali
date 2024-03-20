.class public Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mBackImage:Landroid/widget/ImageView;

.field private mFooterBackButton:Landroid/widget/TextView;

.field private mFooterLayout:Lcom/android/settings/SetupFooterLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 56
    const-class p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isSetUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onClick(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterBackButton:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mBackImage:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->preSetupViews()V

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/android/settings/R$id;->setup_footer_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SetupFooterLayout;

    iput-object p2, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    .line 71
    invoke-virtual {p2}, Lcom/android/settings/SetupFooterLayout;->getBackButton()Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterBackButton:Landroid/widget/TextView;

    .line 72
    iget-object p2, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p2}, Lcom/android/settings/SetupFooterLayout;->getBackImg()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mBackImage:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterBackButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected onPasswordSaved([BZ)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->returnToKeyguardPasswordSettings([B)V

    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterBackButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    invoke-super {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    return-void
.end method

.method protected setNextEnable(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2

    .line 103
    sget v0, Lcom/android/settings/R$id;->setup_subHeaderText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/android/settings/R$id;->setup_lockPattern:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    .line 105
    sget v0, Lcom/android/settings/R$id;->setup_footer_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SetupFooterLayout;

    iput-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    .line 106
    invoke-virtual {v0}, Lcom/android/settings/SetupFooterLayout;->getSkipButton()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {v0}, Lcom/android/settings/SetupFooterLayout;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {v0}, Lcom/android/settings/SetupFooterLayout;->getNextImg()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextImage:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 112
    sget v0, Lcom/android/settings/R$id;->setup_topLayout:I

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 114
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    return-void
.end method
