.class public Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiConfirmCommonPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiConfirmCommonPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiConfirmCommonPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$FullScreenDialog;
    }
.end annotation


# static fields
.field private static sIsFod:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBusinessId:Ljava/lang/String;

.field private mConfirmLockLaunched:Z

.field private mContext:Landroid/content/Context;

.field private mFaceEnrollChallenge:J

.field private mFingerprintFailTimes:I

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mIsDarkModeEnabled:Z

.field private mRequestCode:I

.field private mShouldDismissDialog:Z

.field private mUserId:I

.field private mVerifyChallenge:Z

.field private mVerifyChallengeFromFace:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFingerprintFailTimes(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintFailTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintHelper(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Lcom/android/settings/FingerprintHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintIdentificationDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFingerprintFailTimes(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintFailTimes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldDismissDialog(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misSecurityCoreAddBusiness(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecurityCoreAddBusiness()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->releaseFingerprintHelper()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartConfirmActivity(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->startConfirmActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsIsFod()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->sIsFod:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    .line 76
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->sIsFod:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 79
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mRequestCode:I

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mConfirmLockLaunched:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mIsDarkModeEnabled:Z

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getFingerprintIdsForSecond(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, -0x2710

    const/4 v3, 0x0

    const-string/jumbo v4, "second_user_id"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 310
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method private identifiedFailed()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    sget-boolean v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->sIsFod:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    sget v1, Lcom/android/settings/R$id;->tv_secspace_fod_finger_result:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    sget v1, Lcom/android/settings/R$id;->confirm_fingerprint_view_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->fingerprint_identify_try_again_msg:I

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->releaseFingerprintHelper()V

    .line 279
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintFailTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintFailTimes:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 281
    iput-boolean v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    .line 282
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->startConfirmActivity()V

    goto :goto_1

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->startFingerprintIdentification()V

    :goto_1
    return-void
.end method

.method private isIdentified()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->releaseFingerprintHelper()V

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    const/4 v0, -0x1

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private isSecurityCoreAddBusiness()Z
    .locals 1

    const-string/jumbo v0, "security_core_add"

    .line 325
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSupportFingerprintForSecond(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecurityCoreAddBusiness()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->getFingerprintIdsForSecond(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 300
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private releaseFingerprintHelper()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    :cond_0
    return-void
.end method

.method private showAuthenticationDialog()V
    .locals 1

    .line 177
    sget-boolean v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->sIsFod:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->showFodFingerprintAuthenticationDialog()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->showFingerprintAuthenticationDialog()V

    :goto_0
    return-void
.end method

.method private showFingerprintAuthenticationDialog()V
    .locals 6

    .line 460
    new-instance v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$4;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    .line 472
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 473
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 474
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$layout;->confirm_fingerprint_dialog_content_view:I

    const/4 v5, 0x0

    .line 475
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->fingerprint_identify_input_password_msg:I

    .line 476
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000    # @android:string/cancel

    .line 477
    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 479
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 480
    iput-boolean v3, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    return-void
.end method

.method private showFodFingerprintAuthenticationDialog()V
    .locals 6

    .line 421
    new-instance v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$FullScreenDialog;

    iget-object v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->Fod_Dialog_Fullscreen:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$FullScreenDialog;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->confirm_fod_fingerprint_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 423
    sget v1, Lcom/android/settings/R$id;->tv_use_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->secspace_fod_finger_bg_color:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 428
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 430
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->fop_password_text_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 432
    sget v5, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    if-lez v5, :cond_0

    .line 433
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v4, 0x4

    .line 435
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 437
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    new-instance v2, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$2;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 447
    iput-boolean v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    .line 448
    iget-object v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 449
    iget-object v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$3;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private startConfirmActivity()V
    .locals 7

    .line 348
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 349
    iget v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    const/16 v2, -0x270f

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_2

    .line 356
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$InternalActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    invoke-static {v3, v4}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-static {}, Lcom/android/settings/ConfirmSpacePatternActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/android/settings/ConfirmSpacePatternActivity;

    goto :goto_1

    .line 357
    :cond_1
    const-class v3, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    goto :goto_1

    .line 363
    :cond_2
    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$InternalActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    invoke-static {v3, v4}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    invoke-static {}, Lcom/android/settings/ConfirmSpacePasswordActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/android/settings/ConfirmSpacePasswordActivity;

    goto :goto_1

    .line 364
    :cond_3
    const-class v3, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    .line 370
    :goto_1
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, ":settings:show_fragment"

    .line 371
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecurityCoreAddBusiness()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 374
    iget-object v5, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "businessId"

    const-string/jumbo v5, "security_core_add"

    .line 375
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    :cond_4
    sget v3, Lcom/android/settings/R$string;->empty_title:I

    const-string v5, ":android:show_fragment_title"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget v5, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    if-ne v5, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    const-string v5, "from_confirm_frp_credential"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_challenge"

    .line 379
    iget-boolean v5, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mVerifyChallenge:Z

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "challenge"

    .line 380
    iget-wide v5, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFaceEnrollChallenge:J

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "for_face"

    .line 381
    iget-boolean v5, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mVerifyChallengeFromFace:Z

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    sget-boolean v1, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v1, :cond_6

    .line 383
    iget v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mRequestCode:I

    .line 384
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 383
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_3

    .line 386
    :cond_6
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    if-ne v0, v2, :cond_7

    const/16 v0, 0x3e9

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mRequestCode:I

    :goto_2
    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 389
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_3
    return-void
.end method

.method private startFingerprintIdentification()V
    .locals 3

    .line 185
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    iget-object v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 186
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecurityCoreAddBusiness()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->getFingerprintIdsForSecond(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 190
    :cond_0
    new-instance v1, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment$1;-><init>(Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;)V

    .line 230
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/FingerprintHelper;->identify(Lcom/android/settings/FingerprintIdentifyCallback;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method protected isSecondFingerprint(I)Z
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 291
    iget-object p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 293
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 396
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 397
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 165
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 166
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mIsDarkModeEnabled:Z

    if-eq v0, v1, :cond_1

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 173
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz p1, :cond_0

    const-string v0, "key_confirm_lock_launched"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mConfirmLockLaunched:Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mIsDarkModeEnabled:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "has_challenge"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mVerifyChallenge:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFaceEnrollChallenge:J

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "for_face"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mVerifyChallengeFromFace:Z

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "confirm_password_request_code"

    .line 110
    invoke-static {p1, v0, v3, v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getIntExtra(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mRequestCode:I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "businessId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mBusinessId:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x270f

    .line 117
    iput v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecurityCoreAddBusiness()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.settings.userIdToConfirm"

    const/16 v4, -0x2710

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    .line 122
    sget-boolean v0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->sIsFod:Z

    if-nez v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.settings.bgColor"

    sget v4, Lcom/android/settings/R$color;->set_second_space_background:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->common_password_business_keys:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->common_password_business_clickable_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v4, v2

    .line 132
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 133
    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 139
    :goto_2
    :try_start_0
    new-instance v3, Lcom/android/settings/FingerprintHelper;

    iget-object v4, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v3

    if-nez v0, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    :cond_6
    if-eqz v3, :cond_7

    .line 141
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    invoke-direct {p0, v3}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSupportFingerprintForSecond(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mActivityManager:Landroid/app/ActivityManager;

    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->showAuthenticationDialog()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->startFingerprintIdentification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MiuiConfirmCommonPassword"

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mConfirmLockLaunched:Z

    if-nez p1, :cond_8

    .line 152
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->startConfirmActivity()V

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mConfirmLockLaunched:Z

    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->releaseFingerprintHelper()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->dismissDialog()V

    .line 344
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo p1, "miui_security_fragment_result"

    .line 405
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "password"

    .line 407
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 406
    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/MiuiSecurityCommonSettings;->setFragmentResultOnDetach(Landroidx/fragment/app/Fragment;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method protected onIdentifiedBySecurityCoreAdd(I)V
    .locals 2

    .line 242
    iget v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mUserId:I

    if-eqz v0, :cond_1

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecondFingerprint(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isIdentified()V

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->identifiedFailed()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isSecondFingerprint(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->isIdentified()V

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->identifiedFailed()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 330
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->releaseFingerprintHelper()V

    .line 331
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mShouldDismissDialog:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mFingerprintIdentificationDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_confirm_lock_launched"

    .line 160
    iget-boolean p0, p0, Lcom/android/settings/MiuiConfirmCommonPassword$MiuiConfirmCommonPasswordFragment;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
