.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "EncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# instance fields
.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$05ygvTdsqd57CZ0F_X2tCmKYBf4(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->onNoButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zb07LPUy3OSRy6tThrXAXWYIeXY(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->onYesButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRequirePasswordState(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private onNoButtonClicked(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    return-void
.end method

.method private onYesButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 206
    iget p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    invoke-static {p1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->newInstance(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "AccessibilityWarningDialog"

    .line 207
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    :goto_0
    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x30

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 107
    sget p0, Lcom/android/settings/R$layout;->encryption_interstitial:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 112
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "for_fingerprint"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "for_face"

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "for_biometrics"

    .line 119
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_password_quality"

    .line 121
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    const-string v1, "extra_unlock_method_intent"

    .line 122
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 124
    iget v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    const/high16 v3, 0x10000

    if-eq v1, v3, :cond_7

    const/high16 v3, 0x20000

    if-eq v1, v3, :cond_3

    const/high16 v3, 0x30000

    if-eq v1, v3, :cond_3

    if-eqz p2, :cond_0

    .line 146
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_password_for_fingerprint:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 148
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_password_for_face:I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 150
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_password_for_biometrics:I

    goto :goto_0

    .line 151
    :cond_2
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_password:I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 137
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pin_for_fingerprint:I

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 139
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pin_for_face:I

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 141
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pin_for_biometrics:I

    goto :goto_0

    .line 142
    :cond_6
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pin:I

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 127
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pattern_for_fingerprint:I

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    .line 129
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pattern_for_face:I

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 131
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pattern_for_biometrics:I

    goto :goto_0

    .line 132
    :cond_a
    sget p2, Lcom/android/settings/R$string;->encryption_interstitial_message_pattern:I

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "extra_require_password"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 160
    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 163
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 164
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->encryption_interstitial_no:I

    .line 166
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;)V

    .line 167
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    const/4 v0, 0x7

    .line 168
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 169
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 173
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->encryption_interstitial_yes:I

    .line 175
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;)V

    .line 176
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 p2, 0x5

    .line 177
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 178
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 173
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method protected startLockIntent()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "extra_require_password"

    .line 185
    iget-boolean v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    :goto_0
    return-void
.end method
