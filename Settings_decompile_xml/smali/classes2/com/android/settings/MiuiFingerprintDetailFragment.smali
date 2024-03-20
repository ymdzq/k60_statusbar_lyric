.class public Lcom/android/settings/MiuiFingerprintDetailFragment;
.super Lcom/android/settings/KeyguardBaseEditFragment;
.source "MiuiFingerprintDetailFragment.java"


# instance fields
.field private mDeleteBtn:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mFingerprintDeleted:Z

.field private mFingerprintKey:Ljava/lang/String;

.field private mFingerprintTitle:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFingerprintKey(Lcom/android/settings/MiuiFingerprintDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFingerprintDeleted(Lcom/android/settings/MiuiFingerprintDetailFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintDeleted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/settings/KeyguardBaseEditFragment;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintDeleted:Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->fingerprint_title_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mEditText:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->fingerprint_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->turn_off_password_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    new-instance v0, Lcom/android/settings/MiuiFingerprintDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiFingerprintDetailFragment$1;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;)V

    .line 97
    new-instance v1, Lcom/android/settings/MiuiFingerprintDetailFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MiuiFingerprintDetailFragment$2;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Lcom/android/settings/FingerprintRemoveCallback;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/MiuiFingerprintDetailFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/MiuiFingerprintDetailFragment$3;-><init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private saveFingerprintTitle()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintDeleted:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintKey:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/settings/utils/FingerprintUtils;->setFingerprintName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->hideSoftInput(Landroidx/fragment/app/Fragment;)V

    .line 142
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 123
    sget v0, Lcom/android/settings/R$string;->fingerprint_list_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setSettingsSplit(Landroid/content/Intent;)V

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_fingerprint_key"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintKey:Ljava/lang/String;

    const-string v0, "extra_fingerprint_title"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mFingerprintTitle:Ljava/lang/String;

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 53
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 55
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 62
    sget p3, Lcom/android/settings/R$layout;->fingerprint_detail:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->initView()V

    .line 64
    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onSave()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/settings/MiuiFingerprintDetailFragment;->saveFingerprintTitle()V

    .line 128
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onSave()V

    return-void
.end method
