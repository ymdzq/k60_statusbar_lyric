.class public Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mFooterLayout:Lcom/android/settings/SetupFooterLayout;

.field private mHeaderTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    const-class p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Lcom/android/settings/R$id;->setup_choose_unlock_password_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mHeaderTitle:Landroid/widget/TextView;

    .line 74
    iget-boolean p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/settings/R$string;->setup_choose_unlock_mixpassword_title:I

    goto :goto_0

    .line 75
    :cond_1
    sget p0, Lcom/android/settings/R$string;->setup_choose_unlock_password_title:I

    .line 74
    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method protected onPasswordSaved([BZ)V
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->returnToKeyguardPasswordSettings([B)V

    return-void
.end method

.method protected setCancelEnable(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected setNextEnable(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 1

    .line 87
    sget v0, Lcom/android/settings/R$id;->setup_choose_unlock_password_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/android/settings/R$id;->setup_password_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/android/settings/R$id;->setup_footer_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SetupFooterLayout;

    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/SetupFooterLayout;->getNextImg()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextImage:Landroid/widget/ImageView;

    .line 91
    iget-object p1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p1}, Lcom/android/settings/SetupFooterLayout;->getBackImg()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mBackImage:Landroid/widget/ImageView;

    .line 92
    iget-object p1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p1}, Lcom/android/settings/SetupFooterLayout;->getBackButton()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/TextView;

    .line 93
    iget-object p1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p1}, Lcom/android/settings/SetupFooterLayout;->getNextButton()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/TextView;

    .line 94
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
