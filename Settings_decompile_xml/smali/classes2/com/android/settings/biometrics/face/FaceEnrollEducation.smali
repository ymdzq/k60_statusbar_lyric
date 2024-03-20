.class public Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FaceEnrollEducation.java"


# instance fields
.field private mAccessibilityEnabled:Z

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mIllustrationAccessibility:Landroid/view/View;

.field private mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

.field private mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field private mIsUsingLottie:Z

.field private mResultIntent:Landroid/content/Intent;

.field private mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

.field private final mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public static synthetic $r8$lambda$-QwUqxB716TxM4WZ1u9f3i8tGY4(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onNextButtonClick$3(Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$-qgWJo5LkTTnrrOfLq8oh_Y3c14(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onCreate$0(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_BefSHCi3Lyowz_WWjDtzLutb0(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CsL5eltPaMD5Z1b_68jirQtnEy0(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->lambda$onStart$2(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIllustrationAccessibility(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideDefaultIllustration(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->hideDefaultIllustration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDefaultIllustration(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->showDefaultIllustration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method private hideDefaultIllustration()V
    .locals 2

    .line 332
    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 334
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    .line 337
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setChecked(Z)V

    const/16 p2, 0x8

    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method private synthetic lambda$onNextButtonClick$3(Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x2

    .line 251
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    .line 252
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    return-void
.end method

.method private synthetic lambda$onStart$2(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 185
    :goto_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->shouldShowPostureGuidance(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    if-nez p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchPostureGuidance()Z

    :cond_1
    return-void
.end method

.method private showDefaultIllustration()V
    .locals 3

    .line 342
    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    sget v2, Lcom/android/settings/R$raw;->face_education_lottie:I

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 346
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 349
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getDevicePostureState()I
    .locals 0

    .line 323
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x5e2

    return p0
.end method

.method protected getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    return-object p0
.end method

.method protected getPostureGuidanceIntent()Landroid/content/Intent;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mPostureGuidanceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 281
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_1

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->onSkipButtonClick(Landroid/view/View;)V

    :cond_1
    return-void

    .line 287
    :cond_2
    iput-object p3, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    if-eqz p3, :cond_3

    const-string v0, "finished_enrolling_face"

    .line 290
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    if-eq p2, v3, :cond_7

    .line 292
    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    invoke-static {v3}, Lcom/android/settings/biometrics/BiometricUtils;->isPostureAllowEnrollment(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    :cond_5
    if-eq p2, v1, :cond_6

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0xb

    if-eq p2, v1, :cond_6

    if-eqz v0, :cond_8

    .line 300
    :cond_6
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_2

    .line 293
    :cond_7
    :goto_1
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 294
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 304
    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    .line 305
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 272
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget p1, Lcom/android/settings/R$layout;->face_enroll_education:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 96
    sget p1, Lcom/android/settings/R$string;->security_settings_face_enroll_education_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 97
    sget p1, Lcom/android/settings/R$string;->security_settings_face_enroll_education_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 99
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 101
    sget p1, Lcom/android/settings/R$id;->illustration_default:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    .line 102
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    .line 103
    sget p1, Lcom/android/settings/R$id;->illustration_accessibility:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationAccessibility:Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_face_education_use_lottie:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIsUsingLottie:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    .line 108
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationDefault:Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/settings/R$raw;->face_education_lottie:I

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->skip_label:I

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 120
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x7

    .line 121
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_cancel:I

    .line 128
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 130
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 136
    :goto_0
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_education_start:I

    .line 137
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 138
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 139
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 140
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 153
    sget p1, Lcom/android/settings/R$id;->accessibility_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 154
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget v0, Lcom/android/settings/R$id;->toggle_diversity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 161
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz p0, :cond_4

    .line 167
    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :cond_4
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 3

    .line 223
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-eqz v0, :cond_0

    const-string v1, "hw_auth_token"

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 228
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v0, "challenge"

    .line 230
    iget-wide v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "sensor_id"

    .line 231
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "from_settings_summary"

    .line 232
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 234
    sget v0, Lcom/android/settings/R$string;->config_face_enroll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 239
    :cond_2
    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mResultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "accessibility_diversity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_4

    .line 249
    invoke-static {}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->newInstance()Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 256
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 201
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    .line 203
    invoke-virtual {v2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result v2

    .line 202
    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085    # @android:integer/config_jobSchedulerInactivityIdleThreshold

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x6

    const-string v0, "edu_skip"

    .line 263
    invoke-static {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 265
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 266
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getPostureGuidanceIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "FaceEducation"

    const-string v0, "Device do not support posture guidance"

    .line 175
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->config_face_enroll_supported_posture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 179
    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->setDevicePosturesAllowEnroll(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-nez v0, :cond_2

    .line 194
    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    .line 195
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    .line 218
    invoke-static {v0, p0}, Lcom/android/settings/biometrics/BiometricUtils;->isPostureGuidanceShowing(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
