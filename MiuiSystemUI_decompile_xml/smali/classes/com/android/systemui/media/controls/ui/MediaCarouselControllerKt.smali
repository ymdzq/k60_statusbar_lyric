.class public abstract Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z

.field public static final settingsIntent:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    .line 13
    const-string v0, "MediaCarouselController"

    .line 15
    const/4 v1, 0x3

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result v0

    .line 21
    sput-boolean v0, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;->DEBUG:Z

    .line 22
    return-void
.end method
