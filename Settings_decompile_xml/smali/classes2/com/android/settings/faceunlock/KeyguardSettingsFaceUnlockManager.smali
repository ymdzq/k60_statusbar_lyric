.class public Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;
.super Ljava/lang/Object;
.source "KeyguardSettingsFaceUnlockManager.java"


# static fields
.field protected static mFaceUnlockType:I

.field private static volatile sInstance:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;


# instance fields
.field isSupportTee:Z

.field protected mContext:Landroid/content/Context;

.field private mDeleteFaceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnrollCancelSignal:Landroid/os/CancellationSignal;

.field private mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

.field private mFaceRemoveCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field protected mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeleteFaceIds(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mDeleteFaceIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceRemoveCallback(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Lcom/android/settings/faceunlock/FaceRemoveCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceRemoveCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mDeleteFaceIds:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "face_unlock_enroll"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    const-string/jumbo v0, "support_tee_face_unlock"

    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->isSupportTee:Z

    .line 126
    new-instance v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;-><init>(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const-string/jumbo v0, "miui_face"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/BaseMiuiFaceManager;

    iput-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;
    .locals 2

    .line 35
    sget-object v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->sInstance:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->sInstance:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->sInstance:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 42
    sput p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceUnlockType:I

    .line 43
    sget-object p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->sInstance:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    return-object p0
.end method


# virtual methods
.method public deleteFeature(Ljava/lang/String;Lcom/android/settings/faceunlock/FaceRemoveCallback;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->hasEnrolledFaces(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFeature faceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miui_face"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mDeleteFaceIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "0"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mDeleteFaceIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getEnrolledFaceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mDeleteFaceIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    iput-object p2, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceRemoveCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    .line 121
    new-instance p2, Landroid/hardware/face/Face;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, v2, p1, v0, v1}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 122
    iget-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {p1, p2, v0, p0}, Landroid/hardware/face/BaseMiuiFaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    :cond_1
    return-void
.end method

.method public generateFaceEnrollChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->isSupportTee:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getFaceManager()Landroid/hardware/face/BaseMiuiFaceManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/face/BaseMiuiFaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 p0, -0x1

    .line 99
    invoke-interface {p1, p0, p0, v0, v1}, Landroid/hardware/face/FaceManager$GenerateChallengeCallback;->onGenerateChallengeResult(IIJ)V

    :goto_0
    return-void
.end method

.method public getFaceManager()Landroid/hardware/face/BaseMiuiFaceManager;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui_face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/BaseMiuiFaceManager;

    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    return-object p0
.end method

.method public runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 56
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public sendEnrollCommand(I)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getFaceManager()Landroid/hardware/face/BaseMiuiFaceManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/face/BaseMiuiFaceManager;->extCmd(II)I

    return-void
.end method

.method public startEnrollFace([BLandroid/view/Surface;Landroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/graphics/RectF;Landroid/graphics/RectF;II)Z
    .locals 12

    move-object v0, p0

    .line 63
    iget-object v1, v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    const-string/jumbo v2, "miui_face"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "call mEnrollCancelSignal.cancel(), return."

    .line 64
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v1, 0x0

    .line 66
    iput-object v1, v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v1, "start enrollFace"

    .line 69
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v5, v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    .line 71
    iget-object v3, v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mFaceManager:Landroid/hardware/face/BaseMiuiFaceManager;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Landroid/hardware/face/BaseMiuiFaceManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public stopEnrollFace()V
    .locals 2

    const-string/jumbo v0, "stop enrollFace"

    const-string/jumbo v1, "miui_face"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call mEnrollCancelSignal.cancel(), return."

    .line 78
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mEnrollCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method
