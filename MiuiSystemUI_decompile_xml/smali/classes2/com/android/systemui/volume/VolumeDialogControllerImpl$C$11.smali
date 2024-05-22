.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$entry:Ljava/util/Map$Entry;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$entry:Ljava/util/Map$Entry;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$show:Z

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
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$entry:Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$show:Z

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    .line 16
    return-void
    .line 19
.end method
