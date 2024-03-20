.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$entry:Ljava/util/Map$Entry;

.field public final synthetic val$reason:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$entry:Ljava/util/Map$Entry;

    .line 4
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$reason:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$entry:Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 14
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$reason:I

    .line 16
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onLayoutDirectionChanged(I)V

    .line 18
    return-void

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$entry:Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 28
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$reason:I

    .line 30
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onPerformHapticFeedback(I)V

    .line 32
    return-void

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$entry:Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 42
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$reason:I

    .line 44
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onDismissRequested(I)V

    .line 46
    return-void

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$entry:Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 56
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;->val$reason:I

    .line 58
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowSafetyWarning(I)V

    .line 60
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 64
.end method
