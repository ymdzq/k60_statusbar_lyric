.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselController$inflateSettingsButton$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 11
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$inflateSettingsButton$2;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 18
    sget-object p1, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerKt;->settingsIntent:Landroid/content/Intent;

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 23
    return-void
    .line 26
.end method