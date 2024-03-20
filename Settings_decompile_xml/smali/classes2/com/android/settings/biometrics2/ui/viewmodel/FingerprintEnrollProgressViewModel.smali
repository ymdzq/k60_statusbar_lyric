.class public Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FingerprintEnrollProgressViewModel.java"


# instance fields
.field private final mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private final mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

.field private final mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:[B

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAcquireLiveData(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMessageLiveData(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHelpMessageLiveData(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointerDownLiveData(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointerUpLiveData(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressLiveData(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSteps(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->getSteps()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;I)V
    .locals 3

    .line 117
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 54
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;-><init>(II)V

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    .line 68
    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 69
    new-instance p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 118
    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    .line 119
    iput p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mUserId:I

    return-void
.end method

.method private getSteps()I
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->getSteps()I

    move-result p0

    return p0
.end method


# virtual methods
.method public cancelEnrollment()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    const-string p0, "FingerprintEnrollProgressViewModel"

    const-string v0, "Fail to cancel enrollment, has cancelled or not start"

    .line 215
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 219
    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 220
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 p0, 0x1

    return p0
.end method

.method public clearErrorMessageLiveData()V
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public clearProgressLiveData()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getAcquireLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getErrorMessageLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getHelpMessageLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPointerDownLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getPointerUpLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getProgressLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public isEnrolling()Z
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setToken([B)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    return-void
.end method

.method public startEnrollment(I)Z
    .locals 14

    .line 170
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    const/4 v1, 0x0

    const-string v2, "FingerprintEnrollProgressViewModel"

    if-nez v0, :cond_0

    const-string p0, "Null hardware auth token for enroll"

    .line 171
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p0, "Enrolling has started, shall not start again"

    .line 175
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v1}, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 187
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 189
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 190
    sget v1, Lcom/android/settings/R$bool;->enrollment_message_display_controller_flag:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    .line 193
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v7

    sget v2, Lcom/android/settings/R$integer;->enrollment_help_minimum_time_display:I

    .line 196
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sget v2, Lcom/android/settings/R$integer;->enrollment_progress_minimum_time_display:I

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sget v2, Lcom/android/settings/R$bool;->enrollment_progress_priority_over_help:I

    .line 198
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sget v2, Lcom/android/settings/R$bool;->enrollment_prioritize_acquire_messages:I

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    sget v2, Lcom/android/settings/R$integer;->enrollment_collect_time:I

    .line 200
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;-><init>(Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Ljava/time/Clock;IIZZI)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget-object v5, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    iget-object v6, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget v7, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mUserId:I

    move-object v8, v1

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;I)V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v8, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mFingerprintUpdater:Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    iget-object v9, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    iget-object v10, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget v11, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mUserId:I

    iget-object v12, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;I)V

    :goto_0
    return v3
.end method
