.class public Lcom/android/settings/security/UnlockModeCardPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "UnlockModeCardPreferenceController.java"


# static fields
.field private static final DISABLE_SECURITY_BY_MISHOW:Ljava/lang/String; = "disable_security_by_mishow"


# instance fields
.field private mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

.field private mBluetoothUnlockController:Lcom/android/settings/BluetoothUnlockStateController;

.field private mCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mControllerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/BaseCardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceUnlockCard:Lcom/android/settings/CardInfo;

.field private mFaceUnlockController:Lcom/android/settings/FaceUnlockStateController;

.field private mFingerUnlockCard:Lcom/android/settings/CardInfo;

.field private mFingerprintUnlockController:Lcom/android/settings/FingerprintUnlockStateController;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPasswordUnlockCard:Lcom/android/settings/CardInfo;

.field private mPasswordUnlockController:Lcom/android/settings/PasswordUnlockStateController;

.field private mPerferenceKey:Ljava/lang/String;

.field private mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockCard:Lcom/android/settings/CardInfo;

    .line 30
    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerUnlockCard:Lcom/android/settings/CardInfo;

    .line 31
    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockCard:Lcom/android/settings/CardInfo;

    .line 32
    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPerferenceKey:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/security/UnlockModeCardPreferenceController;->initCardList()V

    return-void
.end method

.method private initCardList()V
    .locals 4

    .line 77
    new-instance v0, Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_password_unlock:I

    sget v2, Lcom/android/settings/R$string;->password_unlock_title:I

    sget v3, Lcom/android/settings/R$string;->off:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/CardInfo;-><init>(III)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockCard:Lcom/android/settings/CardInfo;

    .line 78
    new-instance v0, Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_finger_unlock:I

    sget v2, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_title:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/CardInfo;-><init>(III)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerUnlockCard:Lcom/android/settings/CardInfo;

    .line 79
    new-instance v0, Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_face_unlock:I

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_biometric_weak_title:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/CardInfo;-><init>(III)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockCard:Lcom/android/settings/CardInfo;

    .line 80
    new-instance v0, Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_unlock:I

    sget v2, Lcom/android/settings/R$string;->bluetooth_unlock_title:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/CardInfo;-><init>(III)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

    .line 81
    new-instance v0, Lcom/android/settings/PasswordUnlockStateController;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v3, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/PasswordUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockController:Lcom/android/settings/PasswordUnlockStateController;

    .line 82
    new-instance v0, Lcom/android/settings/FingerprintUnlockStateController;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v3, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/FingerprintUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerprintUnlockController:Lcom/android/settings/FingerprintUnlockStateController;

    .line 83
    new-instance v0, Lcom/android/settings/FaceUnlockStateController;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v3, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/FaceUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockController:Lcom/android/settings/FaceUnlockStateController;

    .line 84
    new-instance v0, Lcom/android/settings/BluetoothUnlockStateController;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v3, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/BluetoothUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockController:Lcom/android/settings/BluetoothUnlockStateController;

    .line 85
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockController:Lcom/android/settings/PasswordUnlockStateController;

    invoke-virtual {v0}, Lcom/android/settings/PasswordUnlockStateController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockCard:Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_password_unlock_checked:I

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setCheckedIconResId(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockController:Lcom/android/settings/PasswordUnlockStateController;

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockCard:Lcom/android/settings/CardInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockController:Lcom/android/settings/PasswordUnlockStateController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerprintUnlockController:Lcom/android/settings/FingerprintUnlockStateController;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintUnlockStateController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerUnlockCard:Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_finger_unlock_checked:I

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setCheckedIconResId(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerprintUnlockController:Lcom/android/settings/FingerprintUnlockStateController;

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerUnlockCard:Lcom/android/settings/CardInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerprintUnlockController:Lcom/android/settings/FingerprintUnlockStateController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockController:Lcom/android/settings/FaceUnlockStateController;

    invoke-virtual {v0}, Lcom/android/settings/FaceUnlockStateController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockCard:Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_face_unlock_checked:I

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setCheckedIconResId(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockController:Lcom/android/settings/FaceUnlockStateController;

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockCard:Lcom/android/settings/CardInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockController:Lcom/android/settings/FaceUnlockStateController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockController:Lcom/android/settings/BluetoothUnlockStateController;

    invoke-virtual {v0}, Lcom/android/settings/BluetoothUnlockStateController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_unlock_checked:I

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setCheckedIconResId(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockController:Lcom/android/settings/BluetoothUnlockStateController;

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockCard:Lcom/android/settings/CardInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mBluetoothUnlockController:Lcom/android/settings/BluetoothUnlockStateController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_security_by_mishow"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 110
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CardInfo;

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setDisable(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initCardPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPerferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/UnlockModeCardPreference;

    iput-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;

    invoke-virtual {p1}, Lcom/android/settings/security/UnlockModeCardPreference;->getData()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;

    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mCardList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/security/UnlockModeCardPreference;->setData(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/security/UnlockModeCardPreferenceController;->initCardPreference(Landroidx/preference/PreferenceScreen;)V

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

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFingerprintUnlockController:Lcom/android/settings/FingerprintUnlockStateController;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/FingerprintUnlockStateController;->handleActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPasswordUnlockController:Lcom/android/settings/PasswordUnlockStateController;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/PasswordUnlockStateController;->handleActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 135
    :cond_2
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mFaceUnlockController:Lcom/android/settings/FaceUnlockStateController;

    if-eqz p0, :cond_3

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/FaceUnlockStateController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mControllerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseCardViewController;

    .line 71
    invoke-virtual {v0}, Lcom/android/settings/BaseCardViewController;->onResume()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreferenceController;->mPreferece:Lcom/android/settings/security/UnlockModeCardPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/UnlockModeCardPreference;->refresh()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
