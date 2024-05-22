.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public final deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

.field public final logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/util/MediaFlags;Landroid/content/Context;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->context:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 11
    new-instance p1, Lcom/android/settingslib/media/DeviceIconUtil;

    .line 13
    invoke-direct {p1}, Lcom/android/settingslib/media/DeviceIconUtil;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 18
    return-void
    .line 20
.end method
