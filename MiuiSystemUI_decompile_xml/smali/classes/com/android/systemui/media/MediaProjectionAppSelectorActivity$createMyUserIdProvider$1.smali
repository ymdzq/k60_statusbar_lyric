.class public final Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;->this$0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getMyUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;->this$0:Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getHostUserHandle()Landroid/os/UserHandle;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method
