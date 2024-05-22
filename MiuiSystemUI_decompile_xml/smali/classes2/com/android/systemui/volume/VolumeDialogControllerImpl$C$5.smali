.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    .line 8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowSilentHint()V

    .line 16
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    .line 20
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 26
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onShowVibrateHint()V

    .line 28
    return-void

    .line 31
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    .line 32
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 38
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onConfigurationChanged()V

    .line 40
    return-void

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    .line 44
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 50
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onScreenOff()V

    .line 52
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method
