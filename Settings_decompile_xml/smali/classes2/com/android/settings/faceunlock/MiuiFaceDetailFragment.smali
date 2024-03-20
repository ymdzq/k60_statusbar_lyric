.class public Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;
.super Lcom/android/settings/KeyguardBaseEditFragment;
.source "MiuiFaceDetailFragment.java"


# instance fields
.field private mDeleteBtn:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mFaceDeleted:Z

.field private mFaceKey:Ljava/lang/String;

.field private mFaceTitle:Ljava/lang/String;

.field private mSltObserver:Landroid/database/ContentObserver;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEditText(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceKey(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceTitle(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFaceDeleted(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceDeleted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/KeyguardBaseEditFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceDeleted:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mSltObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->face_title_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mEditText:Landroid/widget/EditText;

    .line 70
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->face_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->turn_off_password_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 75
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)V

    .line 89
    new-instance v1, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$2;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;Lcom/android/settings/faceunlock/FaceRemoveCallback;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$3;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private registerSltChangeObserver()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->supportSlt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mSltObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$5;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mSltObserver:Landroid/database/ContentObserver;

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->registerSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private saveFaceName()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceDeleted:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceKey:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->setFaceDataName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 160
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->hideSoftInput(Landroidx/fragment/app/Fragment;)V

    .line 161
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 131
    sget v0, Lcom/android/settings/R$string;->multi_face_list:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->fingerprint_face_detail_button_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 153
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setSettingsSplit(Landroid/content/Intent;)V

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_face_key"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceKey:Ljava/lang/String;

    const-string v0, "extra_face_title"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mFaceTitle:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 52
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    sget p3, Lcom/android/settings/R$layout;->miui_face_detail_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mView:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->initView()V

    .line 65
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onSave()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->saveFaceName()V

    .line 136
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onSave()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 167
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->registerSltChangeObserver()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStop()V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->unregisterSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method
