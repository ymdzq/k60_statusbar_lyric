.class public final Lcom/android/wifitrackerlib/WifiTrackerInjector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mNoAttributionAnnotationPackages:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 5
    const-class v0, Landroid/os/UserManager;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/UserManager;

    .line 14
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mUserManager:Landroid/os/UserManager;

    .line 16
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 24
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 26
    new-instance v0, Landroid/util/ArraySet;

    .line 28
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mNoAttributionAnnotationPackages:Ljava/util/Set;

    .line 33
    const v0, 0x7f130cd1    # @string/wifitrackerlib_no_attribution_annotation_packages 'com.google.android.setupwizard,com.google.android.gms'

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    const-string v0, ","

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    .line 49
    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mNoAttributionAnnotationPackages:Ljava/util/Set;

    .line 52
    aget-object v2, p1, v0

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_0
    return-void
    .line 62
.end method
