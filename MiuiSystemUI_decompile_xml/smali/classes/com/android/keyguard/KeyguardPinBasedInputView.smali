.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mButtons:[Lcom/android/keyguard/NumPadKey;

.field public mDeleteButton:Landroid/view/View;

.field public mOkButton:Lcom/android/keyguard/NumPadButton;

.field public mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    new-array p1, p1, [Lcom/android/keyguard/NumPadKey;

    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    return-void
.end method


# virtual methods
.method public getButtons()[Lcom/android/keyguard/NumPadKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 2
    return-object p0
    .line 4
.end method

.method public getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getPromptReasonStringRes(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_5

    .line 2
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_4

    .line 5
    const/4 p0, 0x3

    .line 7
    if-eq p1, p0, :cond_3

    .line 8
    const/4 p0, 0x4

    .line 10
    if-eq p1, p0, :cond_2

    .line 11
    const/4 p0, 0x6

    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    const/16 p0, 0x10

    .line 16
    if-eq p1, p0, :cond_0

    .line 18
    const p0, 0x7f130634    # @string/kg_prompt_reason_timeout_pin 'For additional security, use PIN instead'

    .line 20
    return p0

    .line 23
    :cond_0
    const p0, 0x7f130626    # @string/kg_prompt_after_update_pin 'Device updated. Enter PIN to continue.'

    .line 24
    return p0

    .line 27
    :cond_1
    const p0, 0x7f130639    # @string/kg_prompt_unattended_update_pin 'Enter PIN to install update later'

    .line 28
    return p0

    .line 31
    :cond_2
    const p0, 0x7f130629    # @string/kg_prompt_after_user_lockdown_pin 'PIN is required after lockdown'

    .line 32
    return p0

    .line 35
    :cond_3
    const p0, 0x7f13062e    # @string/kg_prompt_reason_device_admin 'Device locked by admin'

    .line 36
    return p0

    .line 39
    :cond_4
    const p0, 0x7f130631    # @string/kg_prompt_reason_restart_pin 'PIN is required after device restarts'

    .line 40
    return p0

    .line 43
    :cond_5
    const/4 p0, 0x0

    .line 44
    return p0
    .line 45
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x1040500    # @android:string/lockscreen_storage_locked

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    .line 13
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 18
    const v0, 0x7f0a0464    # @id/key_enter

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/keyguard/NumPadButton;

    .line 28
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    .line 30
    const v0, 0x7f0a02a3    # @id/delete_button

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    .line 39
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 45
    const v3, 0x7f0a045a    # @id/key0

    .line 47
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/keyguard/NumPadKey;

    .line 54
    aput-object v3, v0, v2

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 58
    const v2, 0x7f0a045b    # @id/key1

    .line 60
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/keyguard/NumPadKey;

    .line 67
    aput-object v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 71
    const v1, 0x7f0a045c    # @id/key2

    .line 73
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 80
    const/4 v2, 0x2

    .line 82
    aput-object v1, v0, v2

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 85
    const v1, 0x7f0a045d    # @id/key3

    .line 87
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 94
    const/4 v2, 0x3

    .line 96
    aput-object v1, v0, v2

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 99
    const v1, 0x7f0a045e    # @id/key4

    .line 101
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 108
    const/4 v2, 0x4

    .line 110
    aput-object v1, v0, v2

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 113
    const v1, 0x7f0a045f    # @id/key5

    .line 115
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 122
    const/4 v2, 0x5

    .line 124
    aput-object v1, v0, v2

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 127
    const v1, 0x7f0a0460    # @id/key6

    .line 129
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v1

    .line 135
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 136
    const/4 v2, 0x6

    .line 138
    aput-object v1, v0, v2

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 141
    const v1, 0x7f0a0461    # @id/key7

    .line 143
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v1

    .line 149
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 150
    const/4 v2, 0x7

    .line 152
    aput-object v1, v0, v2

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 155
    const v1, 0x7f0a0462    # @id/key8

    .line 157
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v1

    .line 163
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 164
    const/16 v2, 0x8

    .line 166
    aput-object v1, v0, v2

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 170
    const v1, 0x7f0a0463    # @id/key9

    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v1

    .line 178
    check-cast v1, Lcom/android/keyguard/NumPadKey;

    .line 179
    const/16 v2, 0x9

    .line 181
    aput-object v1, v0, v2

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 185
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 187
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 190
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->reloadColors()V

    .line 193
    return-void
    .line 196
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    .line 11
    return v1

    .line 14
    :cond_0
    const/16 v0, 0x43

    .line 15
    if-ne p1, v0, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 21
    return v1

    .line 24
    :cond_1
    const/16 v0, 0x9

    .line 25
    const/4 v2, 0x7

    .line 27
    if-lt p1, v2, :cond_3

    .line 28
    const/16 v3, 0x10

    .line 30
    if-gt p1, v3, :cond_3

    .line 32
    sub-int/2addr p1, v2

    .line 34
    if-ltz p1, :cond_2

    .line 35
    if-gt p1, v0, :cond_2

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 39
    aget-object p0, p0, p1

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    .line 43
    :cond_2
    return v1

    .line 46
    :cond_3
    const/16 v2, 0x90

    .line 47
    if-lt p1, v2, :cond_5

    .line 49
    const/16 v3, 0x99

    .line 51
    if-gt p1, v3, :cond_5

    .line 53
    sub-int/2addr p1, v2

    .line 55
    if-ltz p1, :cond_4

    .line 56
    if-gt p1, v0, :cond_4

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 60
    aget-object p0, p0, p1

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    .line 64
    :cond_4
    return v1

    .line 67
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 68
    const/4 p0, 0x0

    .line 71
    return p0
    .line 72
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public reloadColors()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    aget-object v2, p0, v1

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    return-void
    .line 16
.end method

.method public final resetPasswordText(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    .line 4
    return-void
    .line 7
.end method

.method public final setPasswordEntryEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 9
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 14
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->hasFocus()Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public final setPasswordEntryInputEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 9
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 14
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->hasFocus()Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 24
    :cond_0
    return-void
    .line 27
.end method
