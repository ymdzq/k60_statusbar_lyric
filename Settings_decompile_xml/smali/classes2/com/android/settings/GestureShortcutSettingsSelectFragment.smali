.class public Lcom/android/settings/GestureShortcutSettingsSelectFragment;
.super Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;
.source "GestureShortcutSettingsSelectFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mLongPressPowerKeyLaunchXiaoai:Z

.field private mLongPresspowerKeyLaunchSmartHome:Z

.field private mMediaCheckboxPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/MediaCheckboxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionChangeDialog(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mLongPressPowerKeyLaunchXiaoai:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPresspowerKeyLaunchSmartHome(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mLongPresspowerKeyLaunchSmartHome:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleKey(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActionChangeDialog(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongPressPowerKeyLaunchXiaoai(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mLongPressPowerKeyLaunchXiaoai:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongPresspowerKeyLaunchSmartHome(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mLongPresspowerKeyLaunchSmartHome:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mMediaCheckboxPreferences:Ljava/util/List;

    return-void
.end method

.method private bringDialog(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/GestureShortcutSettingsSelectFragment$2;-><init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Landroidx/preference/CheckBoxPreference;)V

    .line 309
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 314
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 315
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->gesture_function_dialog_message:I

    iget-object v4, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitle:Ljava/lang/String;

    filled-new-array {p1, p2, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_positive:I

    .line 319
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->key_gesture_function_dialog_negative:I

    .line 320
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 321
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mActionChangeDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 322
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private bringUpGuideAnimation()V
    .locals 9

    .line 395
    sget v0, Lcom/android/settings/R$layout;->power_guide:I

    .line 396
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x103006b    # @android:style/Theme.Holo

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 400
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/high16 v6, 0xd000000

    const/4 v7, -0x3

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 409
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 412
    invoke-interface {v1, v0, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dimen"

    const-string v4, "android"

    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 418
    :goto_0
    sget v3, Lcom/android/settings/R$id;->power_guide:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 420
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v2

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->power_guide_out_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 423
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    sget v2, Lcom/android/settings/R$id;->start_enjoy:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 425
    new-instance v3, Lcom/android/settings/GestureShortcutSettingsSelectFragment$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment$4;-><init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    new-instance v2, Lcom/android/settings/GestureShortcutSettingsSelectFragment$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment$5;-><init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private isLongPressPowerLaunchXiaoAi()Z
    .locals 3

    .line 333
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 335
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "long_press_power_launch_xiaoai"

    const/4 v2, 0x0

    .line 333
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private registerContentObserver(Landroidx/preference/PreferenceCategory;)V
    .locals 4

    .line 340
    new-instance v0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/GestureShortcutSettingsSelectFragment$3;-><init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;Landroid/os/Handler;Landroidx/preference/PreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 385
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "long_press_power_launch_xiaoai"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 388
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "long_press_power_launch_smarthome"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 391
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private setTitleKey(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    .line 258
    sget v0, Lcom/android/settings/R$string;->voice_assist:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "launch_voice_assistant"

    .line 259
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 260
    :cond_0
    sget v0, Lcom/android/settings/R$string;->launch_google_search:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "launch_google_search"

    .line 261
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 262
    :cond_1
    sget v0, Lcom/android/settings/R$string;->screen_shot:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "screen_shot"

    .line 263
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 264
    :cond_2
    sget v0, Lcom/android/settings/R$string;->regional_screen_shot:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "partial_screen_shot"

    .line 265
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    :cond_3
    sget v0, Lcom/android/settings/R$string;->mi_pay_summary:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lcom/android/settings/R$string;->mi_pay_summary_without_nfc:I

    .line 267
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 269
    :cond_4
    sget v0, Lcom/android/settings/R$string;->launch_camera:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "launch_camera"

    .line 270
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto :goto_1

    .line 271
    :cond_5
    sget v0, Lcom/android/settings/R$string;->turn_on_torch:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo p1, "turn_on_torch"

    .line 272
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_6
    sget v0, Lcom/android/settings/R$string;->au_pay:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "au_pay"

    .line 274
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto :goto_1

    .line 275
    :cond_7
    sget v0, Lcom/android/settings/R$string;->google_pay:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "google_pay"

    .line 276
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto :goto_1

    .line 277
    :cond_8
    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    const-string v0, "change_brightness"

    invoke-static {v0, p2}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 279
    iput-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_9
    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    const-string v0, "launch_smarthome"

    invoke-static {v0, p2}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 282
    iput-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string p1, "GestureShortcutSettingsSelectFragment"

    const-string p2, "Illegal title!"

    .line 284
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_b
    :goto_0
    const-string/jumbo p1, "mi_pay"

    .line 268
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget p1, Lcom/android/settings/R$xml;->gesture_shortcut_settings_select:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ":settings:show_fragment_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitle:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->setTitleKey(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiShortcut$Key;->setGestureMap(Landroid/content/Context;)V

    .line 74
    sget-object p1, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/MiuiShortcut$Key;->getGestureShortcutAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 82
    sget-object v1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->GESTURE_PAGE_KEY:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mPageTitle:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "action_category"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const-string v2, "launch_google_search"

    if-eqz v1, :cond_c

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    new-instance v4, Lcom/android/settings/widget/MediaCheckboxPreference;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    .line 89
    sget-boolean v6, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v8

    .line 90
    :goto_1
    invoke-direct {v4, v5, v6}, Lcom/android/settings/widget/MediaCheckboxPreference;-><init>(Landroid/content/Context;I)V

    .line 91
    iget-object v5, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {v3, v5}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    .line 93
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 94
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/MediaCheckboxPreference;->setResName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Lcom/android/settings/widget/MediaCheckboxPreference;->getType()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 97
    invoke-virtual {v4, v5}, Lcom/android/settings/widget/MediaCheckboxPreference;->setShowDelimiter(Z)V

    .line 100
    :cond_3
    sget-object v6, Lcom/android/settings/MiuiShortcut$Key;->FEATURE_KNOCK:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "knock_edge_area_invalid"

    .line 101
    iget-object v7, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {v6, v7}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    :cond_4
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "double_click_volume_down_when_lock"

    .line 106
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "long_press_power_key"

    if-eqz v6, :cond_6

    .line 107
    iget-object v6, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "volumekey_launch_camera"

    const/4 v10, -0x2

    .line 108
    invoke-static {v6, v9, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v8, :cond_5

    goto :goto_2

    :cond_5
    move v8, v5

    .line 107
    :goto_2
    invoke-virtual {v4, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 111
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    invoke-virtual {v4, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 113
    :cond_7
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 115
    invoke-direct {p0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->isLongPressPowerLaunchXiaoAi()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 117
    :cond_8
    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->isOnPcMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 119
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 120
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 122
    :cond_9
    iget-object v3, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mMediaCheckboxPreferences:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_a
    const-string p1, "key_combination_power_volume_down"

    .line 128
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MediaCheckboxPreference;

    if-eqz p1, :cond_c

    .line 130
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "ingres"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ares"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "key_combination_left_power_volume_down"

    .line 132
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MediaCheckboxPreference;->setResName(Ljava/lang/String;)V

    :cond_c
    const-string p1, "ai_button_global"

    .line 136
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_d

    .line 138
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->shouldShowAiButton()Z

    move-result v0

    if-nez v0, :cond_e

    .line 139
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_e
    const-string p1, "ai_button"

    .line 141
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, "launch_voice_assistant"

    .line 143
    iget-object v2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_10

    .line 144
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->shouldShowAiButton()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4

    .line 147
    :cond_f
    new-instance v0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment$1;-><init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_5

    .line 145
    :cond_10
    :goto_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 162
    :cond_11
    :goto_5
    invoke-direct {p0, v1}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->registerContentObserver(Landroidx/preference/PreferenceCategory;)V

    return-void

    .line 66
    :cond_12
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 176
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "double_click_volume_down_when_lock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-string/jumbo v4, "none"

    if-eqz v1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "volumekey_launch_camera"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    move-object v4, v0

    :cond_0
    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    const-string v1, "long_press_power_launch_xiaoai"

    const-string v2, "launch_google_search"

    const-string v5, "long_press_power_key"

    const/4 v6, 0x0

    const/4 v7, -0x2

    if-eqz p2, :cond_5

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 188
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->bringDialog(Landroidx/preference/CheckBoxPreference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 191
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    .line 191
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo p2, "power_key_guide"

    invoke-virtual {p1, p2, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p2, "power_key_guide_already_shown"

    .line 195
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->bringUpGuideAnimation()V

    .line 199
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 200
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 208
    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    invoke-interface {p0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 211
    :cond_4
    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 212
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    .line 211
    invoke-static {p2, v0, v1, v7}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 214
    iget-object p2, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 218
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 219
    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mTitleKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "launch_voice_assistant"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v0, "launch_smarthome"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    move v5, v6

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 227
    :pswitch_0
    iget-boolean p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mLongPressPowerKeyLaunchXiaoai:Z

    if-eqz p2, :cond_9

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 221
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 236
    :pswitch_2
    iget-boolean p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mLongPresspowerKeyLaunchSmartHome:Z

    if-eqz p2, :cond_9

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "long_press_power_launch_smarthome"

    invoke-static {p2, v0, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 247
    :cond_9
    :goto_1
    iget-object p2, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 248
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p2, v0, v4, v7}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 250
    iget-object p0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x4bd62764 -> :sswitch_2
        -0x3312bd1e -> :sswitch_1
        0x238dab85 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
