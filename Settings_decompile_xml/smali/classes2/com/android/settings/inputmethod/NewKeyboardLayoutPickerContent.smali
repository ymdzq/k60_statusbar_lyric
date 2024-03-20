.class public Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NewKeyboardLayoutPickerContent.java"


# instance fields
.field private mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field private mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getSelectedLayoutLabel()Ljava/lang/String;
    .locals 6

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->keyboard_default_layout:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIm:Landroid/hardware/input/InputManager;

    iget v2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getKeyboardLayout(Landroid/hardware/input/InputManager;ILandroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIm:Landroid/hardware/input/InputManager;

    iget v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v2, v3, v4, v5, p0}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getKeyboardLayouts(Landroid/hardware/input/InputManager;ILandroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 71
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 72
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "KeyboardLayoutPicker"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x7a6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 93
    sget p0, Lcom/android/settings/R$xml;->new_keyboard_layout_picker_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIm:Landroid/hardware/input/InputManager;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "keyboard_layout_picker_title"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mUserId:I

    const-string v1, "input_device_identifier"

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    const-string v1, "input_method_info"

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    iput-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "input_method_subtype"

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 54
    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIm:Landroid/hardware/input/InputManager;

    .line 55
    invoke-static {v1, p1}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const-class p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;

    iget v2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->getSelectedLayoutLabel()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->initialize(Landroidx/fragment/app/Fragment;ILandroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
