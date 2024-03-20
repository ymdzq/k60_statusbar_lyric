.class public final Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $prefs:Landroid/content/SharedPreferences;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/controls/controller/SeedResponse;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "Controls seeded: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "DeviceControlsControllerImpl"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-boolean v0, p1, Lcom/android/systemui/controls/controller/SeedResponse;->accepted:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;

    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object p1, p1, Lcom/android/systemui/controls/controller/SeedResponse;->packageName:Ljava/lang/String;

    .line 34
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;

    .line 39
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->position:Ljava/lang/Integer;

    .line 41
    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x7

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 49
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->position:Ljava/lang/Integer;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;

    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->position:Ljava/lang/Integer;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    const-string v2, "Setting DeviceControlsTile position: "

    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;

    .line 73
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 75
    invoke-virtual {p1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 77
    move-result-object p1

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2$1;

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;

    .line 83
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$seedFavorites$2$1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;)V

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 88
    :cond_1
    return-void
    .line 91
.end method
