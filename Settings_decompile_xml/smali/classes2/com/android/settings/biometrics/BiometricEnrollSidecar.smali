.class public abstract Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedAcquired;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerDown;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field protected mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

.field private mQueuedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancelEnrollment()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 207
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    const/4 v0, -0x1

    .line 208
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getEnrollmentRemaining()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    return p0
.end method

.method public getEnrollmentSteps()I
    .locals 0

    .line 280
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    return p0
.end method

.method public isEnrolling()Z
    .locals 0

    .line 292
    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return p0
.end method

.method protected onAcquired(Z)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onAcquired(Z)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedAcquired;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedAcquired;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 174
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method protected onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return-void
.end method

.method protected onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected onEnrollmentProgress(I)V
    .locals 3

    .line 215
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 216
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    .line 218
    :cond_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 219
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mDone:Z

    .line 220
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_2

    .line 221
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    invoke-interface {v0, p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected onPointerDown(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onPointerDown(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerDown;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerDown;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected onPointerUp(I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onPointerUp(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedPointerUp;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 190
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 2

    .line 269
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;

    .line 273
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;->send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method protected startEnrollment()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    .line 198
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    .line 199
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return-void
.end method
