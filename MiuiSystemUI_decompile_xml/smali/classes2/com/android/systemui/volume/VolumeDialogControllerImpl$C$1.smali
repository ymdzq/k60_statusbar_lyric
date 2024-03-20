.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$entry:Ljava/util/Map$Entry;

.field public final synthetic val$keyguardLocked:Z

.field public final synthetic val$lockTaskModeState:I

.field public final synthetic val$reason:I


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;IZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$entry:Ljava/util/Map$Entry;

    .line 2
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$reason:I

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$keyguardLocked:Z

    .line 6
    iput p4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$lockTaskModeState:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$entry:Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 8
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$reason:I

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$keyguardLocked:Z

    .line 12
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;->val$lockTaskModeState:I

    .line 14
    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowRequested(IZI)V

    .line 16
    return-void
    .line 19
.end method
