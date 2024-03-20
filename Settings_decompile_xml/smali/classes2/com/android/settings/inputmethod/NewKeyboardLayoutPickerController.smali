.class public Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NewKeyboardLayoutPickerController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field private mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mLayout:Ljava/lang/String;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settings/widget/TickButtonPreference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousSelection:Ljava/lang/String;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceId:I

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 144
    new-instance v4, Lcom/android/settings/widget/TickButtonPreference;

    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/widget/TickButtonPreference;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mLayout:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 148
    invoke-virtual {v4, v5}, Lcom/android/settings/widget/TickButtonPreference;->setSelected(Z)V

    .line 149
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreviousSelection:Ljava/lang/String;

    .line 151
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 153
    iget-object v5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setLayout(Lcom/android/settings/widget/TickButtonPreference;)V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget v2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreferenceMap:Ljava/util/Map;

    .line 163
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/InputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 95
    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->createPreferenceHierarchy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 106
    instance-of v0, p1, Lcom/android/settings/widget/TickButtonPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/TickButtonPreference;

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/TickButtonPreference;->setSelected(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreviousSelection:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreviousSelection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/TickButtonPreference;

    .line 114
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/TickButtonPreference;->setSelected(Z)V

    .line 116
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->setLayout(Lcom/android/settings/widget/TickButtonPreference;)V

    .line 117
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mPreviousSelection:Ljava/lang/String;

    return v2
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public initialize(Landroidx/fragment/app/Fragment;ILandroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mParent:Landroidx/fragment/app/Fragment;

    .line 66
    iput p2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mUserId:I

    .line 67
    iput-object p3, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 68
    iput-object p4, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 69
    iput-object p5, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 70
    iput-object p6, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mLayout:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/hardware/input/InputManager;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    return-void
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    .line 79
    invoke-static {v1, v0}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 83
    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils;->getInputDevice(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceId:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController;->mInputDeviceId:I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
