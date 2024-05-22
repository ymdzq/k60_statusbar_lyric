.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselController$animationScaleObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    sget-object p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 7
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 25
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/controls/models/player/SeekBarObserver;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 33
    move-result v1

    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    const-string v3, "animator_duration_scale"

    .line 39
    invoke-interface {p1, v2, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloatForUser(FILjava/lang/String;)F

    .line 41
    move-result p1

    .line 44
    const/4 v1, 0x0

    .line 45
    cmpl-float p1, p1, v1

    .line 46
    if-lez p1, :cond_1

    .line 48
    const/4 p1, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    :goto_1
    iput-boolean p1, v0, Lcom/android/systemui/media/controls/models/player/SeekBarObserver;->animationEnabled:Z

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    return-void
    .line 56
.end method
