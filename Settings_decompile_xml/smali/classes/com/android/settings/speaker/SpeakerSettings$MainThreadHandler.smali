.class Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;
.super Lcom/android/settings/utils/WeakHandler;
.source "SpeakerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/speaker/SpeakerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/WeakHandler<",
        "Lcom/android/settings/speaker/SpeakerSettings;",
        ">;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mstopCleanSoundDelayed(Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;->stopCleanSoundDelayed(J)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/settings/speaker/SpeakerSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/utils/WeakHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/settings/speaker/SpeakerSettings;Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/speaker/SpeakerSettings;)V

    return-void
.end method

.method private stopCleanSoundDelayed(J)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/android/settings/speaker/SpeakerSettings;)V
    .locals 1

    .line 86
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 95
    invoke-static {p2, p1}, Lcom/android/settings/speaker/SpeakerSettings;->access$000(Lcom/android/settings/speaker/SpeakerSettings;I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 90
    invoke-static {p2}, Lcom/android/settings/speaker/SpeakerSettings;->-$$Nest$mstopCleanSound(Lcom/android/settings/speaker/SpeakerSettings;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p2, Lcom/android/settings/speaker/SpeakerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;->handleMessage(Landroid/os/Message;Lcom/android/settings/speaker/SpeakerSettings;)V

    return-void
.end method
