.class public Lcom/android/settings/KeySettingsSelectFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettingsSelectFragment.java"


# instance fields
.field private mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mHidedRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

.field private mKeyGestureFunctionCategory:Landroidx/preference/PreferenceCategory;

.field private mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

.field private mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

.field private mPreferenceKey:Ljava/lang/String;

.field private mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

.field private mTitle:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/KeySettingsSelectFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFsgChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyGestureFunctionOptional(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/preference/RadioButtonPreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyGestureFunctionPreview(Lcom/android/settings/KeySettingsSelectFragment;)Lcom/android/settings/KeySettingsPreviewPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceKey(Lcom/android/settings/KeySettingsSelectFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioButtonPreference(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActionChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFsgChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRadioButtonPreference(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbringUpFsgChooseDlg(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/KeySettingsSelectFragment;->bringUpFsgChooseDlg(Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLongPressPowerPreference(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/preference/RadioButtonPreferenceCategory;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/KeySettingsSelectFragment;->getLongPressPowerPreference(Lmiuix/preference/RadioButtonPreferenceCategory;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misNeedFsgDlg(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/KeySettingsSelectFragment;->isNeedFsgDlg(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mperformFsgChange(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeySettingsSelectFragment;->performFsgChange(Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformSettingsChange(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeySettingsSelectFragment;->performSettingsChange(Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 367
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private bringUpActionChooseDlg(Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance v0, Lcom/android/settings/KeySettingsSelectFragment$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/KeySettingsSelectFragment$3;-><init>(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    .line 393
    iget-object p3, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, p3}, Lcom/android/settings/KeySettingsSelectFragment;->getAction(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    .line 394
    iget-object p3, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/KeySettingsSelectFragment;->getFunction(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance p3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-direct {p3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 397
    invoke-virtual {p3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->key_gesture_function_dialog_message:I

    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mTitle:Ljava/lang/String;

    filled-new-array {p1, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 398
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_positive:I

    .line 400
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_negative:I

    .line 401
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 402
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 403
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private bringUpFsgChooseDlg(Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 1

    .line 317
    iget-object p2, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 319
    iget-object p2, p0, Lcom/android/settings/KeySettingsSelectFragment;->mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p2, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance p2, Lcom/android/settings/KeySettingsSelectFragment$2;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/KeySettingsSelectFragment$2;-><init>(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    .line 335
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 336
    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lcom/android/settings/R$string;->key_fsg_dialog_message:I

    .line 337
    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lcom/android/settings/R$string;->key_fsg_dialog_positive:I

    .line 338
    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lcom/android/settings/R$string;->key_fsg_dialog_negative:I

    .line 339
    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 340
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 341
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getAction(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const-string p0, "double_click_power_key"

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 418
    sget p0, Lcom/android/settings/R$string;->double_click_power_key:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "long_press_menu_key"

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 420
    sget p0, Lcom/android/settings/R$string;->long_press_menu_key:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "long_press_home_key"

    .line 421
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 422
    sget p0, Lcom/android/settings/R$string;->long_press_home_key:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "long_press_back_key"

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 424
    sget p0, Lcom/android/settings/R$string;->long_press_back_key:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "key_combination_power_back"

    .line 425
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 426
    sget p0, Lcom/android/settings/R$string;->key_combination_power_back:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "key_combination_power_home"

    .line 427
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 428
    sget p0, Lcom/android/settings/R$string;->key_combination_power_home:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "key_combination_power_menu"

    .line 429
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 430
    sget p0, Lcom/android/settings/R$string;->key_combination_power_menu:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "long_press_menu_key_when_lock"

    .line 431
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 432
    sget p0, Lcom/android/settings/R$string;->long_press_menu_key_when_lock:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string/jumbo p0, "three_gesture_down"

    .line 433
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 434
    sget p0, Lcom/android/settings/R$string;->three_gesture_down:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string/jumbo p0, "three_gesture_long_press"

    .line 435
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 436
    sget p0, Lcom/android/settings/R$string;->three_gesture_long_press:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method private getFunction(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const-string p0, "launch_camera"

    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 444
    sget p0, Lcom/android/settings/R$string;->launch_camera:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "screen_shot"

    .line 445
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 446
    sget p0, Lcom/android/settings/R$string;->screen_shot:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "partial_screen_shot"

    .line 447
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 448
    sget p0, Lcom/android/settings/R$string;->regional_screen_shot:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "launch_voice_assistant"

    .line 449
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 450
    sget p0, Lcom/android/settings/R$string;->launch_voice_assistant:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "launch_google_search"

    .line 451
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 452
    sget p0, Lcom/android/settings/R$string;->launch_google_search:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "go_to_sleep"

    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 454
    sget p0, Lcom/android/settings/R$string;->go_to_sleep:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string/jumbo p0, "turn_on_torch"

    .line 455
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 456
    sget p0, Lcom/android/settings/R$string;->turn_on_torch:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "close_app"

    .line 457
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 458
    sget p0, Lcom/android/settings/R$string;->close_app:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string/jumbo p0, "split_screen"

    .line 459
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 460
    sget p0, Lcom/android/settings/R$string;->split_screen:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string/jumbo p0, "mi_pay"

    .line 461
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 462
    sget p0, Lcom/android/settings/R$string;->mi_pay:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "dump_log"

    .line 463
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 464
    sget p0, Lcom/android/settings/R$string;->dump_log:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string/jumbo p0, "show_menu"

    .line 465
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 466
    sget p0, Lcom/android/settings/R$string;->show_menu:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, "launch_recents"

    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 468
    sget p0, Lcom/android/settings/R$string;->launch_recents:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p0, "au_pay"

    .line 469
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 470
    sget p0, Lcom/android/settings/R$string;->au_pay:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "google_pay"

    .line 471
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 472
    sget p0, Lcom/android/settings/R$string;->google_pay:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, "launch_smarthome"

    .line 473
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 474
    sget p0, Lcom/android/settings/R$string;->launch_smarthome:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method private getLongPressPowerPreference(Lmiuix/preference/RadioButtonPreferenceCategory;)Lmiuix/preference/RadioButtonPreference;
    .locals 3

    const/4 p0, 0x0

    .line 520
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 521
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 522
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "long_press_power_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getResId(Ljava/lang/String;Landroid/content/res/Resources;)I
    .locals 1

    .line 481
    sget p0, Lcom/android/settings/R$string;->launch_camera:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    .line 483
    :cond_0
    sget p0, Lcom/android/settings/R$string;->screen_shot:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    .line 485
    :cond_1
    sget p0, Lcom/android/settings/R$string;->regional_screen_shot:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    .line 487
    :cond_2
    sget p0, Lcom/android/settings/R$string;->launch_voice_assistant:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p0

    .line 489
    :cond_3
    sget p0, Lcom/android/settings/R$string;->launch_google_search:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p0

    .line 491
    :cond_4
    sget p0, Lcom/android/settings/R$string;->go_to_sleep:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return p0

    .line 493
    :cond_5
    sget p0, Lcom/android/settings/R$string;->turn_on_torch:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return p0

    .line 495
    :cond_6
    sget p0, Lcom/android/settings/R$string;->close_app:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    .line 497
    :cond_7
    sget p0, Lcom/android/settings/R$string;->split_screen:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return p0

    .line 499
    :cond_8
    sget p0, Lcom/android/settings/R$string;->mi_pay:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return p0

    .line 501
    :cond_9
    sget p0, Lcom/android/settings/R$string;->dump_log:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return p0

    .line 503
    :cond_a
    sget p0, Lcom/android/settings/R$string;->show_menu:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return p0

    .line 505
    :cond_b
    sget p0, Lcom/android/settings/R$string;->launch_recents:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return p0

    .line 507
    :cond_c
    sget p0, Lcom/android/settings/R$string;->au_pay:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return p0

    .line 509
    :cond_d
    sget p0, Lcom/android/settings/R$string;->google_pay:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return p0

    .line 511
    :cond_e
    sget p0, Lcom/android/settings/R$string;->launch_smarthome:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private init(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/KeySettingsSelectFragment;->getResId(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v0

    .line 197
    sget v1, Lcom/android/settings/R$string;->launch_camera:I

    const-string v2, "KeySettings"

    const-string v3, "double_click_power_key"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "launch_camera"

    .line 198
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 199
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 200
    :cond_0
    sget v1, Lcom/android/settings/R$string;->screen_shot:I

    const-string/jumbo v5, "three_gesture_down"

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "screen_shot"

    .line 201
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 202
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 203
    :cond_1
    sget v1, Lcom/android/settings/R$string;->regional_screen_shot:I

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "partial_screen_shot"

    .line 204
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    const-string/jumbo v0, "three_gesture_long_press"

    .line 205
    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 206
    :cond_2
    sget v1, Lcom/android/settings/R$string;->launch_voice_assistant:I

    const-string v6, "long_press_power_key"

    if-ne v0, v1, :cond_3

    const-string v0, "launch_voice_assistant"

    .line 207
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_has_aikey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 210
    invoke-virtual {p1, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 212
    :cond_3
    sget v1, Lcom/android/settings/R$string;->launch_google_search:I

    if-ne v0, v1, :cond_4

    const-string p1, "launch_google_search"

    .line 213
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 214
    :cond_4
    sget v1, Lcom/android/settings/R$string;->go_to_sleep:I

    const-string v7, "key_combination_power_menu"

    const-string v8, "key_combination_power_home"

    const-string v9, "key_combination_power_back"

    if-ne v0, v1, :cond_5

    const-string v0, "go_to_sleep"

    .line 215
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 216
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 219
    :cond_5
    sget v1, Lcom/android/settings/R$string;->turn_on_torch:I

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "turn_on_torch"

    .line 220
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 221
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v0, "window"

    .line 223
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 226
    :try_start_0
    invoke-interface {v0, v4}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v4

    :goto_0
    if-nez v0, :cond_10

    const-string v0, "long_press_menu_key_when_lock"

    .line 231
    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 233
    :cond_6
    sget v1, Lcom/android/settings/R$string;->close_app:I

    if-ne v0, v1, :cond_7

    const-string p1, "close_app"

    .line 234
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 235
    :cond_7
    sget v1, Lcom/android/settings/R$string;->split_screen:I

    if-ne v0, v1, :cond_8

    const-string/jumbo v0, "split_screen"

    .line 236
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 237
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 240
    :cond_8
    sget v1, Lcom/android/settings/R$string;->mi_pay:I

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "mi_pay"

    .line 241
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    const-string v0, "long_press_home_key"

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "long_press_menu_key"

    .line 243
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "long_press_back_key"

    .line 244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 249
    :cond_9
    sget v1, Lcom/android/settings/R$string;->dump_log:I

    if-ne v0, v1, :cond_a

    const-string v0, "dump_log"

    .line 250
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 251
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 252
    :cond_a
    sget v1, Lcom/android/settings/R$string;->show_menu:I

    if-ne v0, v1, :cond_b

    const-string/jumbo p1, "show_menu"

    .line 253
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_b
    sget v1, Lcom/android/settings/R$string;->launch_recents:I

    if-ne v0, v1, :cond_c

    const-string p1, "launch_recents"

    .line 255
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    goto :goto_1

    .line 256
    :cond_c
    sget v1, Lcom/android/settings/R$string;->au_pay:I

    const-string v4, "key_none"

    if-ne v0, v1, :cond_d

    const-string v0, "au_pay"

    .line 257
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 259
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_d
    sget v1, Lcom/android/settings/R$string;->google_pay:I

    if-ne v0, v1, :cond_e

    const-string v0, "google_pay"

    .line 262
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 264
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_e
    sget v1, Lcom/android/settings/R$string;->launch_smarthome:I

    if-ne v0, v1, :cond_f

    const-string v0, "launch_smarthome"

    .line 267
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not found titleId"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 276
    :cond_10
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mPreferenceKey = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isNeedFsgDlg(Ljava/lang/String;)Z
    .locals 1

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "double_click_power_key"

    .line 409
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "long_press_power_key"

    .line 410
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "three_gesture_down"

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "three_gesture_long_press"

    .line 412
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "key_none"

    .line 413
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private performFsgChange(Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeySettingsSelectFragment;->performSettingsChange(Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    return-void
.end method

.method private performSettingsChange(Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mHidedRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 347
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mHidedRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x2

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "launch_voice_assistant"

    .line 353
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 354
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "long_press_power_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "long_press_power_launch_xiaoai"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 359
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 363
    :cond_2
    iput-object p2, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 364
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/KeySettingsPreviewPreference;->setCheckedAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 56
    const-class p0, Lcom/android/settings/KeySettingsSelectFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    sget p1, Lcom/android/settings/R$xml;->key_settings_select_fragment:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->launch_voice_assistant:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:show_fragment_title"

    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mTitle:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$array;->key_and_gesture_shortcut_action:I

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/KeySettingsSelectFragment;->init(Ljava/util/ArrayList;)V

    const-string p1, "key_gesture_function_preview"

    .line 105
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/KeySettingsPreviewPreference;

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    const-string p1, "dump_log"

    .line 107
    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "key_gesture_function_category"

    .line 108
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionCategory:Landroidx/preference/PreferenceCategory;

    .line 109
    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 110
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionCategory:Landroidx/preference/PreferenceCategory;

    sget v1, Lcom/android/settings/R$string;->dump_log_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 111
    new-instance p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->dump_log_summary:I

    const/16 v4, 0x11c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 114
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string p1, "key_gesture_function_optional"

    .line 119
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "key_none"

    const-string/jumbo v3, "three_gesture_long_press"

    const-string v4, "long_press_power_key"

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    new-instance v5, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 123
    sget v6, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 124
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->long_press_power_key_tips:I

    .line 127
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v3, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->three_gesture_long_press:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 131
    :cond_5
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "string"

    invoke-virtual {v3, v0, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 131
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 134
    :goto_2
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v4, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v4, v5}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 137
    iget-object v4, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    iput-object v5, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 140
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    if-nez v0, :cond_3

    .line 141
    iput-object v5, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    goto/16 :goto_1

    .line 145
    :cond_7
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "double_click_power_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 148
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 149
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "three_gesture_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 151
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 152
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mHidedRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 153
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 154
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 153
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    .line 157
    :cond_8
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->setPreferenceKey(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/KeySettingsPreviewPreference;->setCheckedAction(Ljava/lang/String;)V

    .line 160
    new-instance p1, Lcom/android/settings/KeySettingsSelectFragment$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/KeySettingsSelectFragment$1;-><init>(Lcom/android/settings/KeySettingsSelectFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 178
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "long_press_power_launch_xiaoai"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiShortcut$System;->isSupportNewVersionKeySettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 73
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 74
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SubSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    const-string v2, "com.android.settings.GestureShortcutSettingsSelectFragment"

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "voice_assist"

    .line 78
    iget-object v2, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v1, v2}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionPreview:Lcom/android/settings/KeySettingsPreviewPreference;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/android/settings/KeySettingsPreviewPreference;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 188
    iput-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mFsgChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 189
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 5

    .line 282
    instance-of v0, p2, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_3

    .line 283
    move-object v0, p2

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 284
    iget-object v1, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    if-eq v1, v0, :cond_3

    .line 285
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/android/settings/KeySettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "none"

    .line 287
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "turn_on_torch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mPreferenceKey:Ljava/lang/String;

    .line 289
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/settings/KeySettingsSelectFragment;->mKeyGestureFunctionOptional:Lmiuix/preference/RadioButtonPreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v3, v4}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 292
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/KeySettingsSelectFragment;->bringUpActionChooseDlg(Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/KeySettingsSelectFragment;->isNeedFsgDlg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment;->mRadioButtonPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/KeySettingsSelectFragment;->bringUpFsgChooseDlg(Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings/KeySettingsSelectFragment;->performSettingsChange(Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    .line 303
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
