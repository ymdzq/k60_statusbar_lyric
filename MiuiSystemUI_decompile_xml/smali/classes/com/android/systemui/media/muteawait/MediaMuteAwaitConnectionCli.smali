.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;->context:Landroid/content/Context;

    .line 5
    new-instance p2, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$1;

    .line 7
    invoke-direct {p2, p0}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$1;-><init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;)V

    .line 9
    const-string p0, "media-mute-await"

    .line 12
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 14
    return-void
    .line 17
.end method
