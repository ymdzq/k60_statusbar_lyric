.class public final Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public static final sInstance:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 7
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    move-result-object v0

    .line 12
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 19
    sput-object v0, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->sDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 21
    return-void
    .line 23
.end method
