.class public final Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $value:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

.field public final synthetic this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    .line 6
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 10
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 12
    return-void
    .line 15
.end method
