.class public Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceManageFragment"
.end annotation


# instance fields
.field final callback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

.field private fastDoubleClickHelper:Lcom/android/settings/utils/FastDoubleClickHelper;

.field private mDeleteFaceData:Landroidx/preference/Preference;

.field private mEnrolledFaceIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDataApplyUnlockScreen:Landroidx/preference/CheckBoxPreference;

.field private mFaceDataCategory:Landroidx/preference/PreferenceCategory;

.field private mFaceDataDeleteCategory:Landroidx/preference/PreferenceCategory;

.field private mFaceDataListCategory:Landroidx/preference/PreferenceCategory;

.field private mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

.field private mFaceUnlockByNotificationPreference:Landroidx/preference/CheckBoxPreference;

.field private mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

.field private mFaceUnlockSuccessShowMessage:Landroidx/preference/CheckBoxPreference;

.field private mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

.field private mSltObserver:Landroid/database/ContentObserver;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static bridge synthetic -$$Nest$fgetfastDoubleClickHelper(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Lcom/android/settings/utils/FastDoubleClickHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->fastDoubleClickHelper:Lcom/android/settings/utils/FastDoubleClickHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceUnlockManager(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceUnlockSuccessShowMessage(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessShowMessage:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceUnlockSuccessStayScreen(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfastDoubleClickHelper(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Lcom/android/settings/utils/FastDoubleClickHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->fastDoubleClickHelper:Lcom/android/settings/utils/FastDoubleClickHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddFaceData(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->addFaceData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFaceUnlockSuccessStayScreen(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockSuccessStayScreen(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFaceDataDetails(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->showFaceDataDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mSltObserver:Landroid/database/ContentObserver;

    .line 394
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->callback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addFaceData()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->multi_face_number_reach_limit:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mToast:Landroid/widget/Toast;

    .line 356
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 360
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.faceunlock.MiuiFaceDataInput"

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private enableShowMessagePreference(Z)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessShowMessage:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 444
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private handleFaceUnlockApplyForLock(Z)V
    .locals 3

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_unlcok_apply_for_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 457
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->enableShowMessagePreference(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByNotificationPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 467
    :cond_1
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSLVDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAutoAdjust(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->hasEnrolledFaces(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->turnOffAutoAdjust(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->miui_face_unlock_open_toast_for_sensor_light_virtual:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private handleFaceUnlockByCloseToPhone(Z)V
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getPeopleNearWakeupKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 490
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 493
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessShowMessage:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 499
    new-instance p1, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;

    invoke-direct {p1, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage;->showTofTipDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private handleFaceUnlockSuccessShowMessage(Z)V
    .locals 3

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_unlock_success_show_message"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    invoke-static {p1, v0, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_1

    .line 419
    new-instance p1, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$7;

    invoke-direct {p1, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$7;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V

    .line 432
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 433
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->face_unlock_success_show_message_dialog_title:I

    .line 434
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->face_unlock_success_show_message_dialog_msg:I

    .line 435
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->face_unlock_success_show_message_dialog_negative_btn:I

    .line 436
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->face_unlock_success_show_message_dialog_positive_btn:I

    .line 437
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private handleFaceUnlockSuccessStayScreen(Z)V
    .locals 3

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_unlock_success_stay_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->enableShowMessagePreference(Z)V

    return-void
.end method

.method private handleSecurityLockToggle()V
    .locals 2

    .line 376
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$5;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V

    .line 385
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x1010355    # @android:attr/alertDialogIcon

    .line 386
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->face_data_manage_delete:I

    .line 387
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->face_data_manage_delete_sure:I

    .line 388
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x104000a    # @android:string/ok

    .line 389
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 390
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initPreference(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move v1, p3

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private registerSltChangeObserver()V
    .locals 3

    .line 206
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->supportSlt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mSltObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mSltObserver:Landroid/database/ContentObserver;

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->registerSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private removePreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private showFaceDataDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 367
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_face_key"

    .line 368
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_face_title"

    .line 369
    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-class p1, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x449

    sget v5, Lcom/android/settings/R$string;->empty_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private sortFaceList()V
    .locals 5

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getFaceDataCreateDate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    new-instance v2, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$4;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateFaceList()V
    .locals 7

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getEnrolledFaceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    .line 285
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->sortFaceList()V

    .line 286
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    move v2, v1

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 307
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getFaceDataName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->generateFaceDataName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->setFaceDataName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 317
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_1
    new-instance v2, Lcom/android/settings/faceunlock/MiuiFaceDataManage$AlwaysClickablePreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$AlwaysClickablePreference;-><init>(Landroid/content/Context;)V

    const-string v3, "add_face_data"

    .line 320
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 321
    sget v3, Lcom/android/settings/R$string;->multi_face_input:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 322
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 324
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mEnrolledFaceIdList:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    .line 325
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    .line 328
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 175
    const-class p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget p1, Lcom/android/settings/R$xml;->face_data_manage:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    const-string v0, "lock_screen_face_data"

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "multi_face_list"

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataListCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "delete_face_data"

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataDeleteCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "delete_face_data_recoginition"

    .line 111
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mDeleteFaceData:Landroidx/preference/Preference;

    const-string v0, "apply_face_data_lock"

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataApplyUnlockScreen:Landroidx/preference/CheckBoxPreference;

    const-string v1, "face_unlcok_apply_for_lock"

    const/4 v2, 0x1

    .line 114
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->initPreference(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;I)V

    const-string/jumbo v0, "perseus"

    .line 116
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataApplyUnlockScreen:Landroidx/preference/CheckBoxPreference;

    sget v1, Lcom/android/settings/R$string;->face_data_manage_unlock_slide_msg:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    const-string v0, "face_unlock_success_stay_screen"

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->initPreference(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;I)V

    const-string v0, "face_unlock_success_show_message"

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessShowMessage:Landroidx/preference/CheckBoxPreference;

    .line 126
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->initPreference(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;I)V

    const-string/jumbo v0, "miui_tof_screen_on"

    .line 130
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    .line 131
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->removePreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    goto :goto_1

    .line 132
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    .line 133
    invoke-static {}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getPeopleNearWakeupKey()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->initPreference(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;I)V

    :goto_1
    const-string v0, "face_unlock_by_notification_screen_on"

    .line 140
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByNotificationPreference:Landroidx/preference/CheckBoxPreference;

    .line 141
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->initPreference(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;I)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportMultiFaceInput(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataDeleteCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->removePreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    goto :goto_2

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataListCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->removePreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    .line 150
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportLiftingCamera(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->removePreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataApplyUnlockScreen:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->face_data_manage_unlock_liftcamera_msg:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceDataApplyUnlockScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockApplyForLock(Z)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockSuccessStayScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockSuccessStayScreen(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 238
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "apply_face_data_lock"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, p2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockApplyForLock(Z)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "face_unlock_success_stay_screen"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 243
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mFaceUnlockByCloseToPhonePreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->miui_tof_screen_on_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->face_unlock_success_stay_screen_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miui_tof_screen_on_close_tip_dialog_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;-><init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Z)V

    .line 263
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->miui_tof_screen_on_close_tip_dialog_title:I

    .line 264
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 265
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->miui_tof_screen_on_close_tip_dialog_negative:I

    .line 266
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->miui_tof_screen_on_close_tip_dialog_positive:I

    .line 267
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockSuccessStayScreen(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "face_unlock_success_show_message"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-direct {p0, p2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockSuccessShowMessage(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "face_unlock_by_notification_screen_on"

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "miui_tof_screen_on"

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 278
    invoke-direct {p0, p2}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockByCloseToPhone(Z)V

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 2

    .line 226
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete_face_data_recoginition"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleSecurityLockToggle()V

    const/4 p0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onResume()V
    .locals 0

    .line 180
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->updateFaceList()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 195
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->registerSltChangeObserver()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->unregisterSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method
