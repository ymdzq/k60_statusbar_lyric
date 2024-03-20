.class public final Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStrongAuthStateChanged(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;

    .line 12
    const-string v3, "MediaCarouselCtlrLog"

    .line 14
    const/4 v4, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 22
    sget-object p1, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logCarouselHidden$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logCarouselHidden$2;

    .line 24
    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 26
    invoke-virtual {v0, v3, p0, p1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    const/16 p0, 0x8

    .line 35
    invoke-virtual {v1, p0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 43
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 52
    sget-object p1, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logCarouselVisible$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger$logCarouselVisible$2;

    .line 54
    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 56
    invoke-virtual {v0, v3, p0, p1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 62
    const/4 p0, 0x0

    .line 65
    invoke-virtual {v1, p0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 66
    :cond_1
    :goto_0
    return-void
    .line 69
.end method
