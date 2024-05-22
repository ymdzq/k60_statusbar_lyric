.class final Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$intent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$intent$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig$intent$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/VideoCameraQuickAffordanceConfig;->cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p0, Landroid/content/Intent;

    .line 9
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 11
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "com.android.systemui.camera_launch_source"

    .line 16
    const/4 v1, 0x3

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    return-object p0
    .line 22
.end method
