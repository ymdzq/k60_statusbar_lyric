.class final Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $launchToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->this$0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->$launchToken:Landroid/os/IBinder;

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/WaitResult;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->this$0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;->$launchToken:Landroid/os/IBinder;

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->returnSelectedApp(Landroid/os/IBinder;)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
