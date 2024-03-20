.class Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;
.super Ljava/lang/Object;
.source "AppLocationPermissionPreferenceController.java"

# interfaces
.implements Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/AppLocationPermissionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiPermissionControllerManager"
.end annotation


# instance fields
.field private final argFlag:I

.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/location/AppLocationPermissionPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 162
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;->argFlag:I

    return-void
.end method


# virtual methods
.method public onCountPermissionApps(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    iget p0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController$MiuiPermissionControllerManager;->argFlag:I

    if-nez p0, :cond_2

    .line 175
    invoke-static {v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->-$$Nest$fgetmNumTotalLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->-$$Nest$fputmNumTotalLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->-$$Nest$fgetmNumHasLocationLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->-$$Nest$fputmNumHasLocationLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V

    .line 179
    :goto_0
    iget-object p0, v0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_3

    .line 180
    invoke-static {v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->-$$Nest$fgetmNumTotalLoading(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)I

    move-result p0

    iget p1, v0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    invoke-static {v0, p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->-$$Nest$msetAppCounts(Lcom/android/settings/location/AppLocationPermissionPreferenceController;II)V

    :cond_3
    return-void
.end method
