.class public final Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiPhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mButtonBackLightSwitch:Landroidx/preference/CheckBoxPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsHighMatchKeyboard:Z

.field private mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

.field private mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNaturalScrollSwitch:Landroidx/preference/CheckBoxPreference;

.field private mPointSpeedSeekBar:Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;

.field private mPointerSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private mShortcutKeyPreference:Landroidx/preference/Preference;

.field private mShouldUpdateKeyboard:Z


# direct methods
.method public static synthetic $r8$lambda$3BprKKBn1b1AOX1eh3fL9fYph6A(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->lambda$updateHardKeyboards$3(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HDowtQeJSYnVXZMDDk7FJAucjL0(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-bOhFNApeseDr3U9fV18RqwFq4(Ljava/text/Collator;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->lambda$getHardKeyboards$4(Ljava/text/Collator;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uw4NRNQcp52Gi0Xt7YGFmGd_ovE(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wr-XCchPArLtyL6fZWlnc-aHr7s(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNaturalScrollSwitch(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mNaturalScrollSwitch:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsHighMatchKeyboard(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIsHighMatchKeyboard:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldUpdateKeyboard(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShouldUpdateKeyboard:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleUpdateHardKeyboards(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 402
    new-instance v0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    .line 413
    new-instance v0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$2;-><init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static getHardKeyboards(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    .line 336
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 338
    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 339
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 340
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    new-instance v6, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 344
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    invoke-static {v5, p0, v1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->getLayoutLabel(Landroid/view/InputDevice;Landroid/content/Context;Landroid/hardware/input/InputManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 343
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    .line 348
    new-instance v1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda0;-><init>(Ljava/text/Collator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getLayoutLabel(Landroid/view/InputDevice;Landroid/content/Context;Landroid/hardware/input/InputManager;)Ljava/lang/String;
    .locals 0

    .line 320
    invoke-virtual {p0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 322
    sget p0, Lcom/android/settings/R$string;->miui_keyboard_layout_default_label:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    invoke-virtual {p2, p0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    if-nez p0, :cond_1

    .line 326
    sget p0, Lcom/android/settings/R$string;->miui_keyboard_layout_default_label:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getHardKeyboards$4(Ljava/text/Collator;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;)I
    .locals 2

    .line 349
    iget-object v0, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 353
    :cond_0
    iget-object v0, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 354
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 358
    :cond_1
    iget-object p1, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$scheduleUpdateHardKeyboards$0(Ljava/util/List;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->updateHardKeyboards(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$scheduleUpdateHardKeyboards$1(Ljava/util/List;)V
    .locals 0

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->updateAllPreference(Z)V

    return-void
.end method

.method private synthetic lambda$scheduleUpdateHardKeyboards$2()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {v0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->getHardKeyboards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 182
    new-instance v1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateHardKeyboards$3(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z
    .locals 0

    .line 242
    iget-object p1, p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p0, 0x1

    return p0
.end method

.method private registerObserver()V
    .locals 8

    .line 446
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mouse_gesture_naturalscroll"

    .line 447
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 448
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 446
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "keyboard_type_level"

    .line 450
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 451
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 449
    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 452
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "pointer_speed"

    .line 453
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 452
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 457
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 456
    invoke-virtual {v0, v5, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 458
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 459
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 458
    invoke-virtual {p0, v5, v0}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method private scheduleUpdateHardKeyboards()V
    .locals 1

    .line 177
    new-instance v0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setPointSpeed(I)V
    .locals 0

    .line 0
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p1, 0x0

    .line 256
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "keyboardLayout"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateAllPreference(Z)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointerSettingsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_1

    .line 441
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateHardKeyboards(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShouldUpdateKeyboard:Z

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 199
    iget-boolean v1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShouldUpdateKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 200
    iput-boolean v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShouldUpdateKeyboard:Z

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 206
    :cond_2
    new-instance v3, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 208
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 209
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 210
    new-instance v4, Lcom/android/settings/stylus/MiuiStylusMessagePreference;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/stylus/MiuiStylusMessagePreference;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v5, Lcom/android/settings/stylus/MiuiKeyboardPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/stylus/MiuiKeyboardPreference;-><init>(Landroid/content/Context;)V

    .line 213
    iget-object v6, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 214
    sget v6, Lcom/android/settings/R$string;->settings_keyboard_warning:I

    invoke-virtual {v4, v6}, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->setText(I)V

    .line 215
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 217
    :cond_3
    iget-object v4, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-lez v4, :cond_4

    move v2, v6

    :cond_4
    invoke-virtual {v5, v2}, Lcom/android/settings/stylus/MiuiKeyboardPreference;->setEnabled(Z)V

    .line 218
    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 220
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->isGreaterOrEqualMIUI13()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 222
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 223
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShortcutKeyPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 224
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v6, 0x2

    .line 227
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIsHighMatchKeyboard:Z

    if-eqz v2, :cond_6

    .line 228
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v6, v3

    .line 231
    :cond_6
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 232
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-direct {v2, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 233
    sget v1, Lcom/android/settings/R$string;->builtin_keyboard_settings_title:I

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(I)V

    add-int/lit8 v1, v6, 0x1

    .line 234
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 235
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 238
    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 239
    iget-object v5, v3, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v5, v3, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v5, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_7
    move v6, v1

    .line 248
    :cond_8
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointerSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 249
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointerSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->updateSwitchStatus()V

    return-void
.end method

.method private updateSwitchStatus()V
    .locals 3

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    invoke-static {v0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->getHardKeyboards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mButtonBackLightSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "keyboard_back_light"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x15a

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 307
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 309
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "input_device_identifier"

    .line 311
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    const/4 p2, 0x0

    .line 312
    iput-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 313
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 96
    sget p2, Lcom/android/settings/R$xml;->miui_physical_keyboard_settings:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 97
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const-string p1, "keyboard_assistance_category"

    .line 99
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 98
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    const-string p2, "keyboard_back_light"

    .line 100
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mButtonBackLightSwitch:Landroidx/preference/CheckBoxPreference;

    const-string p1, "keyboard_shortcut_key"

    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    .line 103
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ks_category_key"

    const-string/jumbo v1, "string"

    .line 103
    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    const-string p2, "keyboard_customer_shortcut_key"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShortcutKeyPreference:Landroidx/preference/Preference;

    .line 110
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ks_title"

    .line 110
    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 112
    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShortcutKeyPreference:Landroidx/preference/Preference;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 115
    :cond_1
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->isGreaterOrEqualMIUI13()Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardShortcutCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 119
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIsHighMatchKeyboard:Z

    if-nez p1, :cond_3

    .line 120
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string/jumbo p1, "pointer_settings_category"

    .line 122
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointerSettingsCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p2, "pointer_speed"

    .line 124
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointSpeedSeekBar:Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;

    const/4 p2, 0x0

    .line 126
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/MiuiSeekBarPreference;->setShowTitleIcon(Z)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointerSettingsCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p2, "mouse_gesture_naturalscroll"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mNaturalScrollSwitch:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 272
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "keyboard_back_light"

    const-string/jumbo v3, "mouse_gesture_naturalscroll"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "pointer_speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 279
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->setPointSpeed(I)V

    goto :goto_1

    .line 274
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 276
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 274
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 282
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 284
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 282
    invoke-static {p0, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a29845a -> :sswitch_2
        -0x5bb7b0ea -> :sswitch_1
        0x1aba3fc5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mShouldUpdateKeyboard:Z

    .line 139
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->registerObserver()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mPointSpeedSeekBar:Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mButtonBackLightSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mNaturalScrollSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->updateSwitchStatus()V

    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "input_device_identifier"

    .line 299
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    iput-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
