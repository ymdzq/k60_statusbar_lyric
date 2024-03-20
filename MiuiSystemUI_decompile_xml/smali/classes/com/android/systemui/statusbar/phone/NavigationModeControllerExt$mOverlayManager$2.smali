.class final Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt$mOverlayManager$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p0, "overlay"

    .line 2
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
