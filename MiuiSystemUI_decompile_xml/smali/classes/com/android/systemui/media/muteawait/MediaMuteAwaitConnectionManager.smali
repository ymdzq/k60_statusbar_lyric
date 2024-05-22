.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public currentMutedDevice:Landroid/media/AudioDeviceAttributes;

.field public final deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/settingslib/media/LocalMediaManager;Landroid/content/Context;Lcom/android/settingslib/media/DeviceIconUtil;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->context:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    .line 13
    const-string p1, "audio"

    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroid/media/AudioManager;

    .line 21
    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    .line 23
    new-instance p1, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;-><init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final getIcon(Landroid/media/AudioDeviceAttributes;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    .line 2
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 6
    iget-object v0, v0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/Map;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    .line 30
    iget p1, p1, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mIconDrawableRes:I

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const p1, 0x7f0811b1    # @drawable/ic_smartphone 'res/drawable/ic_smartphone.xml'

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method
