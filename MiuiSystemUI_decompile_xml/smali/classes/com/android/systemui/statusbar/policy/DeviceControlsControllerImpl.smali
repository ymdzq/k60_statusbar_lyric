.class public final Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceControlsController;


# instance fields
.field public final context:Landroid/content/Context;

.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final listingCallback:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$listingCallback$1;

.field public position:Ljava/lang/Integer;

.field public final userContextProvider:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserContextProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 9
    new-instance p1, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$listingCallback$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/statusbar/policy/DeviceControlsControllerImpl$listingCallback$1;

    .line 16
    return-void
    .line 18
.end method

.method public static addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 2
    const-string v1, "SeedingCompleted"

    .line 4
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object p0

    .line 20
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
    .line 28
.end method
