.class public Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FaceSettingsRemoveButtonPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;,
        Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;
    }
.end annotation


# static fields
.field static final KEY:Ljava/lang/String; = "security_settings_face_delete_faces_container"

.field private static final TAG:Ljava/lang/String; = "FaceSettings/Remove"


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

.field private mListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPreference:Landroidx/preference/Preference;

.field private final mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private mRemoving:Z

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmButton(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceManager(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceUpdater(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Lcom/android/settings/biometrics/face/FaceUpdater;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovalCallback(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRemoving(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "security_settings_face_delete_faces_container"

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    new-instance p2, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$1;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 132
    new-instance p2, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 158
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    .line 159
    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 160
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 161
    new-instance v0, Lcom/android/settings/biometrics/face/FaceUpdater;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/biometrics/face/FaceUpdater;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceManager;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceUpdater:Lcom/android/settings/biometrics/face/FaceUpdater;

    return-void
.end method


# virtual methods
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "security_settings_face_delete_faces_container"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
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

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    .line 208
    new-instance p1, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;

    invoke-direct {p1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 210
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->isConvenience(Landroid/hardware/face/FaceManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;->setIsConvenience(Z)V

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mUserId:I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 176
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 177
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->security_settings_face_settings_remove_button:I

    .line 178
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    .line 180
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/google/android/setupdesign/util/ButtonStyler;->applyPartnerCustomizationPrimaryButtonStyle(Landroid/content/Context;Landroid/widget/Button;)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isFaceHardwareDetected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
