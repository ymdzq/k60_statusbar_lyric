.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$ListenerWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final artListener:Lcom/android/systemui/plugins/MediaDataManagerInterface$ArtListener;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/MediaDataManagerInterface$ArtListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$ListenerWrapper;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$ListenerWrapper;->artListener:Lcom/android/systemui/plugins/MediaDataManagerInterface$ArtListener;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$ListenerWrapper;->artListener:Lcom/android/systemui/plugins/MediaDataManagerInterface$ArtListener;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 6
    if-eqz p2, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$ListenerWrapper;->context:Landroid/content/Context;

    .line 10
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    iget-object p2, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 18
    invoke-interface {p1, p2, p0}, Lcom/android/systemui/plugins/MediaDataManagerInterface$ArtListener;->onMediaDataLoaded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
